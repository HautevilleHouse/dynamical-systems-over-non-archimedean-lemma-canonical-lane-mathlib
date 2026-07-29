import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean

structure NonArchimedeanField where
  carrier : Type u
  norm : carrier → ℝ
  ultrametricInequality : Prop
  nonTrivial : Prop
  normZeroOnlyAtZero : Prop

structure NonArchimedeanSpace where
  field : NonArchimedeanField
  topology : TopologicalSpace field.carrier

structure NonArchimedeanAdmittedObject where
  space : NonArchimedeanSpace
  complete : Prop
  sphericallyComplete : Prop
  conclusion : complete ∧ sphericallyComplete

end DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean
end HautevilleHouse
