(set-logic UFLIA)
(declare-fun op_0 () Bool)
(declare-fun op_2 () Int)
(declare-fun op_1 () Bool)
(declare-fun op_3 () Int)
(assert (not (=> (ite op_0 (ite op_1 (= (+ (* 2 op_2) 1) (+ (* 2 op_3) 1)) (= (+ (* 2 op_2) 1) (* 2 op_3))) (ite op_1 (= (* 2 op_2) (+ (* 2 op_3) 1)) (= (* 2 op_2) (* 2 op_3)))) (and (=> op_0 op_1) (=> op_1 op_0) (= op_2 op_3)))))
(check-sat)
(exit)
