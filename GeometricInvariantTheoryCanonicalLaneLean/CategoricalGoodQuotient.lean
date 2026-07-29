import GeometricInvariantTheoryCanonicalLaneLean.SemistableReduction

/-!
# Categorical and Good Quotient Package
-/

namespace HautevilleHouse
namespace GeometricInvariantTheoryCanonicalLaneLean

structure CategoricalGoodQuotientPackage (O : GITAdmittedObject) where
  quotientSpace : Type u
  quotientTopology : TopologicalSpace quotientSpace
  quotientMapContinuous : Prop
  invariantFunctionsSeparate : Prop
  reductiveGroupAction : Prop
  goodQuotientProperties : Prop

structure CategoricalGoodQuotientEvidence (O : GITAdmittedObject) (Q : CategoricalGoodQuotientPackage O) where
  quotientMapContinuousClosed : Q.quotientMapContinuous
  invariantFunctionsSeparateClosed : Q.invariantFunctionsSeparate
  reductiveGroupActionClosed : Q.reductiveGroupAction
  goodQuotientPropertiesClosed : Q.goodQuotientProperties

def CategoricalGoodQuotientClosed (O : GITAdmittedObject) (Q : CategoricalGoodQuotientPackage O) : Prop :=
  Q.quotientMapContinuous ∧ Q.invariantFunctionsSeparate ∧ Q.reductiveGroupAction ∧ Q.goodQuotientProperties

theorem categorical_good_quotient_closed_from_evidence (O : GITAdmittedObject) (Q : CategoricalGoodQuotientPackage O) (E : CategoricalGoodQuotientEvidence O Q) :
    CategoricalGoodQuotientClosed O Q := by
  exact And.intro E.quotientMapContinuousClosed
    (And.intro E.invariantFunctionsSeparateClosed
      (And.intro E.reductiveGroupActionClosed E.goodQuotientPropertiesClosed))

end GeometricInvariantTheoryCanonicalLaneLean
end HautevilleHouse