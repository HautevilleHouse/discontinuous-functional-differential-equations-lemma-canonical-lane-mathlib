import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean

structure DelayIntegralRepresentationPackage where
  delayKernel : Type u
  integralOperator : Type v
  delayMeasure : Type w
  representationIdentity : Prop
  kernelBoundedness : Prop
  measurabilityConsistency : Prop

structure DelayIntegralRepresentationEvidence (D : DelayIntegralRepresentationPackage) where
  representationIdentityClosed : D.representationIdentity
  kernelBoundednessClosed : D.kernelBoundedness
  measurabilityConsistencyClosed : D.measurabilityConsistency

def DelayIntegralRepresentationClosed (D : DelayIntegralRepresentationPackage) : Prop :=
  D.representationIdentity ∧ D.kernelBoundedness ∧ D.measurabilityConsistency

theorem delay_integral_representation_closed_from_evidence (D : DelayIntegralRepresentationPackage) (E : DelayIntegralRepresentationEvidence D) : DelayIntegralRepresentationClosed D :=
  And.intro E.representationIdentityClosed (And.intro E.kernelBoundednessClosed E.measurabilityConsistencyClosed)

end DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse