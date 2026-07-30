import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GaussMarkovTheoremCanonicalLaneLean

structure GaussMarkovAdmittedObject where
  model : Type
  observations : Nat
  parameters : Nat
  linearModelAssumptions : Prop
  assumptionConclusions : Prop
  conclusion : assumptionConclusions

def GaussMarkovWitnessClosed (O : GaussMarkovAdmittedObject) : Prop :=
  O.assumptionConclusions

def AdmissibleClass where
  object : GaussMarkovAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GaussMarkovWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GaussMarkovTheoremCanonicalLaneLean
end HautevilleHouse
