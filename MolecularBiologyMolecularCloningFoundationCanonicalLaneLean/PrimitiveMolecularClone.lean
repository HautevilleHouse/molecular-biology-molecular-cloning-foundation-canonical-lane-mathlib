import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningFoundationCanonicalLaneLean

structure PrimitiveCloneConstruct where
  insertDNA : Type u
  vectorBackbone : Type v
  selectionMarker : Prop
  originOfReplication : Prop
  multipleCloningSite : Prop
  hostOrganism : Type w
  transformationEfficiency : Prop

structure PrimitiveCloneEvidence (C : PrimitiveCloneConstruct) where
  insertDNADefined : C.insertDNA = C.insertDNA
  vectorBackboneDefined : C.vectorBackbone = C.vectorBackbone
  selectionMarkerFunctional : C.selectionMarker
  originFunctional : C.originOfReplication
  multipleCloningSiteFunctional : C.multipleCloningSite
  hostCompatible : Nonempty C.hostOrganism
  transformationEfficiencyPositive : C.transformationEfficiency

def PrimitiveCloneClosed (C : PrimitiveCloneConstruct) : Prop :=
  C.selectionMarker ∧ C.originOfReplication ∧ C.multipleCloningSite ∧ C.transformationEfficiency

theorem primitive_clone_closed_from_evidence (C : PrimitiveCloneConstruct) (E : PrimitiveCloneEvidence C) : PrimitiveCloneClosed C := by
  exact And.intro E.selectionMarkerFunctional (And.intro E.originFunctional (And.intro E.multipleCloningSiteFunctional E.transformationEfficiencyPositive))

end MolecularBiologyMolecularCloningFoundationCanonicalLaneLean
end HautevilleHouse