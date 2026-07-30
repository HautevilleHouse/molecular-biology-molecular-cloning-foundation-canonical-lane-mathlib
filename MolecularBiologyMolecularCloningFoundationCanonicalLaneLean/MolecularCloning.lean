import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningFoundationCanonicalLaneLean

structure MolecularCloningPackage where
  restrictionEnzyme : Prop
  plasmidVector : Prop
  dnaLigation : Prop
  transformation : Prop
  selectionMarker : Prop

def MolecularCloningClosed (M : MolecularCloningPackage) : Prop :=
  M.restrictionEnzyme ∧ M.plasmidVector ∧ M.dnaLigation ∧ M.transformation ∧ M.selectionMarker

end MolecularBiologyMolecularCloningFoundationCanonicalLaneLean
end HautevilleHouse