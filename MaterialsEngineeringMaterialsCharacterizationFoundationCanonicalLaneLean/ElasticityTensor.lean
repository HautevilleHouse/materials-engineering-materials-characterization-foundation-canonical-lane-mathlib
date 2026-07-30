import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationFoundationCanonicalLaneLean

structure ElasticityTensorPackage where
  stiffnessMatrix : ℝ⁶×ℝ⁶
  complianceMatrix : ℝ⁶×ℝ⁶
  youngModulus : ℝ
  poissonRatio : ℝ
  shearModulus : ℝ
  bulkModulus : ℝ
  matrixSymmetry : Prop
  positiveDefiniteness : Prop
  isotropyCondition : Prop
  matrixSymmetryTerm : matrixSymmetry
  positiveDefinitenessTerm : positiveDefiniteness
  isotropyConditionTerm : isotropyCondition

structure ElasticityTensorEvidence (E : ElasticityTensorPackage) where
  matrixSymmetryClosed : E.matrixSymmetry
  positiveDefinitenessClosed : E.positiveDefiniteness
  isotropyConditionClosed : E.isotropyCondition

def ElasticityTensorClosed (E : ElasticityTensorPackage) : Prop :=
  E.matrixSymmetry ∧ E.positiveDefiniteness ∧ E.isotropyCondition

theorem elasticity_tensor_closed_from_evidence (E : ElasticityTensorPackage) (Ev : ElasticityTensorEvidence E) :
    ElasticityTensorClosed E := by
  exact And.intro Ev.matrixSymmetryClosed (And.intro Ev.positiveDefinitenessClosed Ev.isotropyConditionClosed)

end MaterialsEngineeringMaterialsCharacterizationFoundationCanonicalLaneLean
end HautevilleHouse