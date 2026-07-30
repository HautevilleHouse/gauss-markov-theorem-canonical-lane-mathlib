import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GaussMarkovTheoremCanonicalLaneLean

structure VarianceEstimationPackage where
  varianceEstimator : Type u
  unbiasedEstimate : Prop
  consistency : Prop
  efficiency : Prop
  unbiasedEstimateTerm : unbiasedEstimate
  consistencyTerm : consistency
  efficiencyTerm : efficiency

structure VarianceEvidence (V : VarianceEstimationPackage) where
  unbiasedEstimateClosed : V.unbiasedEstimate
  consistencyClosed : V.consistency
  efficiencyClosed : V.efficiency

def VarianceClosed (V : VarianceEstimationPackage) : Prop :=
  V.unbiasedEstimate ∧ V.consistency ∧ V.efficiency

theorem variance_closed_from_evidence (V : VarianceEstimationPackage) (E : VarianceEvidence V) : VarianceClosed V := by
  exact And.intro E.unbiasedEstimateClosed (And.intro E.consistencyClosed E.efficiencyClosed)

end GaussMarkovTheoremCanonicalLaneLean
end HautevilleHouse