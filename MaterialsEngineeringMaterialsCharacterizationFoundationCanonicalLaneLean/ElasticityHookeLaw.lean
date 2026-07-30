import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationFoundationCanonicalLaneLean

structure HookeLaw where
  stressTensor : Type u
  strainTensor : Type v
  stiffnessTensor : Type w
  linearRelation : Prop

def hookeLawClosed (H : HookeLaw) : Prop :=
  H.linearRelation ∧ H.stiffnessTensor = H.stiffnessTensor

end MaterialsEngineeringMaterialsCharacterizationFoundationCanonicalLaneLean
end HautevilleHouse