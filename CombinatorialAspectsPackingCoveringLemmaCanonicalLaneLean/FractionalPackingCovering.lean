import combinatorialAspectsPackingCoveringLemmaCanonicalLaneLean.PackingCoveringDuality

namespace HautevilleHouse
namespace CombinatorialAspectsPackingCoveringLemmaCanonicalLaneLean

structure FractionalPacking (X : Type u) where
  groundType : X
  weightFunction : Set X → ℝ
  fractionalPackingNumber : ℝ
  totalWeightLeOne : ∑ s, weightFunction s ≤ 1

structure FractionalCovering (X : Type u) where
  groundType : X
  weightFunction : Set X → ℝ
  fractionalCoveringNumber : ℝ
  sumWeightGeOne : ∑ s, weightFunction s ≥ 1

structure FractionalPackingCoveringDuality (X : Type u) where
  fractionalPacking : FractionalPacking X
  fractionalCovering : FractionalCovering X
  fractionalPackingNumberLeCoveringNumber : fractionalPacking.fractionalPackingNumber ≤ fractionalCovering.fractionalCoveringNumber
  strongDuality : fractionalPacking.fractionalPackingNumber = fractionalCovering.fractionalCoveringNumber

end CombinatorialAspectsPackingCoveringLemmaCanonicalLaneLean
end HautevilleHouse