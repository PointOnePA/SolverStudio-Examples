# Multiple length cutting stock problem
# Erwin Kalvelagen,  https://plus.google.com/+ErwinKalvelagen
# http://yetanothermathprogrammingconsultant.blogspot.com/2010/07/multiple-length-cutting-stock-problem.html
# AMPL Model


#========================== model MultiRawCutting.mod;====================================
param nSTOCK integer >=0;   # RAWS: number of stock items (36 total)
set iSTOCK = 1..nSTOCK;		# ordered set of stock indices nSTOCK=36
param LK{iSTOCK};		    # LENGTHS of stock items

set ll;                		# ORDERS: 30 length
param dd{ll} >0;			# 30 demand quantities of the above lengths


# PATTERNS
# variable nbr in the AMPL cut.mod example is the list of patterns, used here as "A".
param nloop integer >= 0;
set NDATA = 1..nloop;
param data{NDATA,1..3};		# variable storage for collected data of 3 points

param nPAT integer >= 0;	# number of patterns (not fixed)
set PATTERNS = 1..nPAT;		# set of patters 1 through n
param A{ll,PATTERNS} integer >= 0;	    # list of column vectors of patterns
	check{j in PATTERNS}:
		sum{i in ll}i*A[i,j] <=LK[nSTOCK];		#less than the maximum stock length

param K{PATTERNS} >= 0;				# Stock length corresponding to pattern p (not integer)
param W{PATTERNS} >= 0;             # waste per pattern



#------------------------------------------------------------------------------
# MASTER Problem with multiple raws
# Note the p in PATTERNS is specialized to a specific raw/stock item
# so every pattern p, has a unique stock length associated with it.
#------------------------------------------------------------------------------
var x{PATTERNS} integer >= 0;		# decision variable
minimize WASTE:						# objective function
	sum{p in PATTERNS} W[p]*x[p];	# corresponding to stock length K[p];
subject to Fill {i in ll}:			# constraints
	sum{p in PATTERNS} A[i,p]*x[p] = dd[i];		# satisfy demand lengths exactly
subject to WastePerPattern{p in PATTERNS}:			# K[p] is the stock length
	W[p] = K[p] - sum{li in ll}A[li,p]*li;			# "li" is the demand length, A[dl,p] is the pattern




#-------------------------------------------------
# Knapsack SUB-PROBLEM for pattern generation
#-------------------------------------------------
#calculation variables
param lambda{ll} default 0.0;				# copied from main problem shadow prices
var y{ll} integer >=0;						# decision variable1
var delta{iSTOCK} binary >=0;				# decision variable2 STOCK item row yes or no
var LL = sum{i in iSTOCK}LK[i]*delta[i];	# Length of stock item to be cut
var	UU = sum{i in ll}i*y[i];				# sum of all of the cut lengths for this pattern
var MM = sum{li in ll}(lambda[li]*y[li]);
minimize Reduced_Cost:	LL - UU - MM;

#constraints, since there is at least one nonzero delta, then UPPER>0
subject to OnlyOneStock:
	sum {i in iSTOCK} delta[i] = 1;			# select only one stock item to be cut per pattern

subject to DefineLL: LL >= 0;	# stock length must be non-negative
subject to DefineUU: UU >= 0;	# pattern lengths must be non-negative
subject to XUL:	UU <= LL;		# stock length has to be longer than length of all of the cuts

