import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GaussMarkovTheoremCanonicalLaneLean

structure VariancePackage where
  errorCovariance : Type u
  scalarMultiple : Prop
  homoskedasticVerified : Prop

def HomoskedasticClosed (V : VariancePackage) : Prop :=
  V.scalarMultiple ∧ V.homoskedasticVerified

end GaussMarkovTheoremCanonicalLaneLean
end HautevilleHouse