import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GaussMarkovTheoremCanonicalLaneLean

structure BestLinearUnbiasedEstimatorPackage where
  parameterEstimator : Type u
  linear : Prop
  unbiased : Prop
  minimumVariance : Prop
  linearTerm : linear
  unbiasedTerm : unbiased
  varianceTerm : minimumVariance

structure BLUEEvidence (E : BestLinearUnbiasedEstimatorPackage) where
  linearClosed : E.linear
  unbiasedClosed : E.unbiased
  minimumVarianceClosed : E.minimumVariance

def BLUEClosed (E : BestLinearUnbiasedEstimatorPackage) : Prop :=
  E.linear ∧ E.unbiased ∧ E.minimumVariance

theorem blue_closed_from_evidence (E : BestLinearUnbiasedEstimatorPackage) (Ev : BLUEEvidence E) : BLUEClosed E := by
  exact And.intro Ev.linearClosed (And.intro Ev.unbiasedClosed Ev.minimumVarianceClosed)

end GaussMarkovTheoremCanonicalLaneLean
end HautevilleHouse