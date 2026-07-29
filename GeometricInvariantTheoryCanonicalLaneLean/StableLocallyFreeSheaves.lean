import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricInvariantTheoryCanonicalLaneLean

structure StableLocallyFreeSheavesPackage (X : Type*) [TopologicalSpace X] [Sheaf X] where
  rank : ℕ
  degree : ℤ
  stabilityCondition : Prop
  slopeDefined : Prop
  harderNarasimhanFiltration : Prop

structure StableLocallyFreeSheavesEvidence (X : Type*) [TopologicalSpace X] [Sheaf X] (S : StableLocallyFreeSheavesPackage X) where
  stabilityConditionClosed : S.stabilityCondition
  slopeDefinedClosed : S.slopeDefined
  harderNarasimhanFiltrationClosed : S.harderNarasimhanFiltration

def StableLocallyFreeSheavesClosed (X : Type*) [TopologicalSpace X] [Sheaf X] (S : StableLocallyFreeSheavesPackage X) : Prop :=
  S.stabilityCondition ∧ S.slopeDefined ∧ S.harderNarasimhanFiltration

theorem stable_locally_free_sheaves_closed_from_evidence (X : Type*) [TopologicalSpace X] [Sheaf X] (S : StableLocallyFreeSheavesPackage X) (E : StableLocallyFreeSheavesEvidence X S) : StableLocallyFreeSheavesClosed X S := by
  exact And.intro E.stabilityConditionClosed (And.intro E.slopeDefinedClosed E.harderNarasimhanFiltrationClosed)

end GeometricInvariantTheoryCanonicalLaneLean
end HautevilleHouse