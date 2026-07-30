import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationFoundationCanonicalLaneLean

structure CrackGeometry where
  crackLength : ℝ
  crackWidth : ℝ
  crackTipRadius : ℝ
  orientation : Vector ℝ (Fin 3)

structure StressIntensityFactor where
  K_I : ℝ
  K_II : ℝ
  K_III : ℝ

definition fractureCriterion (K : StressIntensityFactor) (K_IC : ℝ) : Prop :=
  K.K_I ≥ K_IC

structure EnergyReleaseRate where
  G : ℝ
  youngModulus : ℝ
  poissonRatio : ℝ
  planeStrain : G = (StressIntensityFactor.mk 0 0 0).K_I^2 * (1 - poissonRatio^2) / youngModulus

structure FractureMechanicsPackage where
  crack : CrackGeometry
  K : StressIntensityFactor
  G : EnergyReleaseRate
  toughness : ℝ
  fractureCondition : fractureCriterion K toughness
  parisLaw : Prop
  fatigueCrackGrowth : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  fractureConditionClosed : F.fractureCondition
  fatigueCrackGrowthClosed : F.fatigueCrackGrowth

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.fractureCondition ∧ F.fatigueCrackGrowth

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage) (Ev : FractureMechanicsEvidence F) :
    FractureMechanicsClosed F := by
  exact And.intro Ev.fractureConditionClosed Ev.fatigueCrackGrowthClosed

end MaterialsEngineeringMaterialsCharacterizationFoundationCanonicalLaneLean
end HautevilleHouse