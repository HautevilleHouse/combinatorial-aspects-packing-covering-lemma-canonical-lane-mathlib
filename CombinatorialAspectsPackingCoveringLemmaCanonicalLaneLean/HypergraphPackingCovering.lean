import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPackingCoveringLemmaCanonicalLaneLean

structure HypergraphPackingCoveringPackage (E : CoveringElement) where
  hypergraph : Type u
  edges : Set (Set (E.carrier))
  transversalNumber : ℕ
  matchingNumber : ℕ
  konigProperty : Prop

structure HypergraphPackingCoveringEvidence {E : CoveringElement}
    (H : HypergraphPackingCoveringPackage E) where
  transversalNumberClosed : H.transversalNumber = H.matchingNumber
  konigPropertyClosed : H.konigProperty

def HypergraphPackingCoveringClosed {E : CoveringElement}
    (H : HypergraphPackingCoveringPackage E) : Prop :=
  H.transversalNumber = H.matchingNumber ∧ H.konigProperty

theorem hypergraph_packing_covering_closed_from_evidence
    {E : CoveringElement} (H : HypergraphPackingCoveringPackage E)
    (Ev : HypergraphPackingCoveringEvidence H) : HypergraphPackingCoveringClosed H := by
  exact And.intro Ev.transversalNumberClosed Ev.konigPropertyClosed

end CombinatorialAspectsPackingCoveringLemmaCanonicalLaneLean
end HautevilleHouse