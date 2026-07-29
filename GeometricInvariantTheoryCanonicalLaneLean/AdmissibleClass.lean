import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricInvariantTheoryCanonicalLaneLean

structure AdmissibleClass where
  object : GITAdmittedObject
  semistableCondition : Prop
  stabilityCondition : Prop
  categoricalQuotientExists : Prop
  goodQuotientExists : Prop
  quotientIsProjective : Prop
  gateWitness : semistableCondition ∨ stabilityCondition

def admittedClosure (A : AdmissibleClass) : Prop :=
  GITWitnessClosed A.object ∧ (A.semistableCondition ∨ A.stabilityCondition)

end GeometricInvariantTheoryCanonicalLaneLean
end HautevilleHouse