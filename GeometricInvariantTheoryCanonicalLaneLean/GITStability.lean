import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricInvariantTheoryCanonicalLaneLean

structure GITStabilityPackage where
  reductiveGroupActing : Prop
  linearizationChosen : Prop
  stableLocus : Prop
  semistableLocus : Prop
  categoricalQuotient : Prop

structure GITStabilityEvidence (S : GITStabilityPackage) where
  reductiveGroupActingClosed : S.reductiveGroupActing
  linearizationChosenClosed : S.linearizationChosen
  categoricalQuotientClosed : S.categoricalQuotient

def GITStabilityClosed (S : GITStabilityPackage) : Prop :=
  S.reductiveGroupActing ∧ S.linearizationChosen ∧
  S.stableLocus ∧ S.semistableLocus ∧ S.categoricalQuotient

theorem git_stability_closed_from_evidence (S : GITStabilityPackage)
    (E : GITStabilityEvidence S) : GITStabilityClosed S := by
  exact And.intro E.reductiveGroupActingClosed
    (And.intro E.linearizationChosenClosed
      (And.intro (by exact S.stableLocus)
        (And.intro (by exact S.semistableLocus) E.categoricalQuotientClosed)))

end GeometricInvariantTheoryCanonicalLaneLean
end HautevilleHouse