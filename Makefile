#------------------------------------------------------------------------------#
# This makefile was generated by 'cbp2make' tool rev.147                       #
#------------------------------------------------------------------------------#


WORKDIR = `pwd`

CC = gcc
CXX = g++
AR = ar
LD = g++
WINDRES = windres

INC = 
CFLAGS = -march=core2 -Wall --std=c99 -fopenmp
RESINC = 
LIBDIR = 
LIB = 
LDFLAGS = -fopenmp

INC_RELEASE = $(INC)
CFLAGS_RELEASE = $(CFLAGS) -O2
RESINC_RELEASE = $(RESINC)
RCFLAGS_RELEASE = $(RCFLAGS)
LIBDIR_RELEASE = $(LIBDIR)
LIB_RELEASE = $(LIB)
LDFLAGS_RELEASE = $(LDFLAGS) -s
OBJDIR_RELEASE = obj
DEP_RELEASE = 
OUT_RELEASE = bin/NPKICracker

OBJ_RELEASE = $(OBJDIR_RELEASE)/BasicIO.o $(OBJDIR_RELEASE)/ErrorHandle.o $(OBJDIR_RELEASE)/Hash.o $(OBJDIR_RELEASE)/Main.o $(OBJDIR_RELEASE)/NPKICrack.o $(OBJDIR_RELEASE)/Seed.o

all: release

clean:
	rm -f $(OBJ_RELEASE) $(OUT_RELEASE)
	rm -rf bin
	rm -rf $(OBJDIR_RELEASE)

before_release: 
	test -d bin || mkdir -p bin
	test -d $(OBJDIR_RELEASE) || mkdir -p $(OBJDIR_RELEASE)

release: before_release out_release

out_release: before_release $(OBJ_RELEASE) $(DEP_RELEASE)
	$(LD) $(LIBDIR_RELEASE) -o $(OUT_RELEASE) $(OBJ_RELEASE)  $(LDFLAGS_RELEASE) $(LIB_RELEASE)

$(OBJDIR_RELEASE)/BasicIO.o: BasicIO.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c BasicIO.c -o $(OBJDIR_RELEASE)/BasicIO.o

$(OBJDIR_RELEASE)/ErrorHandle.o: ErrorHandle.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c ErrorHandle.c -o $(OBJDIR_RELEASE)/ErrorHandle.o

$(OBJDIR_RELEASE)/Hash.o: Hash.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c Hash.c -o $(OBJDIR_RELEASE)/Hash.o

$(OBJDIR_RELEASE)/Main.o: Main.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c Main.c -o $(OBJDIR_RELEASE)/Main.o

$(OBJDIR_RELEASE)/NPKICrack.o: NPKICrack.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c NPKICrack.c -o $(OBJDIR_RELEASE)/NPKICrack.o

$(OBJDIR_RELEASE)/Seed.o: Seed.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c Seed.c -o $(OBJDIR_RELEASE)/Seed.o

clean_release: 
	

.PHONY: before_debug after_debug clean_debug before_release after_release clean_release
