import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean.NonArchimedeanDynamicalCore

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean

structure PotentialWellDecomposition (K : NonArchimedeanField) (S : AdmissibleDynamicalSystem K) where
  wells : List (S.stateSpace → ℝ)
  transitionRates : List ℝ
  invariant : Prop

def PotentialWellClosed {K : NonArchimedeanField} {S : AdmissibleDynamicalSystem K} (P : PotentialWellDecomposition K S) : Prop :=
  P.invariant ∧ P.wells ≠ []

theorem wells_cover_state_space {K : NonArchimedeanField} {S : AdmissibleDynamicalSystem K} (P : PotentialWellDecomposition K S) (hClosed : PotentialWellClosed P) :
  ∀ (x : S.stateSpace), ∃ (w : S.stateSpace → ℝ), w ∈ P.wells ∧ w x ≥ 0 := by
  sorry

end HautevilleHouse
end DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean