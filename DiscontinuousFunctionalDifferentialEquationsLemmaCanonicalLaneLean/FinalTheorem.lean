import canonicalLaneMathlib.AdmissibleClass
import DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean.BridgeLemmas
import DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean

def ConstrainedDiscontinuousFDEsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_discontinuous_fdes_endgame (A : AdmissibleClass) :
    ConstrainedDiscontinuousFDEsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse
