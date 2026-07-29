import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Algebra.Module.Basic

namespace HautevilleHouse
namespace CModulesTheoremCanonicalLaneLean

structure CModulesTheoremPackage where
  ring : Type u
  [Ring ring]
  freeModules : Prop
  projectiveResolution : Prop
  finiteType : Prop
  finitelyPresented : Prop
  projectiveDimension : Nat

structure CModulesTheoremEvidence (P : CModulesTheoremPackage) where
  freeModulesClosed : P.freeModules
  projectiveResolutionClosed : P.projectiveResolution
  finiteTypeClosed : P.finiteType
  finitelyPresentedClosed : P.finitelyPresented
  projectiveDimensionClosed : P.projectiveDimension = 0

def CModulesTheoremClosed (P : CModulesTheoremPackage) : Prop :=
  P.freeModules ∧ P.projectiveResolution ∧ P.finiteType ∧ P.finitelyPresented ∧ P.projectiveDimension = 0

theorem c_modules_theorem_closed_from_evidence (P : CModulesTheoremPackage) (E : CModulesTheoremEvidence P) :
    CModulesTheoremClosed P := by
  exact And.intro E.freeModulesClosed
    (And.intro E.projectiveResolutionClosed
      (And.intro E.finiteTypeClosed
        (And.intro E.finitelyPresentedClosed E.projectiveDimensionClosed)))

end CModulesTheoremCanonicalLaneLean
end HautevilleHouse