#!/usr/bin/env python

import os
import sys
import time # for sleep

def avr(data_daily, index):
    sum = 0.0
    for i in range(index-365, index):
        sum += data_daily[i]['lod']

    return sum / 365.0
        
def main():
    f = open('data', 'r')
    data_daily = []
    for line in f:
        line = line.strip()
        e = line.split()
        #date = e[0]
        #lod  = e[5]
        tmp = {}
        tmp['date'] = e[0]
        tmp['lod' ] = float(e[5])
        tmp['mjd' ] = int(e[1])
        data_daily.append(tmp)

    #print data_daily[0], data_daily[1]
    
    first_day = 365
    last_day  = len(data_daily) - 365
    for i in range(first_day, last_day):
        print(data_daily[i]['date'], avr(data_daily, i))
    
if __name__ == '__main__':
    main()
