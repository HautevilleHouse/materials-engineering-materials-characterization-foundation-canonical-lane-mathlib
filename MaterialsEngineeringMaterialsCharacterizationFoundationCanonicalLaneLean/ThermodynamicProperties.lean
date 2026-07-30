import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationFoundationCanonicalLaneLean

structure ThermodynamicPropertiesPackage where
  specificHeatCapacity : ℝ
  thermalConductivity : ℝ
  thermalExpansionCoefficient : ℝ
  meltingPoint : ℝ
  gibbsFreeEnergy : ℝ
  entropy : ℝ
  enthalpy : ℝ
  heatCapacityDefined : Prop
  conductivityDefined : Prop
  expansionDefined : Prop
  meltingDefined : Prop
  heatCapacityDefinedTerm : heatCapacityDefined
  conductivityDefinedTerm : conductivityDefined
  expansionDefinedTerm : expansionDefined
  meltingDefinedTerm : meltingDefined

structure ThermodynamicPropertiesEvidence (T : ThermodynamicPropertiesPackage) where
  heatCapacityDefinedClosed : T.heatCapacityDefined
  conductivityDefinedClosed : T.conductivityDefined
  expansionDefinedClosed : T.expansionDefined
  meltingDefinedClosed : T.meltingDefined

def ThermodynamicPropertiesClosed (T : ThermodynamicPropertiesPackage) : Prop :=
  T.heatCapacityDefined ∧ T.conductivityDefined ∧ T.expansionDefined ∧ T.meltingDefined

theorem thermodynamic_properties_closed_from_evidence (T : ThermodynamicPropertiesPackage) (E : ThermodynamicPropertiesEvidence T) :
    ThermodynamicPropertiesClosed T := by
  exact And.intro E.heatCapacityDefinedClosed (And.intro E.conductivityDefinedClosed (And.intro E.expansionDefinedClosed E.meltingDefinedClosed))

end MaterialsEngineeringMaterialsCharacterizationFoundationCanonicalLaneLean
end HautevilleHouse