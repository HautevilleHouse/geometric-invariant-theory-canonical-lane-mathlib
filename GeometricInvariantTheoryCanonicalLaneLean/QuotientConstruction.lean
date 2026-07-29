import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricInvariantTheoryCanonicalLaneLean

structure QuotientConstructionPackage where
  groupAction : Type u → Type v
  groupActionTopology : Type w
  reductiveGroup : Prop
  goodQuotient : Prop
  categoricalQuotient : Prop
  universalPropertyQuotient : Prop

structure QuotientConstructionEvidence (Q : QuotientConstructionPackage) where
  reductiveGroupClosed : Q.reductiveGroup
  goodQuotientClosed : Q.goodQuotient
  categoricalQuotientClosed : Q.categoricalQuotient
  universalPropertyQuotientClosed : Q.universalPropertyQuotient

def QuotientConstructionClosed (Q : QuotientConstructionPackage) : Prop :=
  Q.reductiveGroup ∧ Q.goodQuotient ∧ Q.categoricalQuotient ∧ Q.universalPropertyQuotient

theorem quotient_construction_closed_from_evidence (Q : QuotientConstructionPackage) (E : QuotientConstructionEvidence Q) :
    QuotientConstructionClosed Q := by
  exact And.intro E.reductiveGroupClosed
    (And.intro E.goodQuotientClosed
      (And.intro E.categoricalQuotientClosed E.universalPropertyQuotientClosed))

end GeometricInvariantTheoryCanonicalLaneLean
end HautevilleHouse