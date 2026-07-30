import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationFoundationCanonicalLaneLean

structure ElasticityPackage where
  stressTensor : Type u
  strainTensor : Type v
  elasticModuli : Type w
  hookesLaw : Prop
  compatibilityConditions : Prop
  strainEnergyDensity : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  hookesLawClosed : E.hookesLaw
  compatibilityConditionsClosed : E.compatibilityConditions
  strainEnergyDensityClosed : E.strainEnergyDensity

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.hookesLaw ∧ E.compatibilityConditions ∧ E.strainEnergyDensity

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.hookesLawClosed (And.intro Ev.compatibilityConditionsClosed Ev.strainEnergyDensityClosed)

end MaterialsEngineeringMaterialsCharacterizationFoundationCanonicalLaneLean
end HautevilleHouse
