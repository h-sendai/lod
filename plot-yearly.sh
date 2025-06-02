#!/bin/sh

plot_yearly()
{
    local year=$1
    next_year=$(($year+1))

gnuplot <<EOF
    set term png size 1200,600
    set output "daily-$year.png"
    set timefmt "%Y-%m-%d"
    set xdata time
    set format x "%Y\n%m/%d"
    set xrange ["${year}-01-01":"${next_year}-01-01"]
    set grid x
    set grid y
    set ytics -2, 1
    set xlabel 'date'
    set ylabel 'ms'
    set yrange [-2:5]
    plot 'data' u 1:(\$6*1000) w lp lc 'red' pt 5 ps 0.5 title "lod ($year)"
    # 0 lw 2 lc -1 title ''
    #10 lw 2 lc -1 title '',   \
    #20 lw 2 lc -1 title '',   \
    #30 lw 2 lc -1 title '',   \
    #40 lw 2 lc -1 title ''
EOF
}

for i in {1962..2021}; do
    echo $i
    plot_yearly $i
done
