import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean.NonArchimedeanDynamicalCore

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean

structure BerkovichSpace (K : NonArchimedeanField) where
  analytification : Type u
  topology : TopologicalSpace analytification
  structureSheaf : Type v
  embeddingFromClassical : AdmissibleDynamicalSystem K → analytification

structure BerkovichDynamicalSystem (K : NonArchimedeanField) (B : BerkovichSpace K) where
  map : B.analytification → B.analytification
  continuous : Prop
  preservesStructure : Prop
  degree : ℕ

def BerkovichDynamicsClosed {K : NonArchimedeanField} {B : BerkovichSpace K} (D : BerkovichDynamicalSystem K B) : Prop :=
  D.continuous ∧ D.preservesStructure ∧ D.degree > 1

end HautevilleHouse
end DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean