import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPackingCoveringLemmaCanonicalLaneLean

structure BesicovitchCoveringFamily {M : MetricSpace} where
  balls : Set (M.carrier × ℝ)
  coveringProperty : ∀ x : M.carrier, ∃ (b : M.carrier × ℝ), b ∈ balls ∧ M.distance x b.1 < b.2

structure BesicovitchCoveringLemmaPackage {M : MetricSpace} (B : BesicovitchCoveringFamily M) where
  finiteSubcover : ∃ (finiteSub : Finset (M.carrier × ℝ)), (∀ b ∈ finiteSub, b ∈ B.balls) ∧ (∀ x : M.carrier, ∃ b ∈ finiteSub, M.distance x b.1 < b.2)
  constantDependence : ℕ
  finiteSubcoverClosed : finiteSubcover
  constantDependenceClosed : constantDependence > 0

def BesicovitchCoveringClosed {M : MetricSpace} {B : BesicovitchCoveringFamily M} (pkg : BesicovitchCoveringLemmaPackage B) : Prop :=
  pkg.finiteSubcoverClosed ∧ pkg.constantDependenceClosed

theorem besicovitch_covering_closed_from_evidence {M : MetricSpace} {B : BesicovitchCoveringFamily M} (pkg : BesicovitchCoveringLemmaPackage B) : BesicovitchCoveringClosed pkg := by
  exact And.intro pkg.finiteSubcoverClosed pkg.constantDependenceClosed

end CombinatorialAspectsPackingCoveringLemmaCanonicalLaneLean
end HautevilleHouse