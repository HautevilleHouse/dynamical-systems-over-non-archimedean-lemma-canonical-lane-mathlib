import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean.NonArchimedeanDynamicalSystem

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean

structure NonArchimedeanIteratedFunctionSystem (K : NonArchimedeanValuationField) where
  stateSpace : NonArchimedeanBerkovichSpace K
  maps : List (stateSpace.analyticSpace → stateSpace.analyticSpace)
  contractionFactor : ℝ
  codingSpace : Type u
  shiftInvariant : Prop
  topologicalEntropy : Prop
  equilibriumMeasure : Prop

structure NonArchimedeanIteratedFunctionSystemEvidence {K : NonArchimedeanValuationField} (I : NonArchimedeanIteratedFunctionSystem K) where
  shiftInvariantClosed : I.shiftInvariant
  topologicalEntropyClosed : I.topologicalEntropy
  equilibriumMeasureClosed : I.equilibriumMeasure

def NonArchimedeanIteratedFunctionSystemClosed {K : NonArchimedeanValuationField} (I : NonArchimedeanIteratedFunctionSystem K) : Prop :=
  I.shiftInvariant ∧ I.topologicalEntropy ∧ I.equilibriumMeasure

theorem non_archimedean_iterated_function_system_closed_from_evidence {K : NonArchimedeanValuationField} (I : NonArchimedeanIteratedFunctionSystem K) (E : NonArchimedeanIteratedFunctionSystemEvidence I) : NonArchimedeanIteratedFunctionSystemClosed I := by
  exact And.intro E.shiftInvariantClosed
    (And.intro E.topologicalEntropyClosed E.equilibriumMeasureClosed)

end DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean
end HautevilleHouse