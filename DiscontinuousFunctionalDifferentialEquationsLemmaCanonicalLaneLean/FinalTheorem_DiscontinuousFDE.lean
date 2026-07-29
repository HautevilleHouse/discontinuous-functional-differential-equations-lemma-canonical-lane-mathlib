import HautevilleHouse.DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean.GateLemmas_DiscontinuousFDE

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean

def ConstrainedDiscontinuousFDEClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_discontinuous_fde_endgame (A : AdmissibleClass) : ConstrainedDiscontinuousFDEClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse
