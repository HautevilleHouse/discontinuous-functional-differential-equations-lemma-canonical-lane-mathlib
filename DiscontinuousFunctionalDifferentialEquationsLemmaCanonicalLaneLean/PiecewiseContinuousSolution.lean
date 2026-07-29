import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean

structure PiecewiseContinuousSolutionPackage where
  initialCondition : Type u
  solutionFunction : Type v
  interval : Type w
  piecewiseContinuity : Prop
  satisfiesFDEOnContinuityIntervals : Prop
  jumpConditionsMet : Prop

structure PiecewiseContinuousSolutionEvidence (P : PiecewiseContinuousSolutionPackage) where
  piecewiseContinuityClosed : P.piecewiseContinuity
  satisfiesFDEOnContinuityIntervalsClosed : P.satisfiesFDEOnContinuityIntervals
  jumpConditionsMetClosed : P.jumpConditionsMet

def PiecewiseContinuousSolutionClosed (P : PiecewiseContinuousSolutionPackage) : Prop :=
  P.piecewiseContinuity ∧ P.satisfiesFDEOnContinuityIntervals ∧ P.jumpConditionsMet

theorem piecewise_continuous_solution_closed_from_evidence
    (P : PiecewiseContinuousSolutionPackage) (E : PiecewiseContinuousSolutionEvidence P) :
    PiecewiseContinuousSolutionClosed P := by
  exact And.intro E.piecewiseContinuityClosed
    (And.intro E.satisfiesFDEOnContinuityIntervalsClosed E.jumpConditionsMetClosed)

end DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse
