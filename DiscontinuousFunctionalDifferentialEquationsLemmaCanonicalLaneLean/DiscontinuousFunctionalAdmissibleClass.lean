import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean

structure DiscontinuousAdmittedObject where
  space : Type u
  topology : TopologicalSpace space
  functionalSpace : Type v
  equationSatisfied : Prop
  conclusion : equationSatisfied

structure DiscontinuousAdmissibleClass where
  object : DiscontinuousAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def DiscontinuousWitnessClosed (O : DiscontinuousAdmittedObject) : Prop :=
  O.equationSatisfied

end DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse