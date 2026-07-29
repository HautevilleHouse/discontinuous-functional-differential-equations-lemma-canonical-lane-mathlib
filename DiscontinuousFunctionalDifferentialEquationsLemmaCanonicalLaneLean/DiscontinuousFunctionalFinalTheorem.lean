import DiscontinuousFunctionalGateLemmas.lean

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean

def ConstrainedDiscontinuousFunctionalClosure (A : DiscontinuousAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_discontinuous_functional_endgame (A : DiscontinuousAdmissibleClass) :
    ConstrainedDiscontinuousFunctionalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse