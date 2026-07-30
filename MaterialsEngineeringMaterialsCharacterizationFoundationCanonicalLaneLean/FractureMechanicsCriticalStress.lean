import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationFoundationCanonicalLaneLean

structure FractureCriterion where
  criticalStress : ℝ
  crackLength : ℝ
  fractureToughness : ℝ
  griffithCriterion : Prop

def fractureCriterionClosed (F : FractureCriterion) : Prop :=
  F.griffithCriterion ∧ F.criticalStress = F.fractureToughness / Real.sqrt (F.crackLength)

end MaterialsEngineeringMaterialsCharacterizationFoundationCanonicalLaneLean
end HautevilleHouse