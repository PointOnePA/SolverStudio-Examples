Contents: SolverStudio-Examples

SolverStudio is an add-in for Excel 2007 and later on Windows that 
allows you to build and solve optimisation models in Excel.  
See:
		https://solverstudio.org/

This repository contains some example spreadsheets from SolverStudio used 
while trying to learn various aspects, like the AMPL modeling language.
The spreadsheets execute the various AMPL examples, but instead, use
SolverStudio as the integrated development environment (IDE).

There are two groups of examples:
  a) from the AMPL Book and
  b) a solver for the Lumosity Pet Detective game using both AMPL and PulP
     modeling languages, based on a Capacitated Vehicle Routing Formulation.

Pet Detective (PD)
  PD_AMPL/PD_AMPL.xlsx              SolverStudio mddeling of PetDetective using AMPL
  PD_PuLP/PD_PulP.xlsx              SolverStudio mddeling of PetDetective using PuLP
  PetDetectiveSummary.xlsx          Summary of the PetDetective solution times 
  PetDetectiveSolver.docx           Documentation to summarize PetDetective Formulation
  
AMPL_Book_Examples
  AMPL_Book_Examples_Chp2.xlsx      http://ampl.com/BOOK/CHAPTERS/05-tut2.pdf <br />
  AMPL_Book_Examples_Chp3.xlsx      http://ampl.com/BOOK/CHAPTERS/06-tut3.pdf <br />
  AMPL_Book_Examples_Chp4.xlsx      http://ampl.com/BOOK/CHAPTERS/07-tut4.pdf <br />
  AMPL_Book_Examples_Chp5.xlsx      http://ampl.com/BOOK/CHAPTERS/08-sets1.pdf <br />
  AMPL_Book_Examples_Chp15.xlsx     http://ampl.com/BOOK/CHAPTERS/18-networks.pdf <br />

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
1) I like SolverStudio for learning, but I can see that having the code and data in an XLSX file will make it painful to do "DIFFerences" during development.  Using text files would be easier for doing differences.
