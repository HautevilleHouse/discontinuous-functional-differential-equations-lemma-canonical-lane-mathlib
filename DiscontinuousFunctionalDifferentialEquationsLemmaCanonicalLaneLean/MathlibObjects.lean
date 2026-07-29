import DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DFDEAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  functionSpace : Type
  functionSpaceNorm : Norm functionSpace
  initialCondition : functionSpace
  equation : functionSpace → functionSpace
  existenceResult : functionSpace
  conclusion : existenceResult = initialCondition

def DFDEWitnessClosed (O : DFDEAdmittedObject) : Prop :=
  O.conclusion

end DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse