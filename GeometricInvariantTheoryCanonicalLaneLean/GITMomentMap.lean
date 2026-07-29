import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricInvariantTheoryCanonicalLaneLean

structure GITMomentMapPackage where
  symplecticManifold : Type u
  hamiltonianAction : Prop
  momentMap : Type v
  properMomentMap : Prop
  equivariance : Prop

structure GITMomentMapEvidence (M : GITMomentMapPackage) where
  hamiltonianActionClosed : M.hamiltonianAction
  properMomentMapClosed : M.properMomentMap
  equivarianceClosed : M.equivariance

def GITMomentMapClosed (M : GITMomentMapPackage) : Prop :=
  M.hamiltonianAction ∧ M.properMomentMap ∧ M.equivariance

theorem git_moment_map_closed_from_evidence (M : GITMomentMapPackage)
    (E : GITMomentMapEvidence M) : GITMomentMapClosed M := by
  exact And.intro E.hamiltonianActionClosed
    (And.intro E.properMomentMapClosed E.equivarianceClosed)

end GeometricInvariantTheoryCanonicalLaneLean
end HautevilleHouse