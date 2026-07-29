import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean

structure DelayDifferentialOperatorPackage where
  delayFunction : Type u
  discreteDelaySet : Type v
  delayBounded : Prop
  continuousDelayKernel : Prop
  causalOperator : Prop

structure DelayDifferentialOperatorEvidence (D : DelayDifferentialOperatorPackage) where
  delayBoundedClosed : D.delayBounded
  continuousDelayKernelClosed : D.continuousDelayKernel
  causalOperatorClosed : D.causalOperator

def DelayDifferentialOperatorClosed (D : DelayDifferentialOperatorPackage) : Prop :=
  D.delayBounded ∧ D.continuousDelayKernel ∧ D.causalOperator

theorem delay_differential_operator_closed_from_evidence
    (D : DelayDifferentialOperatorPackage) (E : DelayDifferentialOperatorEvidence D) :
    DelayDifferentialOperatorClosed D := by
  exact And.intro E.delayBoundedClosed
    (And.intro E.continuousDelayKernelClosed E.causalOperatorClosed)

end DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse
