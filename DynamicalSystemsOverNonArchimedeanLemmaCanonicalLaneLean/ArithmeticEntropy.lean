import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean

structure ArithmeticEntropyPair (K : NonArchimedeanField) (S : AdmissibleDynamicalSystem K) where
  topologicalEntropy : ℝ
  measureTheoreticEntropy : ℝ
  variationalInequality : topologicalEntropy ≥ measureTheoreticEntropy
  geometricRealization : Prop

def ArithmeticEntropyClosed {K : NonArchimedeanField} {S : AdmissibleDynamicalSystem K} (E : ArithmeticEntropyPair K S) : Prop :=
  E.geometricRealization ∧ E.variationalInequality

theorem entropy_equals_topological_realization {K : NonArchimedeanField} {S : AdmissibleDynamicalSystem K} (E : ArithmeticEntropyPair K S) (hClosed : ArithmeticEntropyClosed E) :
  E.topologicalEntropy = E.measureTheoreticEntropy := by
  sorry

end HautevilleHouse
end DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean