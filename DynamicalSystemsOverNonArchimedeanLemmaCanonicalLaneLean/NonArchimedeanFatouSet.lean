import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean

structure NonArchimedeanFatouSetPackage where
  dynamics : DynamicsOverBerkovichPackage
  fatouSet : Set dynamics.space.analyticSpace
  normalityOnFatou : Prop
  equicontinuity : Prop
  components : Prop

structure NonArchimedeanFatouSetEvidence (F : NonArchimedeanFatouSetPackage) where
  normalityOnFatouClosed : F.normalityOnFatou
  equicontinuityClosed : F.equicontinuity
  componentsClosed : F.components

def NonArchimedeanFatouSetClosed (F : NonArchimedeanFatouSetPackage) : Prop :=
  F.normalityOnFatou ∧ F.equicontinuity ∧ F.components

theorem non_archimedean_fatou_set_closed_from_evidence
    (F : NonArchimedeanFatouSetPackage) (E : NonArchimedeanFatouSetEvidence F) :
    NonArchimedeanFatouSetClosed F := by
  exact And.intro E.normalityOnFatouClosed
    (And.intro E.equicontinuityClosed E.componentsClosed)

end DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean
end HautevilleHouse