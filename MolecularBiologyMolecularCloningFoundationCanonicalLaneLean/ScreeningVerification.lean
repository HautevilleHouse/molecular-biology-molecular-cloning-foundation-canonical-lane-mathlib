import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningFoundationCanonicalLaneLean

structure ScreeningVerificationPackage where
  colonyPCR : Prop
  restrictionDigest : Prop
  sequencing : Prop
  insertSizeMatch : Prop
  sequenceIdentity : Prop

structure ScreeningVerificationEvidence (S : ScreeningVerificationPackage) where
  pcrPositive : S.colonyPCR
  digestPatternCorrect : S.restrictionDigest
  sequenceRead : S.sequencing
  sizeConsistent : S.insertSizeMatch
  identityConfirmed : S.sequenceIdentity

def ScreeningVerificationClosed (S : ScreeningVerificationPackage) : Prop :=
  S.colonyPCR ∧ S.restrictionDigest ∧ S.sequencing ∧ S.insertSizeMatch ∧ S.sequenceIdentity

theorem screening_verification_closed_from_evidence (S : ScreeningVerificationPackage) (E : ScreeningVerificationEvidence S) : ScreeningVerificationClosed S := by
  exact And.intro E.pcrPositive (And.intro E.digestPatternCorrect (And.intro E.sequenceRead (And.intro E.sizeConsistent E.identityConfirmed)))

end MolecularBiologyMolecularCloningFoundationCanonicalLaneLean
end HautevilleHouse