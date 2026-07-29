import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean

structure DiscontinuityLayerClassificationPackage where
  singularityType : Type u
  layerIndex : Type v
  classificationMap : Type w
  finiteLayerDecomposition : Prop
  layerTransitionControlled : Prop
  layerResolution : Prop

structure DiscontinuityLayerClassificationEvidence (D : DiscontinuityLayerClassificationPackage) where
  finiteLayerDecompositionClosed : D.finiteLayerDecomposition
  layerTransitionControlledClosed : D.layerTransitionControlled
  layerResolutionClosed : D.layerResolution

def DiscontinuityLayerClassificationClosed (D : DiscontinuityLayerClassificationPackage) : Prop :=
  D.finiteLayerDecomposition ∧ D.layerTransitionControlled ∧ D.layerResolution

theorem discontinuity_layer_classification_closed_from_evidence (D : DiscontinuityLayerClassificationPackage) (E : DiscontinuityLayerClassificationEvidence D) : DiscontinuityLayerClassificationClosed D :=
  And.intro E.finiteLayerDecompositionClosed (And.intro E.layerTransitionControlledClosed E.layerResolutionClosed)

end DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse