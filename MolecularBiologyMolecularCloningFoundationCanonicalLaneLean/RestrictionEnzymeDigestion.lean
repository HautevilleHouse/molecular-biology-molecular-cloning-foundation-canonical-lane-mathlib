import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningFoundationCanonicalLaneLean

structure RestrictionEnzyme where
  recognitionSequence : String
  cutSite : Nat
  stickyEnd : Bool
  bufferCompatibility : Prop

structure DigestionProduct where
  fragments : List (Nat × String)
  fragmentCount : Nat
  patternVerified : Prop

structure RestrictionDigestionPackage (E : RestrictionEnzyme) where
  substrate : String
  enzyme : E
  temperature : Float
  time : Float
  completeDigestion : Prop

structure DigestionEvidence {E : RestrictionEnzyme} (D : RestrictionDigestionPackage E) where
  completeDigestionClosed : D.completeDigestion

structure RestrictionDigestionClosed {E : RestrictionEnzyme} (D : RestrictionDigestionPackage E) : Prop :=
  D.completeDigestion

theorem restriction_digestion_closed_from_evidence
    {E : RestrictionEnzyme} (D : RestrictionDigestionPackage E)
    (Ev : DigestionEvidence D) : RestrictionDigestionClosed D := by
  exact Ev.completeDigestionClosed

end MolecularBiologyMolecularCloningFoundationCanonicalLaneLean
end HautevilleHouse