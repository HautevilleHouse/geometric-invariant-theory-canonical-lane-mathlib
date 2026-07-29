import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricInvariantTheoryCanonicalLaneLean

structure NumericalCriteriaPackage (G : GroupScheme) (X : GITVariety G) where
  linearization : Type u
  weightFunction : Type v
  positivityCondition : Prop
  semistableCharacterization : Prop
  stableCharacterization : Prop
  numericalFunctionPositiveOnSemistable : Prop

structure NumericalCriteriaEvidence {G : GroupScheme} {X : GITVariety G} (N : NumericalCriteriaPackage G X) where
  positivityConditionClosed : N.positivityCondition
  semistableCharacterizationClosed : N.semistableCharacterization
  stableCharacterizationClosed : N.stableCharacterization
  numericalFunctionPositiveOnSemistableClosed : N.numericalFunctionPositiveOnSemistable

def NumericalCriteriaClosed {G : GroupScheme} {X : GITVariety G} (N : NumericalCriteriaPackage G X) : Prop :=
  N.positivityCondition ∧ N.semistableCharacterization ∧ N.stableCharacterization ∧ N.numericalFunctionPositiveOnSemistable

theorem numerical_criteria_closed_from_evidence {G : GroupScheme} {X : GITVariety G} (N : NumericalCriteriaPackage G X) (E : NumericalCriteriaEvidence N) : NumericalCriteriaClosed N := by
  exact And.intro E.positivityConditionClosed (And.intro E.semistableCharacterizationClosed (And.intro E.stableCharacterizationClosed E.numericalFunctionPositiveOnSemistableClosed))

end GeometricInvariantTheoryCanonicalLaneLean
end HautevilleHouse