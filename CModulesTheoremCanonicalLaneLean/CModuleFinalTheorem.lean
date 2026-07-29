import canonicalLaneMathlib.AdmissibleClass
import HCMT.CModuleBridge
import HCMT.CModuleGate

namespace HautevilleHouse
namespace CModulesTheoremCanonicalLaneLean

def ConstrainedCModuleClosure {C : Type u} (R : CModuleRing C) (A : AdmissibleClass C R) : Prop :=
  bridgeClosed R A ∧ gateClosed R A

theorem constrained_c_module_endgame {C : Type u} (R : CModuleRing C) (A : AdmissibleClass C R) :
    ConstrainedCModuleClosure R A := by
  exact And.intro (bridge_from_admissible_class R A) (gate_from_admissible_class R A)

end CModulesTheoremCanonicalLaneLean
end HautevilleHouse