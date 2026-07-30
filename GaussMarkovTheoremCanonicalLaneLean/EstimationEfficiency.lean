import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GaussMarkovTheoremCanonicalLaneLean

structure EfficiencyPackage where
  linearEstimatorClass : Type u
  unbiasedCondition : Prop
  varianceComparison : Prop

def GaussMarkovEfficiencyClosed (E : EfficiencyPackage) : Prop :=
  E.unbiasedCondition ∧ E.varianceComparison

end GaussMarkovTheoremCanonicalLaneLean
end HautevilleHouse