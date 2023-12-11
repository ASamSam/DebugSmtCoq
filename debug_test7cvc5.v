
(** studying test7cvc5 **)
Add Rec LoadPath "/home/arjun/Desktop/smtcoq/arjunvish-smtcoq-veritAst/smtcoq/src" as SMTCoq.
From SMTCoq Require Import SMTCoq.
Require Import Bool PArray Int63 List ZArith.
Local Open Scope int63_scope.
Open Scope Z_scope.
Set Printing Depth 250.
Module test7cvc5.
Section test7cvc5.
Parse_certif_verit t_i t_func t_atom t_form root used_roots trace "test7cvc5.smt2" "test7cvc5.pf".
Compute @Euf_Checker.checker t_i t_func t_atom t_form root used_roots trace.
Compute (Form.check_form t_form && Atom.check_atom t_atom && Atom.wt t_i t_func t_atom).
Definition nclauses := Eval compute in let (nclauses, _, _) := trace in nclauses.
Print trace.
(*nclauses is defined
*)
Definition s0 := Eval compute in (add_roots (S.make nclauses) root used_roots).