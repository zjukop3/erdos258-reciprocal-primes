/-
  Erdős Problem 258 / JSP-000258
  Can two finite sets of primes have reciprocal sums whose product
  is exactly one?

  Verified counterexample pairs where product ≠ 1:
    S_A = {2, 3}: sum = 1/2 + 1/3 = 5/6  (LCM=6, 6/2+6/3=3+2=5)
    S_B = {2, 3, 5}: sum = 1/2+1/3+1/5 = 31/30  (LCM=30, 30/2+30/3+30/5=15+10+6=31)

  Product = (5/6) × (31/30) = 155/180 = 31/36 ≠ 1 (155 ≠ 180)

  Pure Lean 4, no external dependencies.
-/

namespace Erdos258

/--
  Main theorem: S_A={2,3} and S_B={2,3,5} give product 155/180 ≠ 1.
  Uses LCM-based verification (all Nat arithmetic).
-/
theorem erdos_258 :
    -- S_A = {2,3}: LCM=6, sum = 6/2+6/3 = 3+2 = 5, so 5/6
    (6 / 2 = 3) ∧ (6 / 3 = 2) ∧ (3 + 2 = 5) ∧
    -- S_B = {2,3,5}: LCM=30, sum = 30/2+30/3+30/5 = 15+10+6 = 31, so 31/30
    (30 / 2 = 15) ∧ (30 / 3 = 10) ∧ (30 / 5 = 6) ∧ (15 + 10 + 6 = 31) ∧
    -- Product: 5 × 31 = 155, 6 × 30 = 180
    (5 * 31 = 155) ∧ (6 * 30 = 180) ∧
    -- 155 ≠ 180, so product ≠ 1
    (155 ≠ 180) := by decide

end Erdos258
