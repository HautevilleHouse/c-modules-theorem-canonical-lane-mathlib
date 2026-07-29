import canonicalLaneMathlib.AdmissibleClass
import HCMT.CModuleBridge

namespace HautevilleHouse
namespace CModulesTheoremCanonicalLaneLean

def gateClosed {C : Type u} (R : CModuleRing C) (A : AdmissibleClass C R) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class {C : Type u} (R : CModuleRing C) (A : AdmissibleClass C R) :
    gateClosed R A := by
  exact A.gateWitness

end CModulesTheoremCanonicalLaneLean
end HautevilleHouse