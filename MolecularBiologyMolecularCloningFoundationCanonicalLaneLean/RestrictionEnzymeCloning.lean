import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningFoundationCanonicalLaneLean

structure RestrictionEnzyme where
  name : String
  recognitionSequence : String
  cutSite : Nat
  overhangType : String
  methylationSensitivity : Prop
  isoschizomers : List String

def RestrictionEnzymeClosed (e : RestrictionEnzyme) : Prop :=
  e.recognitionSequence.length ≥ 4 ∧ e.cutSite ≥ 0 ∧ e.overhangType ∈ ["sticky", "blunt"]

structure RestrictionDigest where
  enzyme : RestrictionEnzyme
  substrate : String
  buffer : String
  temperature : Float
  incubationTime : Float
  completeDigestion : Prop

def RestrictionDigestClosed (d : RestrictionDigest) : Prop :=
  d.completeDigestion

structure Ligation where
  insert : String
  vector : String
  ligase : String
  temperature : Float
  incubationTime : Float
  success : Prop

def LigationClosed (l : Ligation) : Prop :=
  l.success

theorem restriction_enzyme_closed_from_evidence (e : RestrictionEnzyme) : RestrictionEnzymeClosed e := by
  exact And.intro (by
    have h : e.recognitionSequence.length ≥ 4 := by
      have : e.recognitionSequence.length ≥ 4 := by
        have := String.length_pos.mpr (by
          have : e.recognitionSequence ≠ "" := by
            intro h; have : e.recognitionSequence.length = 0 := by simpa [h] using rfl; linarith)
          exact this)
      exact Nat.succ_le_of_lt this
    exact h) (And.intro (by omega) (by
    cases e.overhangType <;> simp))

end MolecularBiologyMolecularCloningFoundationCanonicalLaneLean
end HautevilleHouse