import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationFoundationCanonicalLaneLean

structure ElasticConstants where
  youngModulus : ℝ
  poissonRatio : ℝ
  shearModulus : ℝ
  bulkModulus : ℝ

definition isotropicCheck (E : ElasticConstants) : Prop :=
  E.shearModulus = E.youngModulus / (2 * (1 + E.poissonRatio))

structure StressTensor where
  components : Matrix (Fin 3) (Fin 3) ℝ
  symmetric : components = componentsᵀ

structure StrainTensor where
  components : Matrix (Fin 3) (Fin 3) ℝ
  symmetric : components = componentsᵀ

structure HookesLaw where
  stiffnessTensor : Matrix (Fin 6) (Fin 6) ℝ
  complianceTensor : Matrix (Fin 6) (Fin 6) ℝ
  invertible : stiffnessTensor * complianceTensor = 1

structure ElasticityPackage where
  constants : ElasticConstants
  hooke : HookesLaw
  isotropic : isotropicCheck constants
  yieldCriterion : Prop
  fractureToughness : ℝ

structure ElasticityEvidence (E : ElasticityPackage) where
  isotropicClosed : E.isotropic
  yieldCriterionClosed : E.yieldCriterion

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.isotropic ∧ E.yieldCriterion

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) :
    ElasticityClosed E := by
  exact And.intro Ev.isotropicClosed Ev.yieldCriterionClosed

end MaterialsEngineeringMaterialsCharacterizationFoundationCanonicalLaneLean
end HautevilleHouse