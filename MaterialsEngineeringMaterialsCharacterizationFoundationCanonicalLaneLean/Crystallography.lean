import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationFoundationCanonicalLaneLean

structure CrystallographyPackage where
  bravaisLattice : Type u
  unitCell : Type v
  symmetryGroup : Type w
  millerIndices : Type x
  latticeSpacing : Prop
  braggCondition : Prop
  crystalSystemClassification : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  latticeSpacingClosed : C.latticeSpacing
  braggConditionClosed : C.braggCondition
  crystalSystemClassificationClosed : C.crystalSystemClassification

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.latticeSpacing ∧ C.braggCondition ∧ C.crystalSystemClassification

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.latticeSpacingClosed (And.intro E.braggConditionClosed E.crystalSystemClassificationClosed)

end MaterialsEngineeringMaterialsCharacterizationFoundationCanonicalLaneLean
end HautevilleHouse
