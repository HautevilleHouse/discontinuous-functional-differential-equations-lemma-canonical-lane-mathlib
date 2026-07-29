import DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DFDEState where
  object : DFDEAdmittedObject

def dfdeProjection : Projection DFDEState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem dfde_projection_idempotent (x : DFDEState) :
    dfdeProjection.toFun (dfdeProjection.toFun x) = dfdeProjection.toFun x := by
  exact dfdeProjection.idempotent x

end DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse