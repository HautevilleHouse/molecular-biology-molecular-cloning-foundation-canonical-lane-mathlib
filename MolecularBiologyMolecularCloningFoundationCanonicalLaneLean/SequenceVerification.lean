import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningFoundationCanonicalLaneLean

structure SequenceVerificationPackage where
  primerSequence : String
  annealingTemperature : Float
  elongationTime : Float
  sequenceRead : String
  expectedInsert : String
  alignmentScore : Nat
  confirmed : Prop

structure SequenceVerificationEvidence (S : SequenceVerificationPackage) where
  primerSequenceClosed : S.primerSequence.length ≥ 18
  annealingTemperatureClosed : S.annealingTemperature ≥ 55.0 ∧ S.annealingTemperature ≤ 65.0
  elongationTimeClosed : S.elongationTime ≥ 30.0
  sequenceReadClosed : S.sequenceRead = S.expectedInsert
  alignmentScoreClosed : S.alignmentScore ≥ 90
  confirmedClosed : S.confirmed

def SequenceVerificationClosed (S : SequenceVerificationPackage) : Prop :=
  S.primerSequence.length ≥ 18 ∧ (S.annealingTemperature ≥ 55.0 ∧ S.annealingTemperature ≤ 65.0) ∧ S.elongationTime ≥ 30.0 ∧ S.sequenceRead = S.expectedInsert ∧ S.alignmentScore ≥ 90 ∧ S.confirmed

theorem sequence_verification_closed_from_evidence (S : SequenceVerificationPackage) (E : SequenceVerificationEvidence S) : SequenceVerificationClosed S := by
  exact And.intro E.primerSequenceClosed (And.intro E.annealingTemperatureClosed (And.intro E.elongationTimeClosed (And.intro E.sequenceReadClosed (And.intro E.alignmentScoreClosed E.confirmedClosed))))

end MolecularBiologyMolecularCloningFoundationCanonicalLaneLean
end HautevilleHouse
