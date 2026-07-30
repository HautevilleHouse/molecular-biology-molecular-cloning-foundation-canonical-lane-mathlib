import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningFoundationCanonicalLaneLean

structure CloningVectorPackage where
  originOfReplication : Prop
  multipleCloningSite : Prop
  selectableMarker : Prop
  replicationFidelity : Prop
  vectorCapacity : Nat
  linearized : Prop

structure CloningVectorEvidence (V : CloningVectorPackage) where
  originOfReplicationClosed : V.originOfReplication
  multipleCloningSiteClosed : V.multipleCloningSite
  selectableMarkerClosed : V.selectableMarker
  replicationFidelityClosed : V.replicationFidelity
  linearizedClosed : V.linearized

def CloningVectorClosed (V : CloningVectorPackage) : Prop :=
  V.originOfReplication ∧ V.multipleCloningSite ∧ V.selectableMarker ∧ V.replicationFidelity ∧ V.linearized

theorem cloning_vector_closed_from_evidence (V : CloningVectorPackage) (E : CloningVectorEvidence V) : CloningVectorClosed V := by
  exact And.intro E.originOfReplicationClosed (And.intro E.multipleCloningSiteClosed (And.intro E.selectableMarkerClosed (And.intro E.replicationFidelityClosed E.linearizedClosed)))

end MolecularBiologyMolecularCloningFoundationCanonicalLaneLean
end HautevilleHouse
