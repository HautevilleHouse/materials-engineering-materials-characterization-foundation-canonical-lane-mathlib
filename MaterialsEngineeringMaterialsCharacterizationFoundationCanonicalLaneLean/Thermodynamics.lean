import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationFoundationCanonicalLaneLean

structure ThermodynamicsPackage where
  gibbsFreeEnergy : Type u
  entropy : Type v
  enthalpy : Type w
  phaseStability : Prop
  chemicalPotential : Prop
  clausiusClapeyron : Prop

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  phaseStabilityClosed : T.phaseStability
  chemicalPotentialClosed : T.chemicalPotential
  clausiusClapeyronClosed : T.clausiusClapeyron

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.phaseStability ∧ T.chemicalPotential ∧ T.clausiusClapeyron

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage) (E : ThermodynamicsEvidence T) : ThermodynamicsClosed T := by
  exact And.intro E.phaseStabilityClosed (And.intro E.chemicalPotentialClosed E.clausiusClapeyronClosed)

end MaterialsEngineeringMaterialsCharacterizationFoundationCanonicalLaneLean
end HautevilleHouse
