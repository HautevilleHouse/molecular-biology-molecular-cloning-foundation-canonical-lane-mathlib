import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningFoundationCanonicalLaneLean

structure ProteinExpressionPackage where
  expressionVector : Prop
  hostStrain : Prop
  inductionCondition : Prop
  purificationTag : Prop
  proteinDetected : Prop

structure ProteinExpressionEvidence (P : ProteinExpressionPackage) where
  vectorConstructed : P.expressionVector
  strainOptimized : P.hostStrain
  inductionPerformed : P.inductionCondition
  tagFunctional : P.purificationTag
  expressionConfirmed : P.proteinDetected

def ProteinExpressionClosed (P : ProteinExpressionPackage) : Prop :=
  P.expressionVector ∧ P.hostStrain ∧ P.inductionCondition ∧ P.purificationTag ∧ P.proteinDetected

theorem protein_expression_closed_from_evidence (P : ProteinExpressionPackage) (E : ProteinExpressionEvidence P) : ProteinExpressionClosed P := by
  exact And.intro E.vectorConstructed (And.intro E.strainOptimized (And.intro E.inductionPerformed (And.intro E.tagFunctional E.expressionConfirmed)))

end MolecularBiologyMolecularCloningFoundationCanonicalLaneLean
end HautevilleHouse