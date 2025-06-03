#!/usr/local/bin/python3

import os
import sys
import time

def main():
    filename = 'eopc04.1962-now'
    f_in  = open(filename, 'r')
    f_out = open('data', 'w')
    for line in f_in:
        # data line start with 19xx or 20xx (year)
        # skip if the line is not data line
        if line[0] != '1' and line[0] != '2':
            continue

        # process data line
        l = line.split()
        year  = int(l[0])
        month = int(l[1])
        day   = int(l[2])
        n_elem = len(l)
        f_out.write('%02d-%02d-%02d %s\n' % (year, month, day, " ".join(l[3:n_elem])))
        #print('%02d-%02d-%02d %s' % (year, month, day, " ".join(l[3:n_elem])))

if __name__ == '__main__':
    main()
