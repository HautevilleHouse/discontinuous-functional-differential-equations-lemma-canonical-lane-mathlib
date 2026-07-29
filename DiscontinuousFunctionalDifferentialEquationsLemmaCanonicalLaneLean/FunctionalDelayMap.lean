import DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean.DelayType

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean

structure FunctionalDelayMap (X : Type u) [NormedAddCommGroup X] [NormedSpace ℝ X] where
  delayFunction : X → ℝ → ℝ
  delayType : DelayType
  historyOperator : (ℝ → X) → (ℝ → X)
  functionalArgument : (ℝ → X) → ℝ → X
  differentialEquation : (ℝ → X) → (ℝ → X)

structure FunctionalDelayMapEvidence {X : Type u} [NormedAddCommGroup X] [NormedSpace ℝ X]
    (F : FunctionalDelayMap X) where
  delayFunctionClosed : F.delayFunction = fun _ t => t
  delayTypeClosed : F.delayType = DelayType.constant
  historyOperatorClosed : F.historyOperator = fun u => u
  functionalArgumentClosed : ∀ u : ℝ → X, ∀ t : ℝ, F.functionalArgument u t = u (t - F.delayFunction u t)
  differentialEquationClosed : ∀ u : ℝ → X, ∀ t : ℝ, F.differentialEquation u t = F.functionalArgument u t

end DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse