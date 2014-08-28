# vim: set et ft=gnuplot sw=4 :

set terminal tikz color solid size 10in,5.1in
set output "gen-graph-speedup.tex"

set xlabel "Number of threads" offset 0,-4
set ylabel "Speedup" offset -6,0

set key outside center right height 1 spacing 4 width 15

set tics front

set border 0

set title "brock400\\_1, 64 core AMD Opteron 6366 HE" offset 0,1.5

set xtics (2, 16, 32, 48, 64) nomirror offset 0,-2 border rangelimited out
set ytics nomirror border scale 0
set grid ytics

set xrange [0:64]
set yrange [0:]

plot \
    "graph-togian-brock400_1-speedup-nodonation.data" u 1:2 with l lc 1 lt 1 lw 8 ti "Distance 1", \
    "graph-togian-brock400_1-speedup-nodonation-depth2.data" u 1:2 with l lc 2 lt 1 lw 8 ti "Distance 2", \
    "graph-togian-brock400_1-speedup-nodonation-depth3.data" u 1:2 with l lc 3 lt 1 lw 8 ti "Distance 3", \
    "graph-togian-brock400_1-speedup-d3.data" u 1:2 with l lc 4 lt 2 lw 8 ti "Resplitting"

