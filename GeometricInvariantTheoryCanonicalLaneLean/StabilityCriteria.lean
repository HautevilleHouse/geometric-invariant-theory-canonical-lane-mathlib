import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricInvariantTheoryCanonicalLaneLean

structure StabilityCriteriaPackage where
  semistablePoints : Prop
  stablePoints : Prop
  polystablePoints : Prop
  numericalCriterion : Prop
  hilbertMumfordCriterion : Prop

structure StabilityCriteriaEvidence (S : StabilityCriteriaPackage) where
  semistablePointsClosed : S.semistablePoints
  stablePointsClosed : S.stablePoints
  polystablePointsClosed : S.polystablePoints
  numericalCriterionClosed : S.numericalCriterion
  hilbertMumfordCriterionClosed : S.hilbertMumfordCriterion

def StabilityCriteriaClosed (S : StabilityCriteriaPackage) : Prop :=
  S.semistablePoints ∧ S.stablePoints ∧ S.polystablePoints ∧ S.numericalCriterion ∧ S.hilbertMumfordCriterion

theorem stability_criteria_closed_from_evidence (S : StabilityCriteriaPackage) (E : StabilityCriteriaEvidence S) :
    StabilityCriteriaClosed S := by
  exact And.intro E.semistablePointsClosed
    (And.intro E.stablePointsClosed
      (And.intro E.polystablePointsClosed
        (And.intro E.numericalCriterionClosed E.hilbertMumfordCriterionClosed)))

end GeometricInvariantTheoryCanonicalLaneLean
end HautevilleHouse