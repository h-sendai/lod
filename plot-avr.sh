#!/bin/sh

gnuplot <<EOF
set term pngcairo size 1200,600
set output 'avr365.png'
set timefmt "%Y-%m-%d"
set xdata time
set format x "%Y\n%m-%d"
set xlabel 'day'
set ylabel 'ms'
set yrange [-2:5]
set ytics -2,1
set mytics 10
set grid y
set grid x
set grid mx
set xrange ['1960-01-01':'2025-01-01']
plot ['1960-01-01':'2025-01-01'] \
'data' u 1:(\$11*1000) w l lw 0.5 lc 'gray' title '1 day', \
'avr365.dat' u 1:(\$2*1000) w l lw 2 lc 'red' title '365 days avr'
EOF

#gnuplot <<EOF
#set term pngcairo size 1200,600
#set output 'avr100.png'
#set timefmt "%Y-%m-%d"
#set xdata time
#set format x "%Y\n%m-%d"
#set xlabel 'day'
#set ylabel 'ms'
#set yrange [0:5]
#set ytics 0,1
#set mytics 10
#set grid y
#set grid x
#set grid mx
#plot ['1960-01-01':'2020-01-01'] 'avr100.dat' u 1:(\$2*1000) w l lw 2 lc 'red' title '100 days avr'
#EOF
