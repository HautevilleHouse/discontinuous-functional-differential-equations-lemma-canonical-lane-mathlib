import HautevilleHouse.DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean.StepMethod

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean

structure ExistenceTheory {D : DiscontinuousFDE} {S : StepMethod D} where
  localSolutionExists : Prop
  maximalSolutionDefined : Prop
  continuationCriterion : Prop
  CaratheodorySolutionExists : Prop

structure ExistenceTheoryEvidence {D : DiscontinuousFDE} {S : StepMethod D} (T : ExistenceTheory S) where
  localSolutionExistsClosed : T.localSolutionExists
  maximalSolutionDefinedClosed : T.maximalSolutionDefined
  continuationCriterionClosed : T.continuationCriterion
  CaratheodorySolutionExistsClosed : T.CaratheodorySolutionExists

def ExistenceTheoryClosed {D : DiscontinuousFDE} {S : StepMethod D} (T : ExistenceTheory S) : Prop :=
  T.localSolutionExists ∧ T.maximalSolutionDefined ∧ T.continuationCriterion ∧ T.CaratheodorySolutionExists

theorem existence_theory_closed_from_evidence {D : DiscontinuousFDE} {S : StepMethod D} (T : ExistenceTheory S) (E : ExistenceTheoryEvidence T) : ExistenceTheoryClosed T := by
  exact And.intro E.localSolutionExistsClosed (And.intro E.maximalSolutionDefinedClosed (And.intro E.continuationCriterionClosed E.CaratheodorySolutionExistsClosed))

end DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse
