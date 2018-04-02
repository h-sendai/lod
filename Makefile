all: data avr365.dat

data: eopc04.62-now
	./format-date.py3

avr365.dat: data
	./avr365.py > avr365.dat

plot: data avr365.dat
	./plot-avr.sh

clean:
	rm -f *.png data avr365.dat
