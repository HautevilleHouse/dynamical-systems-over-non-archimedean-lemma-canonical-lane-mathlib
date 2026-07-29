import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean

structure NonArchimedeanValuationField where
  carrier : Type u
  norm : carrier → ℝ
  nonArchimedeanInequality : ∀ (x y : carrier), norm (x + y) ≤ max (norm x) (norm y)
  normZero : norm 0 = 0
  normOne : norm 1 = 1
  normMultiplicative : ∀ (x y : carrier), norm (x * y) = norm x * norm y
  normNonZero : ∀ (x : carrier), x ≠ 0 → norm x ≠ 0
  normCompleteness : Prop

structure NonArchimedeanValuationFieldEvidence (K : NonArchimedeanValuationField) where
  nonArchimedeanInequalityClosed : K.nonArchimedeanInequality
  normZeroClosed : K.normZero
  normOneClosed : K.normOne
  normMultiplicativeClosed : K.normMultiplicative
  normNonZeroClosed : K.normNonZero
  normCompletenessClosed : K.normCompleteness

def NonArchimedeanValuationFieldClosed (K : NonArchimedeanValuationField) : Prop :=
  K.nonArchimedeanInequality ∧ K.normZero ∧ K.normOne ∧ K.normMultiplicative ∧ K.normNonZero ∧ K.normCompleteness

theorem non_archimedean_valuation_field_closed_from_evidence (K : NonArchimedeanValuationField) (E : NonArchimedeanValuationFieldEvidence K) : NonArchimedeanValuationFieldClosed K := by
  exact And.intro E.nonArchimedeanInequalityClosed
    (And.intro E.normZeroClosed
      (And.intro E.normOneClosed
        (And.intro E.normMultiplicativeClosed
          (And.intro E.normNonZeroClosed E.normCompletenessClosed))))

end DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean
end HautevilleHouse