import HautevilleHouse.DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean.ExistenceTheory

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean

structure UniquenessAndStability {D : DiscontinuousFDE} {S : StepMethod D} {T : ExistenceTheory S} where
  uniquenessOfSolutions : Prop
  continuousDependence : Prop
  asymptoticStability : Prop
  LyapunovFunction : Prop

structure UniquenessAndStabilityEvidence {D : DiscontinuousFDE} {S : StepMethod D} {T : ExistenceTheory S} (U : UniquenessAndStability T) where
  uniquenessOfSolutionsClosed : U.uniquenessOfSolutions
  continuousDependenceClosed : U.continuousDependence
  asymptoticStabilityClosed : U.asymptoticStability
  LyapunovFunctionClosed : U.LyapunovFunction

def UniquenessAndStabilityClosed {D : DiscontinuousFDE} {S : StepMethod D} {T : ExistenceTheory S} (U : UniquenessAndStability T) : Prop :=
  U.uniquenessOfSolutions ∧ U.continuousDependence ∧ U.asymptoticStability ∧ U.LyapunovFunction

theorem uniqueness_and_stability_closed_from_evidence {D : DiscontinuousFDE} {S : StepMethod D} {T : ExistenceTheory S} (U : UniquenessAndStability T) (E : UniquenessAndStabilityEvidence U) : UniquenessAndStabilityClosed U := by
  exact And.intro E.uniquenessOfSolutionsClosed (And.intro E.continuousDependenceClosed (And.intro E.asymptoticStabilityClosed E.LyapunovFunctionClosed))

end DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse
