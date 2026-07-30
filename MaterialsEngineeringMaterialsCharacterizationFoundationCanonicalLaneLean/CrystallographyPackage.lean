import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationFoundationCanonicalLaneLean

structure CrystalLattice (d : ℕ) where
  vectors : Fin d → EuclideanSpace ℝ (Fin d)
  determinantLattice : ℝ
  volume : ℝ

definition primitiveCellVolume (L : CrystalLattice 3) : Prop :=
  L.volume > 0

structure BravaisLattice (d : ℕ) extends CrystalLattice d where
  symmetryGroup : Set (EuclideanSpace ℝ (Fin d) →L[ℝ] EuclideanSpace ℝ (Fin d))
  closedUnderInversion : ∀ f ∈ symmetryGroup, -f ∈ symmetryGroup

structure CrystallographicPointGroup (d : ℕ) where
  operations : Set (EuclideanSpace ℝ (Fin d) →L[ℝ] EuclideanSpace ℝ (Fin d))
  finite : Fintype operations

structure SpaceGroup (d : ℕ) where
  lattice : BravaisLattice d
  pointGroup : CrystallographicPointGroup d
  translationsCompatible : Prop

structure CrystallographyPackage where
  lattice : BravaisLattice 3
  spaceGroup : SpaceGroup 3
  braggCondition : Prop
  structureFactor : Type u
  experimentalDiffractionPattern : Prop
  closePacking : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  braggConditionClosed : C.braggCondition
  closePackingClosed : C.closePacking

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.braggCondition ∧ C.closePacking

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) :
    CrystallographyClosed C := by
  exact And.intro E.braggConditionClosed E.closePackingClosed

end MaterialsEngineeringMaterialsCharacterizationFoundationCanonicalLaneLean
end HautevilleHouse