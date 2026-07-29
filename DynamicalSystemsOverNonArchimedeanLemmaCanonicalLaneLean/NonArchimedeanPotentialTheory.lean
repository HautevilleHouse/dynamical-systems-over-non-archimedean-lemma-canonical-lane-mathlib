import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean.NonArchimedeanBerkovichSpace

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean

structure NonArchimedeanPotentialTheory (K : NonArchimedeanValuationField) where
  pluriPotential : Type u
  MongeAmpereOperator : Type v
  capacity : Type w
  energyFunctional : Type x
  equilibriumPotential : Prop
  comparisonPrinciple : Prop
  dominantMeasure : Prop

structure NonArchimedeanPotentialTheoryEvidence {K : NonArchimedeanValuationField} (P : NonArchimedeanPotentialTheory K) where
  equilibriumPotentialClosed : P.equilibriumPotential
  comparisonPrincipleClosed : P.comparisonPrinciple
  dominantMeasureClosed : P.dominantMeasure

def NonArchimedeanPotentialTheoryClosed {K : NonArchimedeanValuationField} (P : NonArchimedeanPotentialTheory K) : Prop :=
  P.equilibriumPotential ∧ P.comparisonPrinciple ∧ P.dominantMeasure

theorem non_archimedean_potential_theory_closed_from_evidence {K : NonArchimedeanValuationField} (P : NonArchimedeanPotentialTheory K) (E : NonArchimedeanPotentialTheoryEvidence P) : NonArchimedeanPotentialTheoryClosed P := by
  exact And.intro E.equilibriumPotentialClosed
    (And.intro E.comparisonPrincipleClosed E.dominantMeasureClosed)

end DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean
end HautevilleHouse