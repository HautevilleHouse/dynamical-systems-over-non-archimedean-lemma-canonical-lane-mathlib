import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean.NonArchimedeanAdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean

def bridgeClosed (A : NonArchimedeanAdmissibleClass) : Prop :=
  NonArchimedeanWitnessClosed A.object

theorem bridge_from_admissible_class (A : NonArchimedeanAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean
end HautevilleHouse
