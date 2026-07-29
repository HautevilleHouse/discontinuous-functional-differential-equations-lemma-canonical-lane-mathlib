import HautevilleHouse.DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean.FixedPointTheorem

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean

structure ExponentialStabilityPackage {D : DiscontinuousPDEPackage} {S : StepMethodPackage D} {F : FixedPointTheoremPackage D S} where
  lyapunovFunction : Prop
  exponentialDecay : Prop
  stabilityMargin : Prop
  perturbationTolerance : Prop

structure ExponentialStabilityEvidence {D : DiscontinuousPDEPackage} {S : StepMethodPackage D} {F : FixedPointTheoremPackage D S} (E : ExponentialStabilityPackage D S F) where
  lyapunovFunctionClosed : E.lyapunovFunction
  exponentialDecayClosed : E.exponentialDecay
  stabilityMarginClosed : E.stabilityMargin
  perturbationToleranceClosed : E.perturbationTolerance

def ExponentialStabilityClosed {D : DiscontinuousPDEPackage} {S : StepMethodPackage D} {F : FixedPointTheoremPackage D S} (E : ExponentialStabilityPackage D S F) : Prop :=
  E.lyapunovFunction ∧ E.exponentialDecay ∧ E.stabilityMargin ∧ E.perturbationTolerance

theorem exponential_stability_closed_from_evidence {D : DiscontinuousPDEPackage} {S : StepMethodPackage D} {F : FixedPointTheoremPackage D S} (E : ExponentialStabilityPackage D S F) (Ev : ExponentialStabilityEvidence E) : ExponentialStabilityClosed E := by
  exact And.intro Ev.lyapunovFunctionClosed (And.intro Ev.exponentialDecayClosed (And.intro Ev.stabilityMarginClosed Ev.perturbationToleranceClosed))

end DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse