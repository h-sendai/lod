#!/bin/sh

gnuplot <<EOF
set term pngcairo size 1200,600
set output 'ut1-utc.1990.png'
set timefmt "%Y-%m-%d"
set xdata time
set format x "%Y\n%m-%d"
set xlabel 'day'
set ylabel 's'
set yrange [-2:2]
set ytics -2,1
set mytics 10
set grid y
set grid x
set grid mx
plot ['1990-01-01':'2020-01-01'] \
'data' u 1:5 w l lw 2 lc 'red' title 'ut1 - utc'
EOF
