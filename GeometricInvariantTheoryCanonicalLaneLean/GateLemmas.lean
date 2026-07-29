import GeometricInvariantTheoryCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace GeometricInvariantTheoryCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.semistableCondition ∨ A.stabilityCondition

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end GeometricInvariantTheoryCanonicalLaneLean
end HautevilleHouse