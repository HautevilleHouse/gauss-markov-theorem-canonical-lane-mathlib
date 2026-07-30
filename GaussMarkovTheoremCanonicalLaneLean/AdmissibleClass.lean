import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GaussMarkovTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : GaussMarkovAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GaussMarkovWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GaussMarkovTheoremCanonicalLaneLean
end HautevilleHouse