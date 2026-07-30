import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningFoundationCanonicalLaneLean

structure ReplicationOrigin where
  site : String
  bindingProteins : List String
  initiationSequence : String
  licensingFactor : Prop

def ReplicationOriginClosed (o : ReplicationOrigin) : Prop :=
  o.licensingFactor

structure ReplicationFork where
  origin : ReplicationOrigin
  leadingStrand : Prop
  laggingStrand : Prop
  okazakiFragments : Nat
  dnaPolymerase : String
  helicase : String
  primase : String
  clampLoader : String
  slidingClamp : String
  exonucleaseProofreading : Prop

def ReplicationForkClosed (f : ReplicationFork) : Prop :=
  f.leadingStrand ∧ f.laggingStrand ∧ f.exonucleaseProofreading

theorem replication_origin_closed_from_evidence (o : ReplicationOrigin) : ReplicationOriginClosed o := by
  exact o.licensingFactor

theorem replication_fork_closed_from_evidence (f : ReplicationFork) : ReplicationForkClosed f := by
  exact And.intro f.leadingStrand (And.intro f.laggingStrand f.exonucleaseProofreading)

end MolecularBiologyMolecularCloningFoundationCanonicalLaneLean
end HautevilleHouse