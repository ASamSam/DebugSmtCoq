SMTCoq is a Coq plugin that checks proof witnesses from external SAT and SMT solvers. It provides:
A certified checker will be needed for proof witnesses from the SAT solver ZChaff and the SMT solvers veriT and CVC4. 
Decision procedures through new tactics that discharge some Coq goals to ZChaff, veriT, CVC4, and their combination.

But looking for an exact problem when SMT analysis fails is a problem:

SMTCoq solver generates proof certificates that can be large and complex. 

When an SMT solver fails to prove a statement or when proof cannot be imported into Coq via SMTCoq, the error messages may be minimal or non-informative.

Coq may report generic errors that do not pinpoint the exact issue within the SMT solver's output or the translation process, complicating debugging efforts.

Debugging step by step can be time-consuming.

This library allows to use Coq in quasi-interactive mode, performing repetitive investigation till the '0#int63' marker met, showing the exact place of the issue in the formula
