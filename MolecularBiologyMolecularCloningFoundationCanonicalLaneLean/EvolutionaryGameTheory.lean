import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningFoundationCanonicalLaneLean

structure EvolutionaryGameTheoryPackage where
  payoffMatrix : Prop
  replicatorDynamics : Prop
  evolutionarilyStableStrategy : Prop
  nashEquilibrium : Prop

def EvolutionaryGameTheoryClosed (E : EvolutionaryGameTheoryPackage) : Prop :=
  E.payoffMatrix ∧ E.replicatorDynamics ∧ E.evolutionarilyStableStrategy ∧ E.nashEquilibrium

end MolecularBiologyMolecularCloningFoundationCanonicalLaneLean
end HautevilleHouse