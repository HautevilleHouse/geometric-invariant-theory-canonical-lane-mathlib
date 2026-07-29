import canonicalLaneMathlib.AdmissibleClass
import GeometricInvariantTheoryCanonicalLaneLean.MumfordSemistability
import GeometricInvariantTheoryCanonicalLaneLean.HilbertMumfordCriterion
import GeometricInvariantTheoryCanonicalLaneLean.QuotientConstruction
import GeometricInvariantTheoryCanonicalLaneLean.StableLocallyFreeSheaves

namespace HautevilleHouse
namespace GeometricInvariantTheoryCanonicalLaneLean

def ConstrainedGITClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_git_endgame (A : AdmissibleClass) : ConstrainedGITClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GeometricInvariantTheoryCanonicalLaneLean
end HautevilleHouse