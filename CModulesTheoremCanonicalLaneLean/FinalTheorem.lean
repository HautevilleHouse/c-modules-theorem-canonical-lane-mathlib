import canonicalLaneMathlib.AdmissibleClass
import CModulesTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CModulesTheoremCanonicalLaneLean

def ConstrainedCModulesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cmodules_endgame (A : AdmissibleClass) : ConstrainedCModulesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CModulesTheoremCanonicalLaneLean
end HautevilleHouse