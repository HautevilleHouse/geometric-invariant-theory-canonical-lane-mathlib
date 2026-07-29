import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricInvariantTheoryCanonicalLaneLean

structure StabilityConditionsPackage where
  linearizedLineBundle : Type u
  hilbertMumfordNumericalCriterion : Prop
  semistablePointsCharacterized : Prop
  stablePointsCharacterized : Prop
  unstablePointsCharacterized : Prop

structure StabilityConditionsEvidence (S : StabilityConditionsPackage) where
  hilbertMumfordNumericalCriterionClosed : S.hilbertMumfordNumericalCriterion
  semistablePointsCharacterizedClosed : S.semistablePointsCharacterized
  stablePointsCharacterizedClosed : S.stablePointsCharacterized
  unstablePointsCharacterizedClosed : S.unstablePointsCharacterized

def StabilityConditionsClosed (S : StabilityConditionsPackage) : Prop :=
  S.hilbertMumfordNumericalCriterion ∧ S.semistablePointsCharacterized ∧ S.stablePointsCharacterized ∧ S.unstablePointsCharacterized

theorem stability_conditions_closed_from_evidence (S : StabilityConditionsPackage) (E : StabilityConditionsEvidence S) : StabilityConditionsClosed S := by
  exact And.intro E.hilbertMumfordNumericalCriterionClosed (And.intro E.semistablePointsCharacterizedClosed (And.intro E.stablePointsCharacterizedClosed E.unstablePointsCharacterizedClosed))

end GeometricInvariantTheoryCanonicalLaneLean
end HautevilleHouse