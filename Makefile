CC = g++
ARCH=sm_35

stream : stream.cu Makefile
	nvcc -std=c++11 -ccbin=$(CC) stream.cu -arch=$(ARCH) -o stream -lnvidia-ml

.PHONY: clean
clean :
	rm -f stream
