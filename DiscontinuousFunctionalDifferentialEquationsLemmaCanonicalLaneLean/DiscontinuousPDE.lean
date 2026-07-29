import HautevilleHouse.DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean

structure DiscontinuousPDEPackage where
  domain : Type u
  functionSpace : Type v
  delayOperator : Type w
  discontinuityMeasure : Prop
  functionalDifferentialEquation : Prop
  initialCondition : Prop

structure DiscontinuousPDEEvidence (D : DiscontinuousPDEPackage) where
  domainClosed : D.domain → Prop
  functionSpaceClosed : D.functionSpace → Prop
  delayOperatorClosed : D.delayOperator → Prop
  discontinuityMeasureClosed : D.discontinuityMeasure
  functionalDifferentialEquationClosed : D.functionalDifferentialEquation
  initialConditionClosed : D.initialCondition

def DiscontinuousPDEClosed (D : DiscontinuousPDEPackage) : Prop :=
  D.discontinuityMeasure ∧ D.functionalDifferentialEquation ∧ D.initialCondition

theorem discontinuous_pde_closed_from_evidence (D : DiscontinuousPDEPackage) (E : DiscontinuousPDEEvidence D) : DiscontinuousPDEClosed D := by
  exact And.intro E.discontinuityMeasureClosed (And.intro E.functionalDifferentialEquationClosed E.initialConditionClosed)

end DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse