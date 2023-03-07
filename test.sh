#!/bin/bash


#./farm -n 1 -d testdir -q 1 file1.dat file2.dat file3.dat file4.dat -d testdir 
valgrind  --leak-check=full --track-origins=yes -s ./farm file1.dat file2.dat file3.dat file4.dat file5.dat file10.dat file12.dat file13.dat file14.dat -d testdir 

#valgrind --leak-check=full --error-exitcode=1 --log-file=/dev/null ./farm file* -d testdir 2>&1 > /dev/null

PID_SERVER=$!
sleep 1

#kill -SIGINT $PID_SERVER
