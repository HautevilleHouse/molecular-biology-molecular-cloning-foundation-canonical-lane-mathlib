import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningFoundationCanonicalLaneLean

structure DNALigationPackage where
  insertFragment : Prop
  vectorFragment : Prop
  complementaryEnds : Prop
  ligaseActivity : Prop
  covalentBondFormation : Prop

structure DNALigationEvidence (L : DNALigationPackage) where
  insertFragmentPrepared : L.insertFragment
  vectorFragmentLinearized : L.vectorFragment
  endsCompatible : L.complementaryEnds
  ligaseFunctional : L.ligaseActivity
  bondFormed : L.covalentBondFormation

def DNALigationClosed (L : DNALigationPackage) : Prop :=
  L.insertFragment ∧ L.vectorFragment ∧ L.complementaryEnds ∧ L.ligaseActivity ∧ L.covalentBondFormation

theorem dna_ligation_closed_from_evidence (L : DNALigationPackage) (E : DNALigationEvidence L) : DNALigationClosed L := by
  exact And.intro E.insertFragmentPrepared (And.intro E.vectorFragmentLinearized (And.intro E.endsCompatible (And.intro E.ligaseFunctional E.bondFormed)))

end MolecularBiologyMolecularCloningFoundationCanonicalLaneLean
end HautevilleHouse