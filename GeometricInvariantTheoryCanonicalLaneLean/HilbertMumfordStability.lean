import GeometricInvariantTheoryCanonicalLaneLean.CategoricalGoodQuotient

/-!
# Hilbert-Mumford Stability Package
-/

namespace HautevilleHouse
namespace GeometricInvariantTheoryCanonicalLaneLean

structure HilbertMumfordStabilityPackage (O : GITAdmittedObject) where
  oneParameterSubgroupsExist : Prop
  numericalFunctionDefined : Prop
  weightPositivityCondition : Prop
  slopeCriterionProved : Prop
  stabilityCharacterization : Prop

structure HilbertMumfordStabilityEvidence (O : GITAdmittedObject) (H : HilbertMumfordStabilityPackage O) where
  oneParameterSubgroupsExistClosed : H.oneParameterSubgroupsExist
  numericalFunctionDefinedClosed : H.numericalFunctionDefined
  weightPositivityConditionClosed : H.weightPositivityCondition
  slopeCriterionProvedClosed : H.slopeCriterionProved
  stabilityCharacterizationClosed : H.stabilityCharacterization

def HilbertMumfordStabilityClosed (O : GITAdmittedObject) (H : HilbertMumfordStabilityPackage O) : Prop :=
  H.oneParameterSubgroupsExist ∧ H.numericalFunctionDefined ∧ H.weightPositivityCondition ∧ H.slopeCriterionProved ∧ H.stabilityCharacterization

theorem hilbert_mumford_stability_closed_from_evidence (O : GITAdmittedObject) (H : HilbertMumfordStabilityPackage O) (E : HilbertMumfordStabilityEvidence O H) :
    HilbertMumfordStabilityClosed O H := by
  exact And.intro E.oneParameterSubgroupsExistClosed
    (And.intro E.numericalFunctionDefinedClosed
      (And.intro E.weightPositivityConditionClosed
        (And.intro E.slopeCriterionProvedClosed E.stabilityCharacterizationClosed)))

end GeometricInvariantTheoryCanonicalLaneLean
end HautevilleHouse