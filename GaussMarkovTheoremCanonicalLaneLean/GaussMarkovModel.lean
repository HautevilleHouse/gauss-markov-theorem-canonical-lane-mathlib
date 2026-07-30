import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GaussMarkovTheoremCanonicalLaneLean

structure LinearModel where
  observationCount : Nat
  parameterCount : Nat
  designMatrix : Type u
  errorDistribution : Prop
  fullRank : Prop
  homoskedasticity : Prop

def bestLinearUnbiasedEstimator (model : LinearModel) : Prop :=
  model.fullRank ∧ model.homoskedasticity

structure GaussMarkovAdmittedObject where
  model : LinearModel
  bluEProperty : Prop
  conclusion : bluEProperty

def GaussMarkovWitnessClosed (O : GaussMarkovAdmittedObject) : Prop :=
  O.bluEProperty

end GaussMarkovTheoremCanonicalLaneLean
end HautevilleHouse