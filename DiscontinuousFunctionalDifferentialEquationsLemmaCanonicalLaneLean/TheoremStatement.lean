import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean

structure AdmittedObject where
  functionalDifferentialEquation : Prop
  solution : Prop
  conclusion : solution

structure PoincareSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure PoincareAdmittedObject where
  space : PoincareSpace
  closedThreeManifold : Prop
  simplyConnected : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

def WitnessClosed (O : AdmittedObject) : Prop :=
  O.solution

end DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse