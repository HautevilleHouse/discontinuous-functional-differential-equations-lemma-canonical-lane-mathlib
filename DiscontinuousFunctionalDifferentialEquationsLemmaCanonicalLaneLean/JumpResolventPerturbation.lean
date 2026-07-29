import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean

structure JumpResolventPackage where
  baseSemigroup : Type u
  jumpOperator : Type v
  perturbationParameter : Type w
  resolventEquation : Prop
  jumpBoundedness : Prop
  spectralTransfer : Prop

structure JumpResolventEvidence (J : JumpResolventPackage) where
  resolventEquationClosed : J.resolventEquation
  jumpBoundednessClosed : J.jumpBoundedness
  spectralTransferClosed : J.spectralTransfer

def JumpResolventClosed (J : JumpResolventPackage) : Prop :=
  J.resolventEquation ∧ J.jumpBoundedness ∧ J.spectralTransfer

theorem jump_resolvent_closed_from_evidence (J : JumpResolventPackage) (E : JumpResolventEvidence J) : JumpResolventClosed J :=
  And.intro E.resolventEquationClosed (And.intro E.jumpBoundednessClosed E.spectralTransferClosed)

end DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse