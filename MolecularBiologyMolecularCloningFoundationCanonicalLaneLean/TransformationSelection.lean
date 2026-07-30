import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningFoundationCanonicalLaneLean

structure TransformationSelectionPackage where
  competentCells : Prop
  heatShockOrElectroporation : Prop
  selectionAntibiotic : Prop
  incubationTime : Prop
  colonyFormation : Prop

structure TransformationSelectionEvidence (T : TransformationSelectionPackage) where
  cellsCompetent : T.competentCells
  transformationMethodApplied : T.heatShockOrElectroporation
  antibioticActive : T.selectionAntibiotic
  incubationSufficient : T.incubationTime
  coloniesObserved : T.colonyFormation

def TransformationSelectionClosed (T : TransformationSelectionPackage) : Prop :=
  T.competentCells ∧ T.heatShockOrElectroporation ∧ T.selectionAntibiotic ∧ T.incubationTime ∧ T.colonyFormation

theorem transformation_selection_closed_from_evidence (T : TransformationSelectionPackage) (E : TransformationSelectionEvidence T) : TransformationSelectionClosed T := by
  exact And.intro E.cellsCompetent (And.intro E.transformationMethodApplied (And.intro E.antibioticActive (And.intro E.incubationSufficient E.coloniesObserved)))

end MolecularBiologyMolecularCloningFoundationCanonicalLaneLean
end HautevilleHouse