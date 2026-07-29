import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean

structure NonArchimedeanField where
  carrier : Type u
  val : carrier → ℚ
  valuationRing : Prop
  residueField : Type v
  topology : TopologicalSpace carrier
  completion : Type w

def NonArchimedeanFieldClosed (K : NonArchimedeanField) : Prop :=
  K.valuationRing ∧ K.residueField ≠ Empty

structure AdmissibleDynamicalSystem (K : NonArchimedeanField) where
  stateSpace : Type u
  dynamics : stateSpace → stateSpace
  invariantMeasure : Type v
  lyapunovExponents : List ℝ
  entropy : ℝ

def DynamicalAdmissibilityClosed {K : NonArchimedeanField} (S : AdmissibleDynamicalSystem K) : Prop :=
  S.lyapunovExponents ≠ [] ∨ S.entropy > 0

end DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean
end HautevilleHouse