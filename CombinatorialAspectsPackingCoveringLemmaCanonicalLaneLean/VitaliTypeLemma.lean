import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPackingCoveringLemmaCanonicalLaneLean

structure VitaliTypePackage {P : PackingPackage} {C : CoveringPackage P} where
  densityCondition : Prop
  selectionProperty : Prop
  measureRelation : Prop
  endpointGuarantee : Prop

structure VitaliTypeEvidence {P : PackingPackage} {C : CoveringPackage P}
    (V : VitaliTypePackage P C) where
  densityConditionClosed : V.densityCondition
  selectionPropertyClosed : V.selectionProperty
  measureRelationClosed : V.measureRelation
  endpointGuaranteeClosed : V.endpointGuarantee

def VitaliTypeClosed {P : PackingPackage} {C : CoveringPackage P}
    (V : VitaliTypePackage P C) : Prop :=
  V.densityCondition ∧ V.selectionProperty ∧
  V.measureRelation ∧ V.endpointGuarantee

theorem vitali_type_closed_from_evidence {P : PackingPackage} {C : CoveringPackage P}
    (V : VitaliTypePackage P C) (E : VitaliTypeEvidence V) : VitaliTypeClosed V := by
  exact And.intro E.densityConditionClosed
    (And.intro E.selectionPropertyClosed
      (And.intro E.measureRelationClosed E.endpointGuaranteeClosed))

end CombinatorialAspectsPackingCoveringLemmaCanonicalLaneLean
end HautevilleHouse