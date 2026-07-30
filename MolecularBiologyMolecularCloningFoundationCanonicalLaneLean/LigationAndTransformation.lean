import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningFoundationCanonicalLaneLean

structure LigaseEnzyme where
  source : String
  optimalTemperature : Float
  requiresATP : Prop

structure LigationMix where
  insert : String
  vector : String
  molarRatio : Float
  totalDNA : Float

structure LigationPackage (L : LigaseEnzyme) where
  mix : LigationMix
  enzyme : L
  temperature : Float
  time : Float
  ligationSuccess : Prop

structure LigationEvidence {L : LigaseEnzyme} (P : LigationPackage L) where
  ligationSuccessClosed : P.ligationSuccess

structure LigationClosed {L : LigaseEnzyme} (P : LigationPackage L) : Prop :=
  P.ligationSuccess

theorem ligation_closed_from_evidence
    {L : LigaseEnzyme} (P : LigationPackage L) (Ev : LigationEvidence P) :
    LigationClosed P := by
  exact Ev.ligationSuccessClosed

structure TransformationCompetentCell where
  strain : String
  efficiency : Float
  selectionAntibiotic : String

structure TransformationPackage (C : TransformationCompetentCell) where
  plasmid : String
  cells : C
  heatShock : Prop
  outgrowthTime : Float
  transformantsObtained : Prop

structure TransformationEvidence {C : TransformationCompetentCell}
    (T : TransformationPackage C) where
  transformantsObtainedClosed : T.transformantsObtained

structure TransformationClosed {C : TransformationCompetentCell}
    (T : TransformationPackage C) : Prop :=
  T.transformantsObtained

theorem transformation_closed_from_evidence
    {C : TransformationCompetentCell} (T : TransformationPackage C)
    (Ev : TransformationEvidence T) : TransformationClosed T := by
  exact Ev.transformantsObtainedClosed

end MolecularBiologyMolecularCloningFoundationCanonicalLaneLean
end HautevilleHouse