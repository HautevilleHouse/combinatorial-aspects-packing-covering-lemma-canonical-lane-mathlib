import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPackingCoveringLemmaCanonicalLaneLean

structure VitaliCoveringLemmaPackage where
  metricSpaceType : Type u
  metric : metricSpaceType → metricSpaceType → ℝ
  collection : Set (Set metricSpaceType)
  doublingProperty : Prop
  vitaliCondition : Prop
  lemmaStatement : doublingProperty → vitaliCondition

structure VitaliCoveringEvidence (V : VitaliCoveringLemmaPackage) where
  doublingPropertyClosed : V.doublingProperty
  vitaliConditionClosed : V.vitaliCondition

def VitaliCoveringClosed (V : VitaliCoveringLemmaPackage) : Prop :=
  V.doublingProperty ∧ V.vitaliCondition

theorem vitali_covering_closed_from_evidence (V : VitaliCoveringLemmaPackage)
    (E : VitaliCoveringEvidence V) : VitaliCoveringClosed V := by
  exact And.intro E.doublingPropertyClosed E.vitaliConditionClosed

end CombinatorialAspectsPackingCoveringLemmaCanonicalLaneLean
end HautevilleHouse