import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningFoundationCanonicalLaneLean

structure EpidemiologyModelsPackage where
  susceptible : Prop
  infected : Prop
  recovered : Prop
  basicReproductionNumber : Prop
  sirModelDynamics : Prop

def EpidemiologyModelsClosed (E : EpidemiologyModelsPackage) : Prop :=
  E.susceptible ∧ E.infected ∧ E.recovered ∧ E.basicReproductionNumber ∧ E.sirModelDynamics

end MolecularBiologyMolecularCloningFoundationCanonicalLaneLean
end HautevilleHouse