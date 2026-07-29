import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean

structure JumpDiscontinuityPackage where
  jumpTimes : Type u
  jumpMagnitude : Type v
  jumpTimesCountable : Prop
  magnitudeBounded : Prop
  leftRightLimitsExist : Prop

structure JumpDiscontinuityEvidence (J : JumpDiscontinuityPackage) where
  jumpTimesCountableClosed : J.jumpTimesCountable
  magnitudeBoundedClosed : J.magnitudeBounded
  leftRightLimitsExistClosed : J.leftRightLimitsExist

def JumpDiscontinuityClosed (J : JumpDiscontinuityPackage) : Prop :=
  J.jumpTimesCountable ∧ J.magnitudeBounded ∧ J.leftRightLimitsExist

theorem jump_discontinuity_closed_from_evidence (J : JumpDiscontinuityPackage)
    (E : JumpDiscontinuityEvidence J) : JumpDiscontinuityClosed J := by
  exact And.intro E.jumpTimesCountableClosed
    (And.intro E.magnitudeBoundedClosed E.leftRightLimitsExistClosed)

end DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse
