import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean

structure ExistenceUniquenessPackage where
  existenceCondition : Prop
  uniquenessCondition : Prop
  continuousDependence : Prop
  globalSolution : Prop

structure ExistenceUniquenessEvidence (E : ExistenceUniquenessPackage) where
  existenceConditionClosed : E.existenceCondition
  uniquenessConditionClosed : E.uniquenessCondition
  continuousDependenceClosed : E.continuousDependence
  globalSolutionClosed : E.globalSolution

def ExistenceUniquenessClosed (E : ExistenceUniquenessPackage) : Prop :=
  E.existenceCondition ∧ E.uniquenessCondition ∧
  E.continuousDependence ∧ E.globalSolution

theorem existence_uniqueness_closed_from_evidence (E : ExistenceUniquenessPackage)
    (Ev : ExistenceUniquenessEvidence E) : ExistenceUniquenessClosed E := by
  exact And.intro Ev.existenceConditionClosed
    (And.intro Ev.uniquenessConditionClosed
      (And.intro Ev.continuousDependenceClosed Ev.globalSolutionClosed))

end DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse
