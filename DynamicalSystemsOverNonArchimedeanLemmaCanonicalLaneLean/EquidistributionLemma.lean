import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean

structure EquidistributionLemma {B : BerkovichSpace} (DS : DynamicalSystem B) where
  measure : Type u
  invariantMeasure : Prop
  equidistribution : Prop
  rateOfConvergence : Prop
  quantitativeBound : Prop

structure EquidistributionEvidence {B : BerkovichSpace} {DS : DynamicalSystem B} (EL : EquidistributionLemma DS) where
  invariantMeasureClosed : EL.invariantMeasure
  equidistributionClosed : EL.equidistribution
  rateOfConvergenceClosed : EL.rateOfConvergence
  quantitativeBoundClosed : EL.quantitativeBound

def EquidistributionClosed {B : BerkovichSpace} {DS : DynamicalSystem B} (EL : EquidistributionLemma DS) : Prop :=
  EL.invariantMeasure ∧ EL.equidistribution ∧ EL.rateOfConvergence ∧ EL.quantitativeBound

theorem equidistribution_closed_from_evidence {B : BerkovichSpace} {DS : DynamicalSystem B} (EL : EquidistributionLemma DS)
    (E : EquidistributionEvidence EL) : EquidistributionClosed EL := by
  exact And.intro E.invariantMeasureClosed
    (And.intro E.equidistributionClosed
      (And.intro E.rateOfConvergenceClosed E.quantitativeBoundClosed))

end DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean
end HautevilleHouse
