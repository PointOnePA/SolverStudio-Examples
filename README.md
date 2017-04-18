Contents: SolverStudio-Examples

SolverStudio is an add-in for Excel 2007 and later on Windows that 
allows you to build and solve optimisation models in Excel.  
See:
		https://solverstudio.org/

This repository contains some example spreadsheets from SolverStudio used 
while trying to learn various aspects, like the AMPL modeling language.
The spreadsheets execute the various AMPL examples, but instead, use
SolverStudio as the integrated development environment (IDE).

AMPL_Ex1_Prod_bands_coils.xlsx         http://ampl.com/BOOK/CHAPTERS/04-tut1.pdf 
AMPL_Book_Examples.xlsx                http://ampl.com/BOOK/CHAPTERS/05-tut2.pdf 

SolverStudio allows the use of the AMPL modeling language and comes with these
examples as part of the installation, but in order to run the AMPL models you have
to import the data files (ex: diet.dat) into the spreadsheet (using the import function) 
and then paste the model file (ex: diet.mod) into the SolverStudio model window.
As of April 2017, the import function did not work perfectly for me, and I had
to change the solver option (ex: option solver IPOPT) to obtain the same solutions
as listed in the AMPL book.  So the worksheets in AMPL_Book_Examples.xlsx walk
through the examples in the AMPL Book: 
	AMPL: A Modeling Language for Mathematical Programming
	by Robert Fourer, David M. Gay, and Brian W. Kernighan
	Second edition	517 + xxi pp., ISBN 0-534-38809-4
	http://ampl.com/resources/the-ampl-book/

There is an IDE for AMPL as well.
	http://ampl.com/products/ide/


Comments
1) While I like SolverStudio for learning, I can see that having the code and data in an XLSX file will make it painful to do "DIFFerences" during development.  Using text files would be easier for doing differences.