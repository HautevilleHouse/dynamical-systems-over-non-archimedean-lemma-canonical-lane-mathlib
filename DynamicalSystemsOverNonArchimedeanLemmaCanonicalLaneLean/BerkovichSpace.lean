import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean

structure BerkovichSpacePackage where
  baseField : Type u
  valuation : baseField → ℚ
  analyticSpace : Type v
  underlyingTopologicalSpace : TopologicalSpace analyticSpace
  sheafOfAnalyticFunctions : Prop
  compactnessProperties : Prop

structure BerkovichSpaceEvidence (B : BerkovichSpacePackage) where
  sheafOfAnalyticFunctionsClosed : B.sheafOfAnalyticFunctions
  compactnessPropertiesClosed : B.compactnessProperties

def BerkovichSpaceClosed (B : BerkovichSpacePackage) : Prop :=
  B.sheafOfAnalyticFunctions ∧ B.compactnessProperties

theorem berkovich_space_closed_from_evidence
    (B : BerkovichSpacePackage) (E : BerkovichSpaceEvidence B) :
    BerkovichSpaceClosed B := by
  exact And.intro E.sheafOfAnalyticFunctionsClosed E.compactnessPropertiesClosed

end DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean
end HautevilleHouse