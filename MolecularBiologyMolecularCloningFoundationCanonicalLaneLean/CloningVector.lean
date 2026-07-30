import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningFoundationCanonicalLaneLean

structure CloningVectorPackage where
  originOfReplication : Prop
  multipleCloningSite : Prop
  selectableMarker : Prop
  insertCapacity : Prop

structure CloningVectorEvidence (C : CloningVectorPackage) where
  originOfReplicationClosed : C.originOfReplication
  multipleCloningSiteClosed : C.multipleCloningSite
  selectableMarkerClosed : C.selectableMarker
  insertCapacityClosed : C.insertCapacity

def CloningVectorClosed (C : CloningVectorPackage) : Prop :=
  C.originOfReplication ∧ C.multipleCloningSite ∧
  C.selectableMarker ∧ C.insertCapacity

theorem cloning_vector_closed_from_evidence (C : CloningVectorPackage)
    (E : CloningVectorEvidence C) : CloningVectorClosed C := by
  exact And.intro E.originOfReplicationClosed
    (And.intro E.multipleCloningSiteClosed
      (And.intro E.selectableMarkerClosed E.insertCapacityClosed))

end MolecularBiologyMolecularCloningFoundationCanonicalLaneLean
end HautevilleHouse