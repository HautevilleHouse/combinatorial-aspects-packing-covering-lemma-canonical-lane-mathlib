import combinatorialAspectsPackingCoveringLemmaCanonicalLaneLean.PrimitivePackingCoveringStructure

namespace HautevilleHouse
namespace CombinatorialAspectsPackingCoveringLemmaCanonicalLaneLean

structure DualityPair where
  groundType : Type u
  packingFamily : PrimitiveSetFamily groundType
  coveringFamily : PrimitiveSetFamily groundType
  packingCoveringRelation : Prop
  linearProgrammingDual : Prop
  strongDualityHolds : packingCoveringRelation → linearProgrammingDual

structure DualityEvidence (D : DualityPair) where
  packingCoveringRelationClosed : D.packingCoveringRelation
  linearProgrammingDualClosed : D.linearProgrammingDual

end CombinatorialAspectsPackingCoveringLemmaCanonicalLaneLean
end HautevilleHouse