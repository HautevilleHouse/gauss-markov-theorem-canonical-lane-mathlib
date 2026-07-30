import HautevilleHouse.GaussMarkovTheoremCanonicalLaneLean.GaussMarkovObjects

namespace HautevilleHouse
namespace GaussMarkovTheoremCanonicalLaneLean

structure LinearModelAssumptionsPackage where
  designMatrixFullRank : Prop
  expectationZero : Prop
  homoscedasticity : Prop
  uncorrelatedErrors : Prop

structure LinearModelAssumptionsEvidence (P : LinearModelAssumptionsPackage) where
  designMatrixFullRankClosed : P.designMatrixFullRank
  expectationZeroClosed : P.expectationZero
  homoscedasticityClosed : P.homoscedasticity
  uncorrelatedErrorsClosed : P.uncorrelatedErrors

def LinearModelAssumptionsClosed (P : LinearModelAssumptionsPackage) : Prop :=
  P.designMatrixFullRank ∧ P.expectationZero ∧ P.homoscedasticity ∧ P.uncorrelatedErrors

theorem linear_model_assumptions_closed_from_evidence
    (P : LinearModelAssumptionsPackage) (E : LinearModelAssumptionsEvidence P) :
    LinearModelAssumptionsClosed P := by
  exact And.intro E.designMatrixFullRankClosed
    (And.intro E.expectationZeroClosed
      (And.intro E.homoscedasticityClosed E.uncorrelatedErrorsClosed))

end GaussMarkovTheoremCanonicalLaneLean
end HautevilleHouse
