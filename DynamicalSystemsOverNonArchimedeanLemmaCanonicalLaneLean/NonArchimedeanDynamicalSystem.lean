import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean.NonArchimedeanValuationField

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean

structure NonArchimedeanDynamicalSystem (K : NonArchimedeanValuationField) where
  stateSpace : Type u
  topology : TopologicalSpace stateSpace
  dynamics : stateSpace → stateSpace
  analyticProperty : Prop
  iteratedBehavior : Prop
  stabilityCondition : Prop
  invariantMeasure : Prop
  ergodicProperty : Prop

structure NonArchimedeanDynamicalSystemEvidence {K : NonArchimedeanValuationField} (S : NonArchimedeanDynamicalSystem K) where
  analyticPropertyClosed : S.analyticProperty
  iteratedBehaviorClosed : S.iteratedBehavior
  stabilityConditionClosed : S.stabilityCondition
  invariantMeasureClosed : S.invariantMeasure
  ergodicPropertyClosed : S.ergodicProperty

def NonArchimedeanDynamicalSystemClosed {K : NonArchimedeanValuationField} (S : NonArchimedeanDynamicalSystem K) : Prop :=
  S.analyticProperty ∧ S.iteratedBehavior ∧ S.stabilityCondition ∧ S.invariantMeasure ∧ S.ergodicProperty

theorem non_archimedean_dynamical_system_closed_from_evidence {K : NonArchimedeanValuationField} (S : NonArchimedeanDynamicalSystem K) (E : NonArchimedeanDynamicalSystemEvidence S) : NonArchimedeanDynamicalSystemClosed S := by
  exact And.intro E.analyticPropertyClosed
    (And.intro E.iteratedBehaviorClosed
      (And.intro E.stabilityConditionClosed
        (And.intro E.invariantMeasureClosed E.ergodicPropertyClosed)))

end DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean
end HautevilleHouse