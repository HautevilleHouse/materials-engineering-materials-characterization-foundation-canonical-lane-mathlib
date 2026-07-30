import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationFoundationCanonicalLaneLean

structure GibbsPhaseRule where
  degreesOfFreedom : ℕ
  numComponents : ℕ
  numPhases : ℕ
  ruleEquation : Prop

def gibbsPhaseRuleClosed (G : GibbsPhaseRule) : Prop :=
  G.ruleEquation ∧ G.degreesOfFreedom = G.numComponents - G.numPhases + 2

end MaterialsEngineeringMaterialsCharacterizationFoundationCanonicalLaneLean
end HautevilleHouse