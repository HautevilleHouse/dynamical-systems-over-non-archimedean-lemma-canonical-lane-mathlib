import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean

structure NonArchimedeanJuliaSetPackage where
  dynamics : DynamicsOverBerkovichPackage
  juliaSet : Set dynamics.space.analyticSpace
  repellingPeriodicPointsDense : Prop
  chaosProperties : Prop
  boundaryProperties : Prop

structure NonArchimedeanJuliaSetEvidence (J : NonArchimedeanJuliaSetPackage) where
  repellingPeriodicPointsDenseClosed : J.repellingPeriodicPointsDense
  chaosPropertiesClosed : J.chaosProperties
  boundaryPropertiesClosed : J.boundaryProperties

def NonArchimedeanJuliaSetClosed (J : NonArchimedeanJuliaSetPackage) : Prop :=
  J.repellingPeriodicPointsDense ∧ J.chaosProperties ∧ J.boundaryProperties

theorem non_archimedean_julia_set_closed_from_evidence
    (J : NonArchimedeanJuliaSetPackage) (E : NonArchimedeanJuliaSetEvidence J) :
    NonArchimedeanJuliaSetClosed J := by
  exact And.intro E.repellingPeriodicPointsDenseClosed
    (And.intro E.chaosPropertiesClosed E.boundaryPropertiesClosed)

end DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean
end HautevilleHouse