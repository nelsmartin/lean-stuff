

-- 1. Left identity of zero
theorem t1 : ∀ n : Nat, 0 + n = n := by
  sorry

-- 2. Right identity of zero
theorem t2 : ∀ n : Nat, n + 0 = n := by
  sorry
-- 3. Successor on the right
theorem t3 : ∀ m n : Nat, m + Nat.succ n = Nat.succ (m + n) := by
  sorry
-- 4. Successor on the left
theorem t4 : ∀ m n : Nat, Nat.succ m + n = Nat.succ (m + n) := by
  sorry
-- 5. Adding one
theorem t5 : ∀ n : Nat, n + 1 = Nat.succ n := by
  sorry

-- 6. One plus n
theorem t6 : ∀ n : Nat, 1 + n = Nat.succ n := by
  sorry
-- 7. Adding two
theorem t7 : ∀ n : Nat, n + 2 = Nat.succ (Nat.succ n) := by
  sorry
-- 8. Two plus n
theorem t8 : ∀ n : Nat, 2 + n = Nat.succ (Nat.succ n) := by
  sorry
-- 9. Cancellation of succ
theorem t9 : ∀ m n : Nat, Nat.succ m = Nat.succ n → m = n := by
  sorry
-- 10. If m + n = 0 then m = 0
theorem t10 : ∀ m n : Nat, m + n = 0 → m = 0 := by
  sorry
-- 11. Zero on both sides


-- 12. Successor distributes over + on right twice
theorem t12 : ∀ m n : Nat, m + Nat.succ (Nat.succ n) = Nat.succ (Nat.succ (m + n)) := by
  sorry
-- 13. Adding one via t5
theorem t13 : ∀ n : Nat, n + 1 = Nat.succ n := by
  sorry
-- 14. One plus one
theorem t14 : 1 + 1 = 2 := by
  sorry

-- 15. Successor cancellation usage
theorem t15 : ∀ n : Nat, Nat.succ n = Nat.succ n := by
  sorry
-- 16. Succ preserves equality
theorem t16 : ∀ m n : Nat, m = n → Nat.succ m = Nat.succ n := by
  sorry
-- 17. Double successor equality reduction via t9
theorem t17 : ∀ m n : Nat,
  Nat.succ (Nat.succ m) = Nat.succ (Nat.succ n) → m = n := by
  sorry
-- 18. Two plus zero
theorem t18 : 2 + 0 = 2 := by
  sorry

-- 19. n + 0 + 0 = n
theorem t19 : ∀ n : Nat, n + 0 + 0 = n := by
  sorry
-- 20. Successor addition normalization
-- 21. One plus successor


-- 22. Successor on right using t3
theorem t22 : ∀ m n : Nat, m + Nat.succ n = Nat.succ (m + n) := by
  sorry
-- 23. Specialization of t8
theorem t23 : 2 + 3 = 5 := by
  sorry

-- 24. Succ injectivity simple use
theorem t24 : ∀ n : Nat, Nat.succ n = Nat.succ n → n = n := by
  sorry

-- 25. Successor of sum equality
theorem t25 : ∀ m n : Nat,
  Nat.succ (m + n) = Nat.succ (m + n) := by
  sorry
-- 26. Nested successor cancellation
theorem t26 : ∀ m n : Nat,
  Nat.succ (Nat.succ (Nat.succ m)) =
  Nat.succ (Nat.succ (Nat.succ n)) → m = n := by
  sorry

-- 27. Sum equals itself
theorem t27 : ∀ m n : Nat, m + n = m + n := by
  sorry
-- 28. Succ of succ of sum symmetry
theorem t28 : ∀ m n : Nat,
  Nat.succ (Nat.succ (m + n)) =
  Nat.succ (Nat.succ (m + n)) := by
  sorry
-- 29. Equality transported through succ twice
theorem t29 : ∀ m n : Nat,
  m = n → Nat.succ (Nat.succ m) = Nat.succ (Nat.succ n) := by
  sorry
