import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationFoundationCanonicalLaneLean

structure MaterialCharacterizationFoundationPackage where
  microstructuralAnalysis : Prop
  thermalAnalysis : Prop
  mechanicalTesting : Prop
  compositionalAnalysis : Prop

structure MaterialCharacterizationFoundationEvidence
    (M : MaterialCharacterizationFoundationPackage) where
  microstructuralAnalysisClosed : M.microstructuralAnalysis
  thermalAnalysisClosed : M.thermalAnalysis
  mechanicalTestingClosed : M.mechanicalTesting
  compositionalAnalysisClosed : M.compositionalAnalysis

def MaterialCharacterizationFoundationClosed
    (M : MaterialCharacterizationFoundationPackage) : Prop :=
  M.microstructuralAnalysis ∧ M.thermalAnalysis ∧ M.mechanicalTesting ∧ M.compositionalAnalysis

theorem material_characterization_foundation_closed_from_evidence
    (M : MaterialCharacterizationFoundationPackage)
    (E : MaterialCharacterizationFoundationEvidence M) :
    MaterialCharacterizationFoundationClosed M := by
  exact And.intro E.microstructuralAnalysisClosed
    (And.intro E.thermalAnalysisClosed
      (And.intro E.mechanicalTestingClosed E.compositionalAnalysisClosed))

end MaterialsEngineeringMaterialsCharacterizationFoundationCanonicalLaneLean
end HautevilleHouse