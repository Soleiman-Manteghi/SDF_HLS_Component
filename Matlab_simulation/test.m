clear
clc


disp ("topology matrix Of SDF graph is :")
G=[2 -4 0
1 0 -2
0 1 -1
-1 0 2]

disp ("Rank Of A is :" ), disp(rank(G))
disp ("Periodic Admissible Sequential Schedules")


disp ("periodic firing vector Of SDF graph is :")
 q=[2
 1
 1]


disp ("topology matrix multiply with periodic firing vector Of SDF graph is (b=Gq):")
b=G*q
disp ("Periodic Admissible Sequential Schedules, or PASS")

disp("One possible solution that yields a PASS is to fire A twice, and B and C each once")

qPASS=[2
1
1]
