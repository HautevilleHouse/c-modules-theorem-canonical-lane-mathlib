import canonicalLaneMathlib.AdmissibleClass
import HCMT.CModuleAdmissibleClass

namespace HautevilleHouse
namespace CModulesTheoremCanonicalLaneLean

open CModule

def CModuleWitnessClosed {C : Type u} (R : CModuleRing C) (M : CModule R C) : Prop :=
  M.moduleLaws

def bridgeClosed {C : Type u} (R : CModuleRing C) (A : AdmissibleClass C R) : Prop :=
  CModuleWitnessClosed A.object

theorem bridge_from_admissible_class {C : Type u} (R : CModuleRing C) (A : AdmissibleClass C R) :
    bridgeClosed R A := by
  exact A.object.moduleLaws

end CModulesTheoremCanonicalLaneLean
end HautevilleHouse