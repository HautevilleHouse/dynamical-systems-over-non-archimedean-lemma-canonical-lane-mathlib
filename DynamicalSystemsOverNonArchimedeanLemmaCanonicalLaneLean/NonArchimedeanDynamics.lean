import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean

structure NonArchimedeanField where
  carrier : Type u
  val : carrier → ℝ
  isUltrametric : ∀ x y : carrier, val (x - y) ≤ max (val x) (val y)
  isNonTrivial : ∃ x : carrier, val x ≠ 0 ∧ val x ≠ 1
  isComplete : Prop

structure AffinoidDynamicalSystem (K : NonArchimedeanField) where
  stateSpace : Type v
  transitionMap : stateSpace → stateSpace
  analytic : Prop
  bounded : Prop

structure NonArchimedeanAttractor (K : NonArchimedeanField) (S : AffinoidDynamicalSystem K) where
  attractorSet : Set S.stateSpace
  forwardInvariant : ∀ x ∈ attractorSet, S.transitionMap x ∈ attractorSet
  basinOfAttraction : Prop
  basinOpen : Prop

structure NonArchimedeanLemmaStatement (K : NonArchimedeanField) (S : AffinoidDynamicalSystem K) (A : NonArchimedeanAttractor K S) where
  attractorIsClosed : IsClosed A.attractorSet
  basinNonempty : Nonempty A.basinOfAttraction
  convergenceRate : ℕ → ℝ

end DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean
end HautevilleHouse
