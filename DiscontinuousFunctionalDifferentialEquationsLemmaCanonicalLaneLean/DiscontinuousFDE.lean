import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean

structure DiscontinuousFDE where
  timeDomain : Type u
  stateSpace : Type v
  delayFunction : timeDomain → timeDomain
  rightHandSide : timeDomain → stateSpace → stateSpace → stateSpace
  initialFunction : timeDomain → stateSpace
  discontinuitySet : Set (timeDomain × stateSpace)
  caratheodoryConditions : Prop

structure DiscontinuousFDEEvidence (D : DiscontinuousFDE) where
  caratheodoryConditionsClosed : D.caratheodoryConditions

def DiscontinuousFDEClosed (D : DiscontinuousFDE) : Prop :=
  D.caratheodoryConditions

theorem discontinuous_fde_closed_from_evidence (D : DiscontinuousFDE) (E : DiscontinuousFDEEvidence D) : DiscontinuousFDEClosed D := by
  exact E.caratheodoryConditionsClosed

end DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse
