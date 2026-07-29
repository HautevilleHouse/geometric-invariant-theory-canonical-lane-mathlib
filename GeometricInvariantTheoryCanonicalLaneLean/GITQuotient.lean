import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricInvariantTheoryCanonicalLaneLean

structure GITQuotientPackage (G : GroupScheme) (X : GITVariety G) where
  categoricalQuotient : Type u
  quotientMap : X.carrier -> categoricalQuotient
  invariantRing : Type v
  quotientUniversalProperty : Prop
  goodQuotientProperty : Prop

structure GITQuotientEvidence {G : GroupScheme} {X : GITVariety G} (Q : GITQuotientPackage G X) where
  quotientUniversalPropertyClosed : Q.quotientUniversalProperty
  goodQuotientPropertyClosed : Q.goodQuotientProperty

def GITQuotientClosed {G : GroupScheme} {X : GITVariety G} (Q : GITQuotientPackage G X) : Prop :=
  Q.quotientUniversalProperty ∧ Q.goodQuotientProperty

theorem git_quotient_closed_from_evidence {G : GroupScheme} {X : GITVariety G} (Q : GITQuotientPackage G X) (E : GITQuotientEvidence Q) : GITQuotientClosed Q := by
  exact And.intro E.quotientUniversalPropertyClosed E.goodQuotientPropertyClosed

end GeometricInvariantTheoryCanonicalLaneLean
end HautevilleHouse