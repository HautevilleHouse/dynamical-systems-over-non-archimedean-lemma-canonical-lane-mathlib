import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean.NonArchimedeanDynamics

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean

structure NonArchimedeanAdmittedObject where
  field : NonArchimedeanField
  system : AffinoidDynamicalSystem field
  attractor : NonArchimedeanAttractor field system
  lemmaStatement : NonArchimedeanLemmaStatement field system attractor
  conclusion : lemmaStatement.attractorIsClosed ∧ lemmaStatement.basinNonempty

structure NonArchimedeanAdmissibleClass extends AdmissibleClass where
  object : NonArchimedeanAdmittedObject
  endpointSatisfied' : object.conclusion
  remainderRecorded' : Prop
  gateWitness' : endpointSatisfied' ∨ remainderRecorded'

def NonArchimedeanWitnessClosed (O : NonArchimedeanAdmittedObject) : Prop :=
  O.conclusion

end DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean
end HautevilleHouse
