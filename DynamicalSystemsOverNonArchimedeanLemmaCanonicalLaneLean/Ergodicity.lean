import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean

structure ErgodicityPackage (X : NonArchimedeanSpace) (φ : DynamicalSystem X) where
  invariantMeasureExists : Prop
  ergodicDecomposition : Prop
  mixingProperties : Prop

structure ErgodicityEvidence (X : NonArchimedeanSpace) (φ : DynamicalSystem X) (E : ErgodicityPackage X φ) where
  invariantMeasureExistsClosed : E.invariantMeasureExists
  ergodicDecompositionClosed : E.ergodicDecomposition
  mixingPropertiesClosed : E.mixingProperties

def ErgodicityClosed (X : NonArchimedeanSpace) (φ : DynamicalSystem X) (E : ErgodicityPackage X φ) : Prop :=
  E.invariantMeasureExists ∧ E.ergodicDecomposition ∧ E.mixingProperties

theorem ergodicity_closed_from_evidence (X : NonArchimedeanSpace) (φ : DynamicalSystem X) (E : ErgodicityPackage X φ) (ev : ErgodicityEvidence X φ E) : ErgodicityClosed X φ E := by
  exact And.intro ev.invariantMeasureExistsClosed (And.intro ev.ergodicDecompositionClosed ev.mixingPropertiesClosed)

end DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean
end HautevilleHouse
