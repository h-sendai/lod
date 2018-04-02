#!/bin/sh

gnuplot <<EOF
set term png size 1200,600
set output 'lod.png'
set timefmt "%Y-%m-%d"
set xdata time
set format x "%Y\n%m/%d"
set xrange ["1976-01-01":"2017-01-01"]
set grid x
set ytics -1,1
set mytics 10
set grid y
set grid mytics
set yrange [-1:1]
plot 'data' u 1:5 w l, \
-1   lw 2 lc -1 title '', \
-0.5 lw 2 lc -1 title '', \
 0   lw 2 lc -1 title '', \
 0.5 lw 2 lc -1 title '', \
 1   lw 2 lc -1 title ''
EOF

gnuplot <<EOF
set term png size 1200,600
set output 'sum.png'
set timefmt "%Y-%m-%d"
set xdata time
set format x "%Y\n%m/%d"
set xrange ["1962-01-01":"2017-01-01"]
set grid x
set ytics 0,10
set mytics 10
set grid y
set grid mytics
plot 'sum.dat' u 1:2 w l, \
10 lw 2 lc -1 title '',   \
20 lw 2 lc -1 title '',   \
30 lw 2 lc -1 title '',   \
40 lw 2 lc -1 title ''
EOF

gnuplot <<EOF
set term png size 1200,600
set output 'daily.png'
set timefmt "%Y-%m-%d"
set xdata time
set format x "%Y\n%m/%d"
set xrange ["1962-01-01":"2017-01-01"]
set grid x
set grid y
set xlabel 'date'
set ylabel 's'
plot 'data' u 1:6 w l title 'lod', \
0 lw 2 lc -1 title ''
#10 lw 2 lc -1 title '',   \
#20 lw 2 lc -1 title '',   \
#30 lw 2 lc -1 title '',   \
#40 lw 2 lc -1 title ''
EOF

gnuplot <<EOF
set term png size 1200,600
set output 'daily-1980-1985.png'
set timefmt "%Y-%m-%d"
set xdata time
set format x "%Y\n%m/%d"
set xrange ["1980-01-01":"1986-01-01"]
set grid x
set grid y
set xlabel 'date'
set ylabel 's'
plot 'data' u 1:6 w l title 'lod', \
0 lw 2 lc -1 title ''
#10 lw 2 lc -1 title '',   \
#20 lw 2 lc -1 title '',   \
#30 lw 2 lc -1 title '',   \
#40 lw 2 lc -1 title ''
EOF

gnuplot <<EOF
set term png size 1200,600
set output 'daily-1980.png'
set timefmt "%Y-%m-%d"
set xdata time
set format x "%Y\n%m/%d"
set xrange ["1980-01-01":"1981-01-01"]
set grid x
set grid y
set xlabel 'date'
set ylabel 's'
plot 'data' u 1:6 w lp pt 5 ps 0.5 title 'lod', \
0 lw 2 lc -1 title ''
#10 lw 2 lc -1 title '',   \
#20 lw 2 lc -1 title '',   \
#30 lw 2 lc -1 title '',   \
#40 lw 2 lc -1 title ''
EOF
