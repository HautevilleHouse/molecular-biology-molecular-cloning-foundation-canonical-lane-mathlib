import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningFoundationCanonicalLaneLean

structure PrimerSequence where
  forward : String
  reverse : String
  tm : Float
  gcContent : Float

structure AmplificationProtocol where
  initialDenaturation : Float
  cycleDenaturation : Float
  annealing : Float
  extension : Float
  cycles : Nat
  finalExtension : Float

structure ColonyPCRPackage (P : PrimerSequence) where
  colony : Nat
  primers : P
  protocol : AmplificationProtocol
  ampliconDetected : Prop

structure ColonyPCREvidence {P : PrimerSequence} (C : ColonyPCRPackage P) where
  ampliconDetectedClosed : C.ampliconDetected

structure ColonyPCRClosed {P : PrimerSequence} (C : ColonyPCRPackage P) : Prop :=
  C.ampliconDetected

theorem colony_pcr_closed_from_evidence
    {P : PrimerSequence} (C : ColonyPCRPackage P) (Ev : ColonyPCREvidence C) :
    ColonyPCRClosed C := by
  exact Ev.ampliconDetectedClosed

structure SequencingRun where
  template : String
  primer : String
  readLength : Nat
  qualityScore : Float
  sequenceConfirmed : Prop

structure SequencingValidationPackage (S : SequencingRun) where
  run : S
  alignment : String
  mutationDetected : Prop
  sequenceValid : Prop

structure SequencingValidationEvidence
    {S : SequencingRun} (V : SequencingValidationPackage S) where
  sequenceValidClosed : V.sequenceValid

structure SequencingValidatedClosed
    {S : SequencingRun} (V : SequencingValidationPackage S) : Prop :=
  V.sequenceValid

theorem sequencing_validation_closed_from_evidence
    {S : SequencingRun} (V : SequencingValidationPackage S)
    (Ev : SequencingValidationEvidence V) : SequencingValidatedClosed V := by
  exact Ev.sequenceValidClosed

end MolecularBiologyMolecularCloningFoundationCanonicalLaneLean
end HautevilleHouse