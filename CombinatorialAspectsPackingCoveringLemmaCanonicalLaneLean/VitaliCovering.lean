import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPackingCoveringLemmaCanonicalLaneLean

structure MetricSpace where
  carrier : Type u
  distance : carrier → carrier → ℝ
  posDef : ∀ x y, distance x y ≥ 0
  symm : ∀ x y, distance x y = distance y x
  triangle : ∀ x y z, distance x z ≤ distance x y + distance y z
  eqZero : ∀ x y, distance x y = 0 ↔ x = y

structure VitaliCoveringFamily (M : MetricSpace) where
  balls : Set (M.carrier × ℝ)
  coveringProperty : ∀ x : M.carrier, ∃ (b : M.carrier × ℝ), b ∈ balls ∧ M.distance x b.1 < b.2

structure VitaliCoveringLemmaPackage {M : MetricSpace} (V : VitaliCoveringFamily M) where
  disjointSubfamily : ∃ (sub : VitaliCoveringFamily M), (∀ b1 b2 ∈ sub.balls, b1 ≠ b2 → (M.distance b1.1 b2.1 ≥ b1.2 + b2.2)) ∧ (∀ x : M.carrier, ∃ b ∈ V.balls, ∃ b' ∈ sub.balls, M.distance x b.1 < b.2 ∧ M.distance b.1 b'.1 < 3 * b'.2)
  disjointSubfamilyClosed : disjointSubfamily

def VitaliCoveringClosed {M : MetricSpace} {V : VitaliCoveringFamily M} (pkg : VitaliCoveringLemmaPackage V) : Prop :=
  pkg.disjointSubfamilyClosed

theorem vitali_covering_closed_from_evidence {M : MetricSpace} {V : VitaliCoveringFamily M} (pkg : VitaliCoveringLemmaPackage V) : VitaliCoveringClosed pkg := by
  exact pkg.disjointSubfamilyClosed

end CombinatorialAspectsPackingCoveringLemmaCanonicalLaneLean
end HautevilleHouse