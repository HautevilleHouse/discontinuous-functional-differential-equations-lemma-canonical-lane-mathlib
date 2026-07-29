import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean

structure AdmissibleSolutionEndpointPackage where
  solutionSpace : Type u
  endpointCondition : Prop
  uniquenessClass : Prop
  continuationProperty : Prop
  endpointMatchesLemma : Prop

structure AdmissibleSolutionEndpointEvidence (A : AdmissibleSolutionEndpointPackage) where
  endpointConditionClosed : A.endpointCondition
  uniquenessClassClosed : A.uniquenessClass
  continuationPropertyClosed : A.continuationProperty
  endpointMatchesLemmaClosed : A.endpointMatchesLemma

def AdmissibleSolutionEndpointClosed (A : AdmissibleSolutionEndpointPackage) : Prop :=
  A.endpointCondition ∧ A.uniquenessClass ∧ A.continuationProperty ∧ A.endpointMatchesLemma

theorem admissible_solution_endpoint_closed_from_evidence (A : AdmissibleSolutionEndpointPackage) (E : AdmissibleSolutionEndpointEvidence A) : AdmissibleSolutionEndpointClosed A :=
  And.intro E.endpointConditionClosed (And.intro E.uniquenessClassClosed (And.intro E.continuationPropertyClosed E.endpointMatchesLemmaClosed))

end DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse