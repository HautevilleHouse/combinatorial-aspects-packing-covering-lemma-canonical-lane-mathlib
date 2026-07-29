import combinatorialAspectsPackingCoveringLemmaCanonicalLaneLean.FractionalPackingCovering

namespace HautevilleHouse
namespace CombinatorialAspectsPackingCoveringLemmaCanonicalLaneLean

structure HausslerPackingSetup (X : Type u) where
  groundType : X
  setSystem : Set (Set X)
  epsilon : ℝ
  epsilonPos : epsilon > 0
  packingNumber : ℕ
  packingNumberBound : packingNumber ≤ (someFunction : ℕ)

structure HausslerPackingEvidence (H : HausslerPackingSetup X) where
  epsilonClosed : H.epsilon > 0
  packingNumberBoundClosed : H.packingNumber ≤ (someFunction : ℕ)

end CombinatorialAspectsPackingCoveringLemmaCanonicalLaneLean
end HautevilleHouse