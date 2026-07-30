import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningFoundationCanonicalLaneLean

structure ThermalCycle where
  denaturationTemp : Float
  annealingTemp : Float
  extensionTemp : Float
  numberOfCycles : Nat
  rampRate : Float

def ThermalCycleClosed (t : ThermalCycle) : Prop :=
  t.denaturationTemp > 90.0 ∧ t.annealingTemp > 50.0 ∧ t.extensionTemp > 65.0 ∧ t.numberOfCycles ≥ 25

structure DNAPolymerase where
  enzyme : String
  thermostable : Bool
  processivity : Float
  fidelity : Float
  exonucleaseActivity : Bool
  family : String

def DNAPolymeraseClosed (p : DNAPolymerase) : Prop :=
  p.thermostable = true ∧ p.processivity > 0.5 ∧ p.fidelity > 0.9

structure PCRProduct where
  ampliconLength : Nat
  specificity : Prop
  yield : Float
  purity : Float
  sequence : String

def PCRProductClosed (p : PCRProduct) : Prop :=
  p.ampliconLength > 0 ∧ p.specificity ∧ p.yield > 0.5 ∧ p.purity > 0.9

theorem thermal_cycle_closed_from_evidence (t : ThermalCycle) : ThermalCycleClosed t := by
  refine And.intro ?_ (And.intro ?_ (And.intro ?_ ?_))
  · exact Nat.ofNat_decLt_succ (by native_dec_trivial)

end MolecularBiologyMolecularCloningFoundationCanonicalLaneLean
end HautevilleHouse