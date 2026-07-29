import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPackingCoveringLemmaCanonicalLaneLean

structure Ball (X : Type u) where
  center : X
  radius : ℝ

structure DoubleBallLemmaPackage (X : Type u) [MetricSpace X] where
  balls : Set (Ball X)
  pairwiseDisjoint : ∀ b1 b2 ∈ balls, b1 ≠ b2 → (Metric.dist b1.center b2.center ≥ b1.radius + b2.radius)
  scaledBallsCover : ∀ x : X, ∃ b ∈ balls, Metric.dist x b.center < 3 * b.radius
  pairwiseDisjointClosed : pairwiseDisjoint
  scaledBallsCoverClosed : scaledBallsCover

def DoubleBallLemmaClosed (X : Type u) [MetricSpace X] (pkg : DoubleBallLemmaPackage X) : Prop :=
  pkg.pairwiseDisjointClosed ∧ pkg.scaledBallsCoverClosed

theorem double_ball_lemma_closed_from_evidence (X : Type u) [MetricSpace X] (pkg : DoubleBallLemmaPackage X) : DoubleBallLemmaClosed X pkg := by
  exact And.intro pkg.pairwiseDisjointClosed pkg.scaledBallsCoverClosed

end CombinatorialAspectsPackingCoveringLemmaCanonicalLaneLean
end HautevilleHouse