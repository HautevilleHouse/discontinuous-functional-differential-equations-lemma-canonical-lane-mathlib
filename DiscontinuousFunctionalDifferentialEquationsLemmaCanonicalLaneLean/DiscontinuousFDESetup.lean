import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean

structure DiscontinuousFDEAdmittedObject where
  carrier : Type u
  topology : TopologicalSpace carrier
  linearOperator : Type v
  jumpTerm : Type w
  delayFunctional : Type x
  functionalDifferentialEquation : Prop
  discontinuitySet : Prop
  admissibleSolution : Prop
  conclusion : admissibleSolution

structure AdmissibleClass where
  object : DiscontinuousFDEAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse