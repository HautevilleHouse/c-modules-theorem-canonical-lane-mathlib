import CModulesTheoremCanonicalLaneLean.ModuleCategory

namespace HautevilleHouse
namespace CModulesTheoremCanonicalLaneLean

structure KaplanskyTheoremPackage where
  ring : Type u
  [Ring ring]
  directSumEndomorphismRing : Prop
  projectiveModulesFree : Prop

structure KaplanskyTheoremEvidence (K : KaplanskyTheoremPackage) where
  directSumEndomorphismRingClosed : K.directSumEndomorphismRing
  projectiveModulesFreeClosed : K.projectiveModulesFree

def KaplanskyTheoremClosed (K : KaplanskyTheoremPackage) : Prop :=
  K.directSumEndomorphismRing ∧ K.projectiveModulesFree

theorem kaplansky_theorem_closed_from_evidence (K : KaplanskyTheoremPackage) (E : KaplanskyTheoremEvidence K) :
    KaplanskyTheoremClosed K := by
  exact And.intro E.directSumEndomorphismRingClosed E.projectiveModulesFreeClosed

end CModulesTheoremCanonicalLaneLean
end HautevilleHouse