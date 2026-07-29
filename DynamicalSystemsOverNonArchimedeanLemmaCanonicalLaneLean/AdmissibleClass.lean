import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : NonArchimedeanAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NonArchimedeanWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def NonArchimedeanWitnessClosed (O : NonArchimedeanAdmittedObject) : Prop :=
  O.complete ∧ O.sphericallyComplete

end DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean
end HautevilleHouse
