import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationFoundationCanonicalLaneLean

structure PhaseStability where
  gibbsFreeEnergy : ℝ
  temperature : ℝ
  pressure : ℝ
  stablePhase : String
  stabilityCondition : Prop

def phaseStabilityClosed (P : PhaseStability) : Prop :=
  P.stabilityCondition ∧ P.gibbsFreeEnergy = P.gibbsFreeEnergy

end MaterialsEngineeringMaterialsCharacterizationFoundationCanonicalLaneLean
end HautevilleHouse