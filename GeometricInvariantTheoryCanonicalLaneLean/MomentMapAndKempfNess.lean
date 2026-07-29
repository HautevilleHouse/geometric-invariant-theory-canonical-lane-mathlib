import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricInvariantTheoryCanonicalLaneLean

structure MomentMapPackage where
  symplecticForm : Type u
  lieAlgebraAction : Type v
  momentMapDefined : Prop
  equivarianceProperty : Prop
  kempfNessTheorem : Prop

structure MomentMapEvidence (M : MomentMapPackage) where
  momentMapDefinedClosed : M.momentMapDefined
  equivariancePropertyClosed : M.equivarianceProperty
  kempfNessTheoremClosed : M.kempfNessTheorem

def MomentMapClosed (M : MomentMapPackage) : Prop :=
  M.momentMapDefined ∧ M.equivarianceProperty ∧ M.kempfNessTheorem

theorem moment_map_closed_from_evidence (M : MomentMapPackage) (E : MomentMapEvidence M) : MomentMapClosed M := by
  exact And.intro E.momentMapDefinedClosed (And.intro E.equivariancePropertyClosed E.kempfNessTheoremClosed)

end GeometricInvariantTheoryCanonicalLaneLean
end HautevilleHouse