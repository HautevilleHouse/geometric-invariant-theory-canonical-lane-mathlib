import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricInvariantTheoryCanonicalLaneLean

structure MumfordConjecturePackage where
  reductiveGroup : Prop
  semistablePointsOpen : Prop
  coarseModuliSpace : Prop
  separatedness : Prop
  properness : Prop

structure MumfordConjectureEvidence (M : MumfordConjecturePackage) where
  reductiveGroupClosed : M.reductiveGroup
  semistablePointsOpenClosed : M.semistablePointsOpen
  coarseModuliSpaceClosed : M.coarseModuliSpace
  separatednessClosed : M.separatedness
  propernessClosed : M.properness

def MumfordConjectureClosed (M : MumfordConjecturePackage) : Prop :=
  M.reductiveGroup ∧ M.semistablePointsOpen ∧ M.coarseModuliSpace ∧ M.separatedness ∧ M.properness

theorem mumford_conjecture_closed_from_evidence (M : MumfordConjecturePackage) (E : MumfordConjectureEvidence M) :
    MumfordConjectureClosed M := by
  exact And.intro E.reductiveGroupClosed
    (And.intro E.semistablePointsOpenClosed
      (And.intro E.coarseModuliSpaceClosed
        (And.intro E.separatednessClosed E.propernessClosed)))

end GeometricInvariantTheoryCanonicalLaneLean
end HautevilleHouse