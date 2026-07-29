import GeometricInvariantTheoryCanonicalLaneLean.GITAdmittedObject

/-!
# Semistable Reduction Package
-/

namespace HautevilleHouse
namespace GeometricInvariantTheoryCanonicalLaneLean

structure SemistableReductionPackage (O : GITAdmittedObject) where
  linearizationExists : Prop
  momentMapDefined : Prop
  numericalCondition : Prop
  semistableCriterion : Prop
  reductionToStable : Prop

structure SemistableReductionEvidence (O : GITAdmittedObject) (P : SemistableReductionPackage O) where
  linearizationExistsClosed : P.linearizationExists
  momentMapDefinedClosed : P.momentMapDefined
  numericalConditionClosed : P.numericalCondition
  semistableCriterionClosed : P.semistableCriterion
  reductionToStableClosed : P.reductionToStable

def SemistableReductionClosed (O : GITAdmittedObject) (P : SemistableReductionPackage O) : Prop :=
  P.linearizationExists ∧ P.momentMapDefined ∧ P.numericalCondition ∧ P.semistableCriterion ∧ P.reductionToStable

theorem semistable_reduction_closed_from_evidence (O : GITAdmittedObject) (P : SemistableReductionPackage O) (E : SemistableReductionEvidence O P) :
    SemistableReductionClosed O P := by
  exact And.intro E.linearizationExistsClosed
    (And.intro E.momentMapDefinedClosed
      (And.intro E.numericalConditionClosed
        (And.intro E.semistableCriterionClosed E.reductionToStableClosed)))

end GeometricInvariantTheoryCanonicalLaneLean
end HautevilleHouse