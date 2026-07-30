import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyMolecularCloningFoundationCanonicalLaneLean.PopulationDynamics
import MolecularBiologyMolecularCloningFoundationCanonicalLaneLean.EvolutionaryGameTheory
import MolecularBiologyMolecularCloningFoundationCanonicalLaneLean.EpidemiologyModels
import MolecularBiologyMolecularCloningFoundationCanonicalLaneLean.SystemsBiology
import MolecularBiologyMolecularCloningFoundationCanonicalLaneLean.MolecularCloning

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let P : PopulationDynamicsPackage := by
    admit
  in PopulationDynamicsClosed P

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

def ConstrainedMolecularCloningClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_molecular_cloning_endgame (A : AdmissibleClass) :
    ConstrainedMolecularCloningClosure A := by
  exact And.intro (by
    unfold bridgeClosed
    admit) (by
    unfold gateClosed
    exact A.gateWitness)

end MolecularBiologyMolecularCloningFoundationCanonicalLaneLean
end HautevilleHouse