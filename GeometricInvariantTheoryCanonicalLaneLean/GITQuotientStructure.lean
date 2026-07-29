import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricInvariantTheoryCanonicalLaneLean

structure GITQuotientPackage where
  groupAction : Type u
  variety : Type v
  semiInvariantFunctions : Type w
  categoricalQuotientExists : Prop
  goodQuotientProperties : Prop
  universalProperty : Prop

structure GITQuotientEvidence (Q : GITQuotientPackage) where
  categoricalQuotientExistsClosed : Q.categoricalQuotientExists
  goodQuotientPropertiesClosed : Q.goodQuotientProperties
  universalPropertyClosed : Q.universalProperty

def GITQuotientClosed (Q : GITQuotientPackage) : Prop :=
  Q.categoricalQuotientExists ∧ Q.goodQuotientProperties ∧ Q.universalProperty

theorem git_quotient_closed_from_evidence (Q : GITQuotientPackage) (E : GITQuotientEvidence Q) : GITQuotientClosed Q := by
  exact And.intro E.categoricalQuotientExistsClosed (And.intro E.goodQuotientPropertiesClosed E.universalPropertyClosed)

end GeometricInvariantTheoryCanonicalLaneLean
end HautevilleHouse