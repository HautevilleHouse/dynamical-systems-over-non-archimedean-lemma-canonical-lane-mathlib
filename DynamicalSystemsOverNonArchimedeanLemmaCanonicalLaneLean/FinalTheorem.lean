import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean.NonArchimedeanGateLemmas

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean

def ConstrainedNonArchimedeanClosure (A : NonArchimedeanAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_non_archimedean_endgame (A : NonArchimedeanAdmissibleClass) :
    ConstrainedNonArchimedeanClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean
end HautevilleHouse
