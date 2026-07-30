import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GaussMarkovTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GaussMarkovWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GaussMarkovTheoremCanonicalLaneLean
end HautevilleHouse