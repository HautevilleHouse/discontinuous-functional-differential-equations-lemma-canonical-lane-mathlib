import HautevilleHouse.DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean.ExponentialStability

namespace HautevilleHouse
namespace DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean

structure DFDELemmaAdmittedObject where
  space : DFDELemmaSpace
  equation : DiscontinuousPDEPackage
  stepMethod : StepMethodPackage equation
  fixedPoint : FixedPointTheoremPackage equation stepMethod
  stability : ExponentialStabilityPackage equation stepMethod fixedPoint
  conclusion : stability.lyapunovFunction ∧ stability.exponentialDecay

def DFDELemmaWitnessClosed (O : DFDELemmaAdmittedObject) : Prop :=
  O.stability.lyapunovFunction ∧ O.stability.exponentialDecay

end DiscontinuousFunctionalDifferentialEquationsLemmaCanonicalLaneLean
end HautevilleHouse