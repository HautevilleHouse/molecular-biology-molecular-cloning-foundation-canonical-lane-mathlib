import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningFoundationCanonicalLaneLean

structure CloningVectorPackage where
  replicateOrigin : Prop
  selectionGene : Prop
  insertionSite : Prop
  copyNumber : Prop

structure CloningVectorEvidence (V : CloningVectorPackage) where
  replicateOriginActive : V.replicateOrigin
  selectionGeneExpression : V.selectionGene
  insertionSiteUnique : V.insertionSite
  copyNumberMeasured : V.copyNumber

def CloningVectorClosed (V : CloningVectorPackage) : Prop :=
  V.replicateOrigin ∧ V.selectionGene ∧ V.insertionSite ∧ V.copyNumber

theorem cloning_vector_closed_from_evidence (V : CloningVectorPackage) (E : CloningVectorEvidence V) : CloningVectorClosed V := by
  exact And.intro E.replicateOriginActive (And.intro E.selectionGeneExpression (And.intro E.insertionSiteUnique E.copyNumberMeasured))

end MolecularBiologyMolecularCloningFoundationCanonicalLaneLean
end HautevilleHouse