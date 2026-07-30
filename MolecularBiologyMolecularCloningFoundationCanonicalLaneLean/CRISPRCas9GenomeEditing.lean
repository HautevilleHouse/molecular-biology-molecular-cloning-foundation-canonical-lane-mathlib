import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningFoundationCanonicalLaneLean

structure GuideRNA where
  sequence : String
  targetGene : String
  targetSequence : String
  pamMotif : String
  specificityScore : Float
  efficiencyScore : Float
  offTargetSites : List String

def GuideRNAClosed (g : GuideRNA) : Prop :=
  g.specificityScore > 0.8 ∧ g.efficiencyScore > 0.5

structure Cas9Protein where
  species : String
  mutantName : String
  nucleaseActivity : Bool
  nickaseActivity : Bool
  dCas9 : Bool
  molecularWeight : Float
  purificationTag : String

def Cas9ProteinClosed (c : Cas9Protein) : Prop :=
  (c.nucleaseActivity ∧ ¬ c.nickaseActivity) ∨ (c.dCas9)

structure DonorTemplate where
  sequence : String
  homologyArms : String
  length : Nat
  modificationType : String
  integrationEfficiency : Float

def DonorTemplateClosed (d : DonorTemplate) : Prop :=
  d.length > 50 ∧ d.integrationEfficiency > 0.3

structure EditedGenome where
  gene : String
  editType : String
  editCoordinates : String
  insertion : String
  deletion : String
  hdrEfficiency : Float
  nhejEfficiency : Float

def EditedGenomeClosed (e : EditedGenome) : Prop :=
  (e.editType = "knockout" ∨ e.editType = "knockin") ∧ (e.hdrEfficiency + e.nhejEfficiency) > 0.0

theorem guide_rna_closed_from_evidence (g : GuideRNA) : GuideRNAClosed g := by
  exact And.intro g.specificityScore g.efficiencyScore

end MolecularBiologyMolecularCloningFoundationCanonicalLaneLean
end HautevilleHouse