These are the raw files that PuLP generates for use in CBC.
You can use the CBC command "import filename" to solve these
in the commandline version of CBC.

Also included are PD11_process_log.txt and PD11_solution.txt,
showing the solution process of CBC for PD11 and then the
resulting CBC format of solution.

These files are included here for reference, just to see
the underlying process behind SolverStudio.

When you install SolverStudio, the 64-bit version of CBC is located at:
	%SolverStudio%\SolverStudio\Solvers\64bit

When you run SolverStudio, it creates temporary files that are used
as input to the various solvers.  Those temporary files are visible
as long as Excel is open, in the users temporary folder with some
randomized name, which for me, under Windows 10 is:

	%USERNAME%\AppData\Local\Temp\SolverStudio wn1yf54e

