/*
Declarations Section
*/
%{
// packages
#include <stdio.h>

// global variables
int zeros = 0;
int ones = 0;

// auxiliary functions
void displayLineEnding();
%}
/*
Regular Definations
Varibale	Regex
*/

digit	[0-9]
digits	{digit}+
letter	[A-Za-z]

/*
Rules Section
Regex	{Action in C}
*/
%%
00	{printf("Double Zero!\n");}
0	{zeros++;}
1	{ones++;}
\n	{
		printf("Zeros: %d, Ones: %d\n", zeros, ones); 
		displayLineEnding(); 
		return 0;
	}
%%

/*
Auxiliary Functions in C
*/
void displayLineEnding(){
	printf("Line Ending\n");
}
