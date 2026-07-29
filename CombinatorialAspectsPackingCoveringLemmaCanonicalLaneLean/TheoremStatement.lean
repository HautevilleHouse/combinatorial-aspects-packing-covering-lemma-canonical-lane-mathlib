import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPackingCoveringLemmaCanonicalLaneLean

structure PackingCoveringAdmittedObject where
  carrier : Type
  topology : TopologicalSpace carrier
  coveringFamily : carrier → Set carrier
  packingFamily : carrier → Set carrier
  coveringProperty : Prop
  packingProperty : Prop
  conclusion : coveringProperty ∧ packingProperty

structure PackingCoveringEndgameState where
  object : PackingCoveringAdmittedObject

def PackingCoveringWitnessClosed (O : PackingCoveringAdmittedObject) : Prop :=
  O.coveringProperty ∧ O.packingProperty

end CombinatorialAspectsPackingCoveringLemmaCanonicalLaneLean
end HautevilleHouse