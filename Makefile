# _*_ Makefile _*_

project: BMPtoBMPgreyscale.o BMPgreytoPNGgrey.o deflation.o openBMP.o writingtoPNG.o project.o
	gcc BMPtoBMPgreyscale.o BMPgreytoPNGgrey.o deflation.o openBMP.o writingtoPNG.o project.o -o img -lz


project.o: project.c Pre_def.h
	gcc -c project.c

BMPtoBMPgreyscale.o: BMPtoBMPgreyscale.c Pre_def.h
	gcc -c BMPtoBMPgreyscale.c

BMPgreytoPNGgrey.o: BMPgreytoPNGgrey.c Pre_def.h
	gcc -c BMPgreytoPNGgrey.c

deflation.o: deflation.c Pre_def.h
	gcc -c deflation.c

openBMP.o: openBMP.c Pre_def.h
	gcc -c openBMP.c

writingtoPNG.o: writingtoPNG.c Pre_def.h
	gcc -c writingtoPNG.c 



clean:
	rm *.o
	rm *img