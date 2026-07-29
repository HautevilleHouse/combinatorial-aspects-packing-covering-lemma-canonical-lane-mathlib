import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPackingCoveringLemmaCanonicalLaneLean

structure PrimitiveSetFamily (X : Type u) where
  carrier : Set X
  subsets : Set (Set X)
  finiteIntersectionStable : Prop
  closureUnderUnions : Prop

structure PrimitiveHypergraph (X : Type u) where
  vertexSet : Set X
  edgeSet : Set (Set X)
  edgesCoverVertices : vertexSet ⊆ ⋃ e ∈ edgeSet, e
  edgeSizeBound : ℕ

structure PrimitivePackingCondition (X : Type u) where
  family : PrimitiveSetFamily X
  packingNumber : ℕ
  pairwiseDisjoint : Prop
  packingAchieved : packingNumber ≥ 1

structure PrimitiveCoveringCondition (X : Type u) where
  family : PrimitiveSetFamily X
  coveringNumber : ℕ
  coveringAchieved : coveringNumber ≥ 1
  coveringBound : Prop

structure PrimitivePackingCoveringPackage where
  groundType : Type u
  setFamily : PrimitiveSetFamily groundType
  packing : PrimitivePackingCondition groundType
  covering : PrimitiveCoveringCondition groundType
  packingDominatesCovering : packing.packingNumber ≤ covering.coveringNumber
  coveringDominatesPacking : covering.coveringNumber ≤ packing.packingNumber

end CombinatorialAspectsPackingCoveringLemmaCanonicalLaneLean
end HautevilleHouse