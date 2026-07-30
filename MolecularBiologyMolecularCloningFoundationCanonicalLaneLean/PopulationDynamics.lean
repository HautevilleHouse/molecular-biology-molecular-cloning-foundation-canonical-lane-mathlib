import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningFoundationCanonicalLaneLean

structure PopulationDynamicsPackage where
  growthRateModel : Prop
  logisticCarryingCapacity : Prop
  predatorPreyInteraction : Prop
  stabilityAnalysis : Prop

structure PopulationDynamicsEvidence (P : PopulationDynamicsPackage) where
  growthRateModelClosed : P.growthRateModel
  logisticCarryingCapacityClosed : P.logisticCarryingCapacity
  predatorPreyInteractionClosed : P.predatorPreyInteraction
  stabilityAnalysisClosed : P.stabilityAnalysis

def PopulationDynamicsClosed (P : PopulationDynamicsPackage) : Prop :=
  P.growthRateModel ∧ P.logisticCarryingCapacity ∧
  P.predatorPreyInteraction ∧ P.stabilityAnalysis

theorem population_dynamics_closed_from_evidence (P : PopulationDynamicsPackage)
    (E : PopulationDynamicsEvidence P) : PopulationDynamicsClosed P := by
  exact And.intro E.growthRateModelClosed
    (And.intro E.logisticCarryingCapacityClosed
      (And.intro E.predatorPreyInteractionClosed E.stabilityAnalysisClosed))

end MolecularBiologyMolecularCloningFoundationCanonicalLaneLean
end HautevilleHouse