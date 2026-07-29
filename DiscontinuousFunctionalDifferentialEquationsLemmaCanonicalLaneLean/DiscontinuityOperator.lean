import DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean.FunctionSpace

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean

structure DiscontinuityOperator (X : Type u) [NormedAddCommGroup X] [NormedSpace ℝ X] where
  jumpSet : Set X
  jumpMagnitude : X → ℝ
  domainDecomposition : X → Set (Set X)
  leftLimitOperator : (X → ℝ) → (X → ℝ)
  rightLimitOperator : (X → ℝ) → (X → ℝ)
  jumpDecomposition : (X → ℝ) → (X → ℝ)

structure DiscontinuityOperatorEvidence {X : Type u} [NormedAddCommGroup X] [NormedSpace ℝ X]
    (D : DiscontinuityOperator X) where
  jumpSetClosed : D.jumpSet = Set.preimage (fun _ : X => True) (Set.singleton True)
  jumpMagnitudeClosed : ∀ x : X, D.jumpMagnitude x ≥ 0
  leftLimitOperatorClosed : ∀ f : X → ℝ, ∀ x : X, D.leftLimitOperator f x ≠ D.rightLimitOperator f x → x ∈ D.jumpSet
  rightLimitOperatorClosed : ∀ f : X → ℝ, ∀ x : X, x ∉ D.jumpSet → D.leftLimitOperator f x = D.rightLimitOperator f x
  jumpDecompositionClosed : ∀ f : X → ℝ, ∀ x : X, D.jumpDecomposition f x = D.rightLimitOperator f x - D.leftLimitOperator f x

end DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse