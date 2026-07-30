import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningFoundationCanonicalLaneLean

structure InductionCondition where
  inducer : String
  concentration : Float
  temperature : Float
  time : Float

structure ProteinExpressionPackage where
  cellStrain : String
  vector : String
  induction : InductionCondition
  expressionObserved : Prop

structure ProteinExpressionEvidence (E : ProteinExpressionPackage) where
  expressionObservedClosed : E.expressionObserved

structure ProteinExpressionClosed (E : ProteinExpressionPackage) : Prop :=
  E.expressionObserved

theorem protein_expression_closed_from_evidence
    (E : ProteinExpressionPackage) (Ev : ProteinExpressionEvidence E) :
    ProteinExpressionClosed E := by
  exact Ev.expressionObservedClosed

structure PurificationColumn where
  resin : String
  bindingBuffer : String
  elutionBuffer : String
  flowRate : Float

structure PurificationProtocol where
  cellLysate : String
  column : PurificationColumn
  washSteps : Nat
  elutionFraction : Nat
  purityChecked : Prop

structure PurificationPackage (P : PurificationProtocol) where
  protocol : P
  yield : Float
  purity : Float
  proteinObtained : Prop

structure PurificationEvidence {P : PurificationProtocol}
    (Q : PurificationPackage P) where
  proteinObtainedClosed : Q.proteinObtained

structure PurificationClosed {P : PurificationProtocol}
    (Q : PurificationPackage P) : Prop :=
  Q.proteinObtained

theorem purification_closed_from_evidence
    {P : PurificationProtocol} (Q : PurificationPackage P)
    (Ev : PurificationEvidence Q) : PurificationClosed Q := by
  exact Ev.proteinObtainedClosed

end MolecularBiologyMolecularCloningFoundationCanonicalLaneLean
end HautevilleHouse