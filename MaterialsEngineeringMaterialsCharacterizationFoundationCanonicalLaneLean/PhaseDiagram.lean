import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationFoundationCanonicalLaneLean

structure PhaseDiagramPackage where
  components : List String
  phases : List String
  temperatureRange : ℝ × ℝ
  pressureRange : ℝ × ℝ
  phaseBoundaries : List (ℝ → ℝ)
  eutecticPoint : Option (ℝ × ℝ)
  phaseBoundariesDefined : Prop
  eutecticIdentified : Prop
  gibbsFreeEnergiesComputed : Prop
  phaseBoundariesDefinedTerm : phaseBoundariesDefined
  eutecticIdentifiedTerm : eutecticIdentified
  gibbsFreeEnergiesComputedTerm : gibbsFreeEnergiesComputed

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseBoundariesDefinedClosed : P.phaseBoundariesDefined
  eutecticIdentifiedClosed : P.eutecticIdentified
  gibbsFreeEnergiesComputedClosed : P.gibbsFreeEnergiesComputed

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseBoundariesDefined ∧ P.eutecticIdentified ∧ P.gibbsFreeEnergiesComputed

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.phaseBoundariesDefinedClosed (And.intro E.eutecticIdentifiedClosed E.gibbsFreeEnergiesComputedClosed)

end MaterialsEngineeringMaterialsCharacterizationFoundationCanonicalLaneLean
end HautevilleHouse