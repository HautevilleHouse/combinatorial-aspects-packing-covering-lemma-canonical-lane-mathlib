import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPackingCoveringLemmaCanonicalLaneLean

structure BesicovitchPackage (X : Type u) [MetricSpace X] where
  ballFamily : Set (Set X)
  coveringConstant : ℕ
  finiteOverlapProperty : Prop
  scaleInvariance : Prop
  endpointBound : Prop

structure BesicovitchEvidence (X : Type u) [MetricSpace X]
    (B : BesicovitchPackage X) where
  finiteOverlapPropertyClosed : B.finiteOverlapProperty
  scaleInvarianceClosed : B.scaleInvariance
  endpointBoundClosed : B.endpointBound

def BesicovitchClosed (X : Type u) [MetricSpace X] (B : BesicovitchPackage X) : Prop :=
  B.finiteOverlapProperty ∧ B.scaleInvariance ∧ B.endpointBound

theorem besicovitch_closed_from_evidence (X : Type u) [MetricSpace X]
    (B : BesicovitchPackage X) (E : BesicovitchEvidence X B) : BesicovitchClosed X B := by
  exact And.intro E.finiteOverlapPropertyClosed
    (And.intro E.scaleInvarianceClosed E.endpointBoundClosed)

end CombinatorialAspectsPackingCoveringLemmaCanonicalLaneLean
end HautevilleHouse