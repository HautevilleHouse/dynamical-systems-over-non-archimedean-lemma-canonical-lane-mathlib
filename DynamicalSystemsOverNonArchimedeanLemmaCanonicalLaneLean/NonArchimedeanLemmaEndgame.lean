import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean

def NonArchimedeanDynamicalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem non_archimedean_dynamical_endgame (A : AdmissibleClass) : NonArchimedeanDynamicalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean
end HautevilleHouse