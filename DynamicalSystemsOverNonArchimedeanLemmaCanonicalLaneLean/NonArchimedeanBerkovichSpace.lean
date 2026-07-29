import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean.NonArchimedeanValuationField

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean

structure NonArchimedeanBerkovichSpace (K : NonArchimedeanValuationField) where
  analyticSpace : Type u
  topology : TopologicalSpace analyticSpace
  sheafDefined : Prop
  analyticStructure : Prop
  compactness : Prop
  connectedness : Prop

structure NonArchimedeanBerkovichSpaceEvidence {K : NonArchimedeanValuationField} (B : NonArchimedeanBerkovichSpace K) where
  sheafDefinedClosed : B.sheafDefined
  analyticStructureClosed : B.analyticStructure
  compactnessClosed : B.compactness
  connectednessClosed : B.connectedness

def NonArchimedeanBerkovichSpaceClosed {K : NonArchimedeanValuationField} (B : NonArchimedeanBerkovichSpace K) : Prop :=
  B.sheafDefined ∧ B.analyticStructure ∧ B.compactness ∧ B.connectedness

theorem non_archimedean_berkovich_space_closed_from_evidence {K : NonArchimedeanValuationField} (B : NonArchimedeanBerkovichSpace K) (E : NonArchimedeanBerkovichSpaceEvidence B) : NonArchimedeanBerkovichSpaceClosed B := by
  exact And.intro E.sheafDefinedClosed
    (And.intro E.analyticStructureClosed
      (And.intro E.compactnessClosed E.connectednessClosed))

end DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean
end HautevilleHouse