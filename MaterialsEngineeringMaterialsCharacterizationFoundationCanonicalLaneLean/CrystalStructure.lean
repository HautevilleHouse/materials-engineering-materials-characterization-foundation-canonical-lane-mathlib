import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationFoundationCanonicalLaneLean

structure CrystalStructurePackage where
  latticeVectors : Type u
  basisAtoms : Type v
  unitCellVolume : ℝ
  spaceGroup : String
  bravaisLatticeType : String
  symmetryOperations : List (Type → Type)
  latticeVectorsDefined : Prop
  basisPositionsDefined : Prop
  volumeComputed : Prop
  spaceGroupIdentified : Prop
  latticeVectorsDefinedTerm : latticeVectorsDefined
  basisPositionsDefinedTerm : basisPositionsDefined
  volumeComputedTerm : volumeComputed
  spaceGroupIdentifiedTerm : spaceGroupIdentified

structure CrystalStructureEvidence (C : CrystalStructurePackage) where
  latticeVectorsDefinedClosed : C.latticeVectorsDefined
  basisPositionsDefinedClosed : C.basisPositionsDefined
  volumeComputedClosed : C.volumeComputed
  spaceGroupIdentifiedClosed : C.spaceGroupIdentified

def CrystalStructureClosed (C : CrystalStructurePackage) : Prop :=
  C.latticeVectorsDefined ∧ C.basisPositionsDefined ∧ C.volumeComputed ∧ C.spaceGroupIdentified

theorem crystal_structure_closed_from_evidence (C : CrystalStructurePackage) (E : CrystalStructureEvidence C) :
    CrystalStructureClosed C := by
  exact And.intro E.latticeVectorsDefinedClosed (And.intro E.basisPositionsDefinedClosed (And.intro E.volumeComputedClosed E.spaceGroupIdentifiedClosed))

end MaterialsEngineeringMaterialsCharacterizationFoundationCanonicalLaneLean
end HautevilleHouse