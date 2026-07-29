import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricInvariantTheoryCanonicalLaneLean

structure LinearizationPackage where
  equivariantLineBundle : Prop
  linearizationData : Type u
  ampleCondition : Prop
  equivariantSections : Prop
  projectiveEmbedding : Prop

structure LinearizationEvidence (L : LinearizationPackage) where
  equivariantLineBundleClosed : L.equivariantLineBundle
  ampleConditionClosed : L.ampleCondition
  equivariantSectionsClosed : L.equivariantSections
  projectiveEmbeddingClosed : L.projectiveEmbedding

def LinearizationClosed (L : LinearizationPackage) : Prop :=
  L.equivariantLineBundle ∧ L.ampleCondition ∧ L.equivariantSections ∧ L.projectiveEmbedding

theorem linearization_closed_from_evidence (L : LinearizationPackage) (E : LinearizationEvidence L) :
    LinearizationClosed L := by
  exact And.intro E.equivariantLineBundleClosed
    (And.intro E.ampleConditionClosed
      (And.intro E.equivariantSectionsClosed E.projectiveEmbeddingClosed))

end GeometricInvariantTheoryCanonicalLaneLean
end HautevilleHouse