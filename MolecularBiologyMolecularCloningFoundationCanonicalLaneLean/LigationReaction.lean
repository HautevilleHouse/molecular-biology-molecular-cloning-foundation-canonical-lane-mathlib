import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningFoundationCanonicalLaneLean

structure LigationReactionPackage where
  insertConcentration : Float
  vectorConcentration : Float
  molarRatio : Float
  ligaseActivity : Prop
  temperature : Float
  incubationTime : Float

structure LigationReactionEvidence (L : LigationReactionPackage) where
  insertConcentrationClosed : L.insertConcentration > 0.0
  vectorConcentrationClosed : L.vectorConcentration > 0.0
  molarRatioClosed : L.molarRatio ≥ 1.0
  ligaseActivityClosed : L.ligaseActivity
  temperatureClosed : L.temperature = 16.0
  incubationTimeClosed : L.incubationTime ≥ 1.0

def LigationReactionClosed (L : LigationReactionPackage) : Prop :=
  L.insertConcentration > 0.0 ∧ L.vectorConcentration > 0.0 ∧ L.molarRatio ≥ 1.0 ∧ L.ligaseActivity ∧ L.temperature = 16.0 ∧ L.incubationTime ≥ 1.0

theorem ligation_reaction_closed_from_evidence (L : LigationReactionPackage) (E : LigationReactionEvidence L) : LigationReactionClosed L := by
  exact And.intro E.insertConcentrationClosed (And.intro E.vectorConcentrationClosed (And.intro E.molarRatioClosed (And.intro E.ligaseActivityClosed (And.intro E.temperatureClosed E.incubationTimeClosed))))

end MolecularBiologyMolecularCloningFoundationCanonicalLaneLean
end HautevilleHouse
