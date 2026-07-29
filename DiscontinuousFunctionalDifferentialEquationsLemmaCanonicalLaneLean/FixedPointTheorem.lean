import HautevilleHouse.DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean.StepMethod

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean

structure FixedPointTheoremPackage {D : DiscontinuousPDEPackage} {S : StepMethodPackage D} where
  contractionMapping : Prop
  fixedPointExistence : Prop
  uniquenessResult : Prop
  dependenceOnData : Prop

structure FixedPointTheoremEvidence {D : DiscontinuousPDEPackage} {S : StepMethodPackage D} (F : FixedPointTheoremPackage D S) where
  contractionMappingClosed : F.contractionMapping
  fixedPointExistenceClosed : F.fixedPointExistence
  uniquenessResultClosed : F.uniquenessResult
  dependenceOnDataClosed : F.dependenceOnData

def FixedPointTheoremClosed {D : DiscontinuousPDEPackage} {S : StepMethodPackage D} (F : FixedPointTheoremPackage D S) : Prop :=
  F.contractionMapping ∧ F.fixedPointExistence ∧ F.uniquenessResult ∧ F.dependenceOnData

theorem fixed_point_theorem_closed_from_evidence {D : DiscontinuousPDEPackage} {S : StepMethodPackage D} (F : FixedPointTheoremPackage D S) (E : FixedPointTheoremEvidence F) : FixedPointTheoremClosed F := by
  exact And.intro E.contractionMappingClosed (And.intro E.fixedPointExistenceClosed (And.intro E.uniquenessResultClosed E.dependenceOnDataClosed))

end DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse