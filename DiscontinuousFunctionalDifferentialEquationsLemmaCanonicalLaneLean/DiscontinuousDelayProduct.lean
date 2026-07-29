import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean

structure DelayProductPackage where
  delayType : Type u
  productStructure : Type v
  jumpSet : Prop
  pathSpace : Prop
  supermartingaleComponent : Prop

def DelayProductClosed (D : DelayProductPackage) : Prop :=
  D.jumpSet ∧ D.pathSpace ∧ D.supermartingaleComponent

structure DelayProductEvidence (D : DelayProductPackage) where
  jumpSetClosed : D.jumpSet
  pathSpaceClosed : D.pathSpace
  supermartingaleComponentClosed : D.supermartingaleComponent

theorem delay_product_closed_from_evidence (D : DelayProductPackage) (E : DelayProductEvidence D) :
    DelayProductClosed D := by
  exact And.intro E.jumpSetClosed (And.intro E.pathSpaceClosed E.supermartingaleComponentClosed)

end DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse