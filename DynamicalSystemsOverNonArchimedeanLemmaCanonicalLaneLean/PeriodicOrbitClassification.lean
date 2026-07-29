import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean

structure PeriodicOrbitClassification {B : BerkovichSpace} (DS : DynamicalSystem B) where
  periodicPoints : Set B.carrier
  minimalPeriod : B.carrier → ℕ
  orbitType : Prop
  density : Prop
  classificationComplete : Prop

structure PeriodicOrbitEvidence {B : BerkovichSpace} {DS : DynamicalSystem B} (POC : PeriodicOrbitClassification DS) where
  orbitTypeClosed : POC.orbitType
  densityClosed : POC.density
  classificationCompleteClosed : POC.classificationComplete

def PeriodicOrbitClosed {B : BerkovichSpace} {DS : DynamicalSystem B} (POC : PeriodicOrbitClassification DS) : Prop :=
  POC.orbitType ∧ POC.density ∧ POC.classificationComplete

theorem periodic_orbit_closed_from_evidence {B : BerkovichSpace} {DS : DynamicalSystem B} (POC : PeriodicOrbitClassification DS)
    (E : PeriodicOrbitEvidence POC) : PeriodicOrbitClosed POC := by
  exact And.intro E.orbitTypeClosed (And.intro E.densityClosed E.classificationCompleteClosed)

end DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean
end HautevilleHouse
