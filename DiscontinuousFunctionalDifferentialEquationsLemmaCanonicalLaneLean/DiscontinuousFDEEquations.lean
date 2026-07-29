import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean

structure DiscontinuousFDEPackage where
  timeDomain : Type u
  stateSpace : Type v
  jumpCondition : Prop
  delayDifferentialEquation : Prop
  piecewiseContinuousSolver : Prop

structure DiscontinuousFDEEvidence (D : DiscontinuousFDEPackage) where
  jumpConditionClosed : D.jumpCondition
  delayDifferentialEquationClosed : D.delayDifferentialEquation
  piecewiseContinuousSolverClosed : D.piecewiseContinuousSolver

def DiscontinuousFDEClosed (D : DiscontinuousFDEPackage) : Prop :=
  D.jumpCondition ∧ D.delayDifferentialEquation ∧ D.piecewiseContinuousSolver

theorem discontinuous_fde_closed_from_evidence (D : DiscontinuousFDEPackage)
    (E : DiscontinuousFDEEvidence D) : DiscontinuousFDEClosed D := by
  exact And.intro E.jumpConditionClosed
    (And.intro E.delayDifferentialEquationClosed E.piecewiseContinuousSolverClosed)

end DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse
