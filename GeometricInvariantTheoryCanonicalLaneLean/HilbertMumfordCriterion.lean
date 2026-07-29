import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricInvariantTheoryCanonicalLaneLean

structure HilbertMumfordCriterionPackage where
  oneParameterSubgroups : Type u
  numericalFunction : Type v
  criterionStatement : Prop
  impliesStability : Prop

structure HilbertMumfordCriterionEvidence (H : HilbertMumfordCriterionPackage) where
  criterionStatementClosed : H.criterionStatement
  impliesStabilityClosed : H.impliesStability

def HilbertMumfordCriterionClosed (H : HilbertMumfordCriterionPackage) : Prop :=
  H.criterionStatement ∧ H.impliesStability

theorem hilbert_mumford_criterion_closed_from_evidence (H : HilbertMumfordCriterionPackage) (E : HilbertMumfordCriterionEvidence H) : HilbertMumfordCriterionClosed H := by
  exact And.intro E.criterionStatementClosed E.impliesStabilityClosed

end GeometricInvariantTheoryCanonicalLaneLean
end HautevilleHouse