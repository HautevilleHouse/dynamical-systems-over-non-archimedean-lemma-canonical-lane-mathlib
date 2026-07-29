import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean.BerkovichDynamics

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean

structure RepellerAttractorPair (K : NonArchimedeanField) (B : BerkovichSpace K) where
  repeller : B.analytification → Prop
  attractor : B.analytification → Prop
  disjoint : Prop
  dynamicalSeparation : ℝ

def RepellerAttractorClosed {K : NonArchimedeanField} {B : BerkovichSpace K} (R : RepellerAttractorPair K B) : Prop :=
  R.disjoint ∧ R.dynamicalSeparation > 0

theorem fatou_and_julia_partition {K : NonArchimedeanField} {B : BerkovichSpace K} (R : RepellerAttractorPair K B) (hClosed : RepellerAttractorClosed R) :
  ∀ (x : B.analytification), R.repeller x ∨ R.attractor x := by
  sorry

end HautevilleHouse
end DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean