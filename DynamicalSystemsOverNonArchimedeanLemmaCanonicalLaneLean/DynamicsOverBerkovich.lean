import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean

structure DynamicsOverBerkovichPackage where
  space : BerkovichSpacePackage
  map : space.analyticSpace → space.analyticSpace
  continuity : Prop
  iteratesDefined : Prop
  periodicPointsStructure : Prop
  topologicalEntropy : Prop

structure DynamicsOverBerkovichEvidence (D : DynamicsOverBerkovichPackage) where
  continuityClosed : D.continuity
  iteratesDefinedClosed : D.iteratesDefined
  periodicPointsStructureClosed : D.periodicPointsStructure
  topologicalEntropyClosed : D.topologicalEntropy

def DynamicsOverBerkovichClosed (D : DynamicsOverBerkovichPackage) : Prop :=
  D.continuity ∧ D.iteratesDefined ∧ D.periodicPointsStructure ∧ D.topologicalEntropy

theorem dynamics_over_berkovich_closed_from_evidence
    (D : DynamicsOverBerkovichPackage) (E : DynamicsOverBerkovichEvidence D) :
    DynamicsOverBerkovichClosed D := by
  exact And.intro E.continuityClosed
    (And.intro E.iteratesDefinedClosed
      (And.intro E.periodicPointsStructureClosed E.topologicalEntropyClosed))

end DynamicalSystemsOverNonArchimedeanLemmaCanonicalLaneLean
end HautevilleHouse