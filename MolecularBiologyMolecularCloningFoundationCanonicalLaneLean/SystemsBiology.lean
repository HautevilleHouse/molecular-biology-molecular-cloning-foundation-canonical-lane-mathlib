import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningFoundationCanonicalLaneLean

structure SystemsBiologyPackage where
  geneRegulatoryNetwork : Prop
  metabolicPathway : Prop
  signalTransduction : Prop
  feedbackLoop : Prop
  dynamicalSystem : Prop

def SystemsBiologyClosed (S : SystemsBiologyPackage) : Prop :=
  S.geneRegulatoryNetwork ∧ S.metabolicPathway ∧ S.signalTransduction ∧ S.feedbackLoop ∧ S.dynamicalSystem

end MolecularBiologyMolecularCloningFoundationCanonicalLaneLean
end HautevilleHouse