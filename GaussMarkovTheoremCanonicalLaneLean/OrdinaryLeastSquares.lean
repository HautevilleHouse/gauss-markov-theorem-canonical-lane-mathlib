import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GaussMarkovTheoremCanonicalLaneLean

structure OrdinaryLeastSquaresPackage where
  estimator : Type u
  formulaDerived : Prop
  closedForm : Prop
  unbiasedUnderAssumptions : Prop
  minimumVarianceProperty : Prop
  formulaDerivedTerm : formulaDerived
  closedFormTerm : closedForm
  unbiasedUnderAssumptionsTerm : unbiasedUnderAssumptions
  minimumVariancePropertyTerm : minimumVarianceProperty

structure OLSEvidence (O : OrdinaryLeastSquaresPackage) where
  formulaDerivedClosed : O.formulaDerived
  closedFormClosed : O.closedForm
  unbiasedUnderAssumptionsClosed : O.unbiasedUnderAssumptions
  minimumVariancePropertyClosed : O.minimumVarianceProperty

def OLSClosed (O : OrdinaryLeastSquaresPackage) : Prop :=
  O.formulaDerived ∧ O.closedForm ∧ O.unbiasedUnderAssumptions ∧ O.minimumVarianceProperty

theorem ols_closed_from_evidence (O : OrdinaryLeastSquaresPackage) (E : OLSEvidence O) : OLSClosed O := by
  exact And.intro E.formulaDerivedClosed (And.intro E.closedFormClosed (And.intro E.unbiasedUnderAssumptionsClosed E.minimumVariancePropertyClosed))

end GaussMarkovTheoremCanonicalLaneLean
end HautevilleHouse