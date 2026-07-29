import DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean.DiscontinuityOperator

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean

structure RegularizationMethod (X : Type u) [NormedAddCommGroup X] [NormedSpace ℝ X] where
  smoothingParameter : ℝ
  convolutionKernel : X → ℝ
  regularizedOperator : (X → ℝ) → (X → ℝ)
  limitProcedure : (X → ℝ) → X → ℝ

structure RegularizationMethodEvidence {X : Type u} [NormedAddCommGroup X] [NormedSpace ℝ X]
    (R : RegularizationMethod X) where
  smoothingParameterClosed : R.smoothingParameter > 0
  convolutionKernelClosed : ∀ x : X, R.convolutionKernel x ≥ 0 ∧ ∫ x, R.convolutionKernel x dx = 1
  regularizedOperatorClosed : ∀ f : X → ℝ, Continuous (R.regularizedOperator f)
  limitProcedureClosed : ∀ (f : X → ℝ) (D : DiscontinuityOperator X), 
    (∀ x ∉ D.jumpSet, R.limitProcedure f x = f x) ∧
    (∀ x ∈ D.jumpSet, R.limitProcedure f x = (f x + D.leftLimitOperator f x + D.rightLimitOperator f x) / 3)

end DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse