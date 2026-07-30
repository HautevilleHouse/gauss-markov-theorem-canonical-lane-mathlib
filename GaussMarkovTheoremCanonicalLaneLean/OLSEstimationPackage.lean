import HautevilleHouse.GaussMarkovTheoremCanonicalLaneLean.GaussMarkovAssumptions

namespace HautevilleHouse
namespace GaussMarkovTheoremCanonicalLaneLean

structure OLSAdmissibilityPackage where
  estimatorUnbiased : Prop
  estimatorLinear : Prop
  varianceCovarianceMatrix : Prop

structure OLSEstimatorEvidence (P : OLSAdmissibilityPackage) where
  estimatorUnbiasedClosed : P.estimatorUnbiased
  estimatorLinearClosed : P.estimatorLinear
  varianceCovarianceMatrixClosed : P.varianceCovarianceMatrix

def OLSAdmissibilityClosed (P : OLSAdmissibilityPackage) : Prop :=
  P.estimatorUnbiased ∧ P.estimatorLinear ∧ P.varianceCovarianceMatrix

theorem ols_admissibility_closed_from_evidence
    (P : OLSAdmissibilityPackage) (E : OLSEstimatorEvidence P) :
    OLSAdmissibilityClosed P := by
  exact And.intro E.estimatorUnbiasedClosed
    (And.intro E.estimatorLinearClosed E.varianceCovarianceMatrixClosed)

end GaussMarkovTheoremCanonicalLaneLean
end HautevilleHouse
