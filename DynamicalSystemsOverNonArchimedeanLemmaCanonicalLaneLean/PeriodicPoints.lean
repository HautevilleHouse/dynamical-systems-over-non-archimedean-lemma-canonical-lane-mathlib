import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean

structure PeriodicPointAnalysis (X : NonArchimedeanSpace) (φ : DynamicalSystem X) where
  periodicPointsDense : Prop
  shadowingProperty : Prop
  limitSetClassification : Prop

structure PeriodicPointEvidence (X : NonArchimedeanSpace) (φ : DynamicalSystem X) (P : PeriodicPointAnalysis X φ) where
  periodicPointsDenseClosed : P.periodicPointsDense
  shadowingPropertyClosed : P.shadowingProperty
  limitSetClassificationClosed : P.limitSetClassification

def PeriodicPointClosed (X : NonArchimedeanSpace) (φ : DynamicalSystem X) (P : PeriodicPointAnalysis X φ) : Prop :=
  P.periodicPointsDense ∧ P.shadowingProperty ∧ P.limitSetClassification

theorem periodic_point_closed_from_evidence (X : NonArchimedeanSpace) (φ : DynamicalSystem X) (P : PeriodicPointAnalysis X φ) (ev : PeriodicPointEvidence X φ P) : PeriodicPointClosed X φ P := by
  exact And.intro ev.periodicPointsDenseClosed (And.intro ev.shadowingPropertyClosed ev.limitSetClassificationClosed)

end DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean
end HautevilleHouse
