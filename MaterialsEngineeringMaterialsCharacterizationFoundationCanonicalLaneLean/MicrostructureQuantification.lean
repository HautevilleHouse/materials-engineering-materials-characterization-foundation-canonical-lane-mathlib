import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationFoundationCanonicalLaneLean

structure MicrostructureMetric where
  grainSize : ℝ
  phaseFraction : ℝ
  orientationDistribution : Type u
  metricDefined : Prop

def microstructureMetricClosed (M : MicrostructureMetric) : Prop :=
  M.metricDefined ∧ M.grainSize > 0 ∧ M.phaseFraction ≥ 0 ∧ M.phaseFraction ≤ 1

end MaterialsEngineeringMaterialsCharacterizationFoundationCanonicalLaneLean
end HautevilleHouse