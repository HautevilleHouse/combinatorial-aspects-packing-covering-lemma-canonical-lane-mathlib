import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsPackingCoveringLemmaCanonicalLaneLean.BourgainLemma

namespace HautevilleHouse
namespace CombinatorialAspectsPackingCoveringLemmaCanonicalLaneLean

def ConstrainedPackingCoveringClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_packing_covering_endgame (A : AdmissibleClass) :
    ConstrainedPackingCoveringClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CombinatorialAspectsPackingCoveringLemmaCanonicalLaneLean
end HautevilleHouse
