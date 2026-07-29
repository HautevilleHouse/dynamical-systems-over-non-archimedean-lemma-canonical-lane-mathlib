import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean

structure NonArchimedeanValuationPackage where
  field : Type u
  valuation : field → ℚ
  nonArchimedeanProperty : Prop
  residueField : Type v
  residueFieldClosed : Prop

structure NonArchimedeanValuationEvidence (V : NonArchimedeanValuationPackage) where
  nonArchimedeanPropertyClosed : V.nonArchimedeanProperty
  residueFieldClosedClosed : V.residueFieldClosed

def NonArchimedeanValuationClosed (V : NonArchimedeanValuationPackage) : Prop :=
  V.nonArchimedeanProperty ∧ V.residueFieldClosed

theorem non_archimedean_valuation_closed_from_evidence
    (V : NonArchimedeanValuationPackage) (E : NonArchimedeanValuationEvidence V) :
    NonArchimedeanValuationClosed V := by
  exact And.intro E.nonArchimedeanPropertyClosed E.residueFieldClosedClosed

end DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean
end HautevilleHouse