import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationFoundationCanonicalLaneLean

structure CharacterizationTechnique where
  techniqueName : String
  resolution : ℝ
  depthProbe : ℝ
  signalType : String
  techniqueValid : Prop

def characterizationTechniqueClosed (C : CharacterizationTechnique) : Prop :=
  C.techniqueValid ∧ C.resolution > 0

end MaterialsEngineeringMaterialsCharacterizationFoundationCanonicalLaneLean
end HautevilleHouse