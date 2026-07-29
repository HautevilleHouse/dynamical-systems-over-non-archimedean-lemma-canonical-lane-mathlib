import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean.NonArchimedeanBridgeLemmas

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean

def gateClosed (A : NonArchimedeanAdmissibleClass) : Prop :=
  A.endpointSatisfied' ∨ A.remainderRecorded'

theorem gate_from_admissible_class (A : NonArchimedeanAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness'

end DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean
end HautevilleHouse
