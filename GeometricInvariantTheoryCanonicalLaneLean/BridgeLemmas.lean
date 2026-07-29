import GeometricInvariantTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GeometricInvariantTheoryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GITWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GeometricInvariantTheoryCanonicalLaneLean
end HautevilleHouse