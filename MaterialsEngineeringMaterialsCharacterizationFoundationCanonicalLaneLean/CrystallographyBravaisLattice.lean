import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationFoundationCanonicalLaneLean

structure BravaisLattice where
  latticeVectors : Type u
  unitCellVolume : Prop
  reciprocalVectors : Type v
  bravaisClass : String

def bravaisLatticeClosed (L : BravaisLattice) : Prop :=
  L.unitCellVolume ∧ L.reciprocalVectors = L.reciprocalVectors

end MaterialsEngineeringMaterialsCharacterizationFoundationCanonicalLaneLean
end HautevilleHouse