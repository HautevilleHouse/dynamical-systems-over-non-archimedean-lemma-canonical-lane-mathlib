import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean.NonArchimedeanPotentialTheory

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean

structure NonArchimedeanEquidistribution (K : NonArchimedeanValuationField) where
  dynamicalSystem : NonArchimedeanDynamicalSystem K
  potentialTheory : NonArchimedeanPotentialTheory K
  pointwiseEquidistribution : Prop
  genericPoint : K.carrier → Prop
  measureConvergence : Prop
  equidistributionRate : Prop

structure NonArchimedeanEquidistributionEvidence {K : NonArchimedeanValuationField} (E : NonArchimedeanEquidistribution K) where
  pointwiseEquidistributionClosed : E.pointwiseEquidistribution
  genericPointClosed : E.genericPoint
  measureConvergenceClosed : E.measureConvergence
  equidistributionRateClosed : E.equidistributionRate

def NonArchimedeanEquidistributionClosed {K : NonArchimedeanValuationField} (E : NonArchimedeanEquidistribution K) : Prop :=
  E.pointwiseEquidistribution ∧ E.genericPoint ∧ E.measureConvergence ∧ E.equidistributionRate

theorem non_archimedean_equidistribution_closed_from_evidence {K : NonArchimedeanValuationField} (E : NonArchimedeanEquidistribution K) (Ev : NonArchimedeanEquidistributionEvidence E) : NonArchimedeanEquidistributionClosed E := by
  exact And.intro Ev.pointwiseEquidistributionClosed
    (And.intro Ev.genericPointClosed
      (And.intro Ev.measureConvergenceClosed Ev.equidistributionRateClosed))

end DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean
end HautevilleHouse