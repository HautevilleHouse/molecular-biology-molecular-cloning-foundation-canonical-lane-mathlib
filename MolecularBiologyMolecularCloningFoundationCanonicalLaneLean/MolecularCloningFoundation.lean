import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningFoundationCanonicalLaneLean

structure MolecularClone where
  genotype : Type
  replicationOrigin : Type
  vector : Type
  insert : Type
  insertionVerified : Prop
  replicationCompetent : Prop

structure HostOrganism where
  cellLine : Type
  transformationEfficiency : Prop
  selectionMarker : Type
  growthCondition : Prop

structure ExpressionSystem where
  promoter : Type
  terminator : Type
  inducible : Prop
  expressionLevel : Prop

structure AdmissibleCloneClass where
  clone : MolecularClone
  host : HostOrganism
  expression : ExpressionSystem
  cloneStable : Prop
  hostCompatible : Prop
  expressionFunctional : Prop

def bridgeClosed (A : AdmissibleCloneClass) : Prop :=
  A.cloneStable

def gateClosed (A : AdmissibleCloneClass) : Prop :=
  A.hostCompatible ∧ A.expressionFunctional

structure AdmissibleClass where
  object : AdmissibleCloneClass
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A.object := by
  exact A.object.cloneStable

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A.object := by
  exact A.gateWitness

end MolecularBiologyMolecularCloningFoundationCanonicalLaneLean
end HautevilleHouse