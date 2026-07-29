import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsPackingCoveringLemmaCanonicalLaneLean.CoveringLemmaElement
import HautevilleHouse.CombinatorialAspectsPackingCoveringLemmaCanonicalLaneLean.PackingCoveringDuality
import HautevilleHouse.CombinatorialAspectsPackingCoveringLemmaCanonicalLaneLean.FractionalPackingCovering
import HautevilleHouse.CombinatorialAspectsPackingCoveringLemmaCanonicalLaneLean.HypergraphPackingCovering

namespace HautevilleHouse
namespace CombinatorialAspectsPackingCoveringLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CoveringElementClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedPackingCoveringClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_packing_covering_endgame (A : AdmissibleClass) :
    ConstrainedPackingCoveringClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CombinatorialAspectsPackingCoveringLemmaCanonicalLaneLean
end HautevilleHouse