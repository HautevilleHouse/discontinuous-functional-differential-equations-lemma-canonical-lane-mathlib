import HautevilleHouse.DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean.DiscontinuousFDE

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean

structure StepMethod {D : DiscontinuousFDE} where
  stepSize : ℝ
  approximationSequence : ℕ → D.timeDomain → D.stateSpace
  consistency : Prop
  stability : Prop
  convergence : Prop

structure StepMethodEvidence {D : DiscontinuousFDE} (S : StepMethod D) where
  consistencyClosed : S.consistency
  stabilityClosed : S.stability
  convergenceClosed : S.convergence

def StepMethodClosed {D : DiscontinuousFDE} (S : StepMethod D) : Prop :=
  S.consistency ∧ S.stability ∧ S.convergence

theorem step_method_closed_from_evidence {D : DiscontinuousFDE} (S : StepMethod D) (E : StepMethodEvidence S) : StepMethodClosed S := by
  exact And.intro E.consistencyClosed (And.intro E.stabilityClosed E.convergenceClosed)

end DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse
