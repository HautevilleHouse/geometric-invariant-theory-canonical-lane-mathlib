import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricInvariantTheoryCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure GITSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  groupAction : carrier → carrier → carrier

structure GITAdmittedObject where
  space : GITSpace
  group : Type
  groupOperation : group → group → group
  action : group → GITSpace.carrier → GITSpace.carrier
  reductiveGroup : Prop
  linearRepresentation : Prop
  semistableSetClosed : Prop
  stableSetOpen : Prop
  categoricalQuotientMap : Type
  goodQuotientMap : Type
  conclusion : semistableSetClosed ∧ stableSetOpen ∧ (categoricalQuotientMap → goodQuotientMap)

def GITWitnessClosed (O : GITAdmittedObject) : Prop :=
  O.semistableSetClosed ∧ O.stableSetOpen ∧ (O.categoricalQuotientMap → O.goodQuotientMap)

end GeometricInvariantTheoryCanonicalLaneLean
end HautevilleHouse