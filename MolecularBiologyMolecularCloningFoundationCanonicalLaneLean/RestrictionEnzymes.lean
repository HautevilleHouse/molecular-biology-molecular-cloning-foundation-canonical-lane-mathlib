import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningFoundationCanonicalLaneLean

structure RestrictionEnzymePackage where
  recognitionSequence : String
  cutType : String
  stickyEnds : Bool
  methylationSensitivity : Prop
  starActivity : Prop
  bufferConditions : Prop

structure RestrictionEnzymeEvidence (E : RestrictionEnzymePackage) where
  recognitionSequenceClosed : E.recognitionSequence = "GAATTC"
  cutTypeClosed : E.cutType = "staggered"
  stickyEndsClosed : E.stickyEnds
  methylationSensitivityClosed : E.methylationSensitivity
  bufferConditionsClosed : E.bufferConditions

def RestrictionEnzymeClosed (E : RestrictionEnzymePackage) : Prop :=
  E.recognitionSequence = "GAATTC" ∧ E.cutType = "staggered" ∧ E.stickyEnds ∧ E.methylationSensitivity ∧ E.bufferConditions

theorem restriction_enzyme_closed_from_evidence (E : RestrictionEnzymePackage) (Ev : RestrictionEnzymeEvidence E) : RestrictionEnzymeClosed E := by
  exact And.intro Ev.recognitionSequenceClosed (And.intro Ev.cutTypeClosed (And.intro Ev.stickyEndsClosed (And.intro Ev.methylationSensitivityClosed Ev.bufferConditionsClosed)))

end MolecularBiologyMolecularCloningFoundationCanonicalLaneLean
end HautevilleHouse
