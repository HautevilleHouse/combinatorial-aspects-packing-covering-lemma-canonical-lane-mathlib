import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPackingCoveringLemmaCanonicalLaneLean

structure PackingCoveringAdmittedObject where
  carrier : Type u
  family : carrier → Set carrier
  packingCondition : Prop
  coveringCondition : Prop
  conclusion : packingCondition ∨ coveringCondition

end CombinatorialAspectsPackingCoveringLemmaCanonicalLaneLean
end HautevilleHouse