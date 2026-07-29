import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricInvariantTheoryCanonicalLaneLean

structure MomentMapPackage where
  symplecticForm : Type u
  hamiltonianAction : Prop
  momentMap : Type v
  equivariance : Prop
  convexityProperties : Prop

structure MomentMapEvidence (M : MomentMapPackage) where
  hamiltonianActionClosed : M.hamiltonianAction
  equivarianceClosed : M.equivariance
  convexityPropertiesClosed : M.convexityProperties

def MomentMapClosed (M : MomentMapPackage) : Prop :=
  M.hamiltonianAction ∧ M.equivariance ∧ M.convexityProperties

theorem moment_map_closed_from_evidence (M : MomentMapPackage) (E : MomentMapEvidence M) :
    MomentMapClosed M := by
  exact And.intro E.hamiltonianActionClosed
    (And.intro E.equivarianceClosed E.convexityPropertiesClosed)

end GeometricInvariantTheoryCanonicalLaneLean
end HautevilleHouse