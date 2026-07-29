import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPackingCoveringLemmaCanonicalLaneLean

structure WeightedPackingPackage {P : PackingPackage} where
  weightFunction : P.family → ℝ
  totalWeightBound : Prop
  packingWeightInequality : Prop
  coveringWeightRelation : Prop

structure WeightedPackingEvidence {P : PackingPackage}
    (W : WeightedPackingPackage P) where
  totalWeightBoundClosed : W.totalWeightBound
  packingWeightInequalityClosed : W.packingWeightInequality
  coveringWeightRelationClosed : W.coveringWeightRelation

def WeightedPackingClosed {P : PackingPackage} (W : WeightedPackingPackage P) : Prop :=
  W.totalWeightBound ∧ W.packingWeightInequality ∧ W.coveringWeightRelation

theorem weighted_packing_closed_from_evidence {P : PackingPackage}
    (W : WeightedPackingPackage P) (E : WeightedPackingEvidence W) :
    WeightedPackingClosed W := by
  exact And.intro E.totalWeightBoundClosed
    (And.intro E.packingWeightInequalityClosed E.coveringWeightRelationClosed)

end CombinatorialAspectsPackingCoveringLemmaCanonicalLaneLean
end HautevilleHouse