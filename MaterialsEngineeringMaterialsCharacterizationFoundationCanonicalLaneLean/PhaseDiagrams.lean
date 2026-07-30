import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationFoundationCanonicalLaneLean

structure PhaseDiagramsPackage where
  phaseBoundaries : Prop
  gibbsPhaseRule : Prop
  leverRule : Prop
  eutecticPoint : Prop

structure PhaseDiagramsEvidence (P : PhaseDiagramsPackage) where
  phaseBoundariesClosed : P.phaseBoundaries
  gibbsPhaseRuleClosed : P.gibbsPhaseRule
  leverRuleClosed : P.leverRule
  eutecticPointClosed : P.eutecticPoint

def PhaseDiagramsClosed (P : PhaseDiagramsPackage) : Prop :=
  P.phaseBoundaries ∧ P.gibbsPhaseRule ∧ P.leverRule ∧ P.eutecticPoint

theorem phase_diagrams_closed_from_evidence (P : PhaseDiagramsPackage)
    (E : PhaseDiagramsEvidence P) : PhaseDiagramsClosed P := by
  exact And.intro E.phaseBoundariesClosed
    (And.intro E.gibbsPhaseRuleClosed
      (And.intro E.leverRuleClosed E.eutecticPointClosed))

end MaterialsEngineeringMaterialsCharacterizationFoundationCanonicalLaneLean
end HautevilleHouse