import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean

structure NonArchimedeanLemma {B : BerkovichSpace} (DS : DynamicalSystem B) where
  statement : Prop
  proof : Prop
  applicationToEquidistribution : Prop
  connectionToPeriodicOrbits : Prop

structure NonArchimedeanLemmaEvidence {B : BerkovichSpace} {DS : DynamicalSystem B} (NL : NonArchimedeanLemma DS) where
  statementClosed : NL.statement
  proofClosed : NL.proof
  applicationToEquidistributionClosed : NL.applicationToEquidistribution
  connectionToPeriodicOrbitsClosed : NL.connectionToPeriodicOrbits

def NonArchimedeanLemmaClosed {B : BerkovichSpace} {DS : DynamicalSystem B} (NL : NonArchimedeanLemma DS) : Prop :=
  NL.statement ∧ NL.proof ∧ NL.applicationToEquidistribution ∧ NL.connectionToPeriodicOrbits

theorem non_archimedean_lemma_closed_from_evidence {B : BerkovichSpace} {DS : DynamicalSystem B} (NL : NonArchimedeanLemma DS)
    (E : NonArchimedeanLemmaEvidence NL) : NonArchimedeanLemmaClosed NL := by
  exact And.intro E.statementClosed
    (And.intro E.proofClosed
      (And.intro E.applicationToEquidistributionClosed E.connectionToPeriodicOrbitsClosed))

end DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean
end HautevilleHouse
