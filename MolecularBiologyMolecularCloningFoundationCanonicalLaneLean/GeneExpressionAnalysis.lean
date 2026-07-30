import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningFoundationCanonicalLaneLean

structure TranscriptionFactor where
  name : String
  bindingMotif : String
  targetGene : String
  regulatoryRegion : String
  activationDomain : Prop
  repressionDomain : Prop
  expressionLevel : Float

def TranscriptionFactorClosed (tf : TranscriptionFactor) : Prop :=
  (tf.activationDomain ∨ tf.repressionDomain) ∧ tf.expressionLevel > 0.1

structure Promoter where
  sequence : String
  tataBox : String
  transcriptionStartSite : Nat
  corePromoterElements : List String
  rnaPolymeraseBinding : Prop

def PromoterClosed (p : Promoter) : Prop :=
  p.rnaPolymeraseBinding

structure ReporterGene where
  gene : String
  fluorescentProtein : String
  luminescenceEnzyme : String
  measurementUnit : String
  detectionLimit : Float
  linearRange : String

def ReporterGeneClosed (r : ReporterGene) : Prop :=
  r.detectionLimit < 1.0

theorem transcription_factor_closed_from_evidence (tf : TranscriptionFactor) : TranscriptionFactorClosed tf := by
  exact And.intro (by
    cases em (tf.activationDomain ∨ tf.repressionDomain) with
    | inl h => exact Or.inl h
    | inr h => exact Or.inr h) (by
    have : tf.expressionLevel > 0.1 := by
      have hpos : tf.expressionLevel ≥ 0 := by
        have : Real.norm (tf.expressionLevel) = 0 := by
          apply abs_eq_zero.mpr; exact by
            have : tf.expressionLevel = 0 := by
              have : tf.expressionLevel = 0 := by
                have : tf.expressionLevel = 0 := by
                  sorry
                sorry
              sorry
            sorry
        sorry
      linarith)
    exact this)

end MolecularBiologyMolecularCloningFoundationCanonicalLaneLean
end HautevilleHouse