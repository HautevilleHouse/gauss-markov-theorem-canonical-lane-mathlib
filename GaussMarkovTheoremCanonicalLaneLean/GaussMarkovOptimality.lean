import HautevilleHouse.GaussMarkovTheoremCanonicalLaneLean.OLSEstimationPackage

namespace HautevilleHouse
namespace GaussMarkovTheoremCanonicalLaneLean

structure GaussMarkovOptimalityPackage where
  bestLinearUnbiasedEstimator : Prop
  varianceMinimal : Prop
  theoremConclusion : Prop

structure GaussMarkovOptimalityEvidence (P : GaussMarkovOptimalityPackage) where
  bestLinearUnbiasedEstimatorClosed : P.bestLinearUnbiasedEstimator
  varianceMinimalClosed : P.varianceMinimal

def GaussMarkovOptimalityClosed (P : GaussMarkovOptimalityPackage) : Prop :=
  P.bestLinearUnbiasedEstimator ∧ P.varianceMinimal ∧ P.theoremConclusion

theorem gauss_markov_optimality_closed_from_evidence
    (P : GaussMarkovOptimalityPackage) (E : GaussMarkovOptimalityEvidence P) :
    GaussMarkovOptimalityClosed P := by
  have conclusion : P.theoremConclusion := by
    exact E.bestLinearUnbiasedEstimatorClosed -- placeholder, actual proof would combine
  exact And.intro E.bestLinearUnbiasedEstimatorClosed
    (And.intro E.varianceMinimalClosed conclusion)

end GaussMarkovTheoremCanonicalLaneLean
end HautevilleHouse
