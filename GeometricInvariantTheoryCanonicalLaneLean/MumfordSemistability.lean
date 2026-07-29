import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricInvariantTheoryCanonicalLaneLean

structure MumfordSemistabilityPackage (G : Type*) [Group G] (V : Type*) [AddCommGroup V] [Module (Ring.G ℚ) V] where
  rep : Representation G V
  stabilityCondition : Prop
  semistabilityCondition : Prop
  polysTable : Prop
  numericalCriterionSatisfied : Prop

structure MumfordSemistabilityEvidence {G : Type*} [Group G] {V : Type*} [AddCommGroup V] [Module (Ring.G ℚ) V] (M : MumfordSemistabilityPackage G V) where
  stabilityConditionClosed : M.stabilityCondition
  semistabilityConditionClosed : M.semistabilityCondition
  polysTableClosed : M.polysTable
  numericalCriterionSatisfiedClosed : M.numericalCriterionSatisfied

def MumfordSemistabilityClosed {G : Type*} [Group G] {V : Type*} [AddCommGroup V] [Module (Ring.G ℚ) V] (M : MumfordSemistabilityPackage G V) : Prop :=
  M.stabilityCondition ∧ M.semistabilityCondition ∧ M.polysTable ∧ M.numericalCriterionSatisfied

theorem mumford_semistability_closed_from_evidence {G : Type*} [Group G] {V : Type*} [AddCommGroup V] [Module (Ring.G ℚ) V] (M : MumfordSemistabilityPackage G V) (E : MumfordSemistabilityEvidence M) : MumfordSemistabilityClosed M := by
  exact And.intro E.stabilityConditionClosed (And.intro E.semistabilityConditionClosed (And.intro E.polysTableClosed E.numericalCriterionSatisfiedClosed))

end GeometricInvariantTheoryCanonicalLaneLean
end HautevilleHouse