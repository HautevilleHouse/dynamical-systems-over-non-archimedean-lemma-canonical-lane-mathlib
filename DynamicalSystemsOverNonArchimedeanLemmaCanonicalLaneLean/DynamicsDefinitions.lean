import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean

structure DynamicalSystem (X : NonArchimedeanSpace) where
  time : Type u
  transition : time → X.space.carrier → X.space.carrier
  identity_at_zero : transition 0 = id
  semigroup_law : ∀ t s x, transition (t + s) x = transition t (transition s x)

structure InvariantMeasure (X : NonArchimedeanSpace) (φ : DynamicalSystem X) where
  measure : Set X.space.carrier → ℝ≥0
  invariance : ∀ t A, measure A = measure (φ.transition t '' A)

end DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean
end HautevilleHouse
