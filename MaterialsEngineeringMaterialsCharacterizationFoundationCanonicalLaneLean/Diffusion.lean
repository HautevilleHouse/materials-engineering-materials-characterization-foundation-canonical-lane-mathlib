import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationFoundationCanonicalLaneLean

structure DiffusionPackage where
  concentrationField : Type u
  fluxVector : Type v
  diffusionCoefficient : Type w
  ficksFirstLaw : Prop
  ficksSecondLaw : Prop
  steadyStateCondition : Prop

structure DiffusionEvidence (D : DiffusionPackage) where
  ficksFirstLawClosed : D.ficksFirstLaw
  ficksSecondLawClosed : D.ficksSecondLaw
  steadyStateConditionClosed : D.steadyStateCondition

def DiffusionClosed (D : DiffusionPackage) : Prop :=
  D.ficksFirstLaw ∧ D.ficksSecondLaw ∧ D.steadyStateCondition

theorem diffusion_closed_from_evidence (D : DiffusionPackage) (E : DiffusionEvidence D) : DiffusionClosed D := by
  exact And.intro E.ficksFirstLawClosed (And.intro E.ficksSecondLawClosed E.steadyStateConditionClosed)

end MaterialsEngineeringMaterialsCharacterizationFoundationCanonicalLaneLean
end HautevilleHouse
