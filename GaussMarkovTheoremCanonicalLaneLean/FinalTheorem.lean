import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GaussMarkovTheoremCanonicalLaneLean

def ConstrainedGaussMarkovClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_gauss_markov_endgame (A : AdmissibleClass) :
    ConstrainedGaussMarkovClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GaussMarkovTheoremCanonicalLaneLean
end HautevilleHouse