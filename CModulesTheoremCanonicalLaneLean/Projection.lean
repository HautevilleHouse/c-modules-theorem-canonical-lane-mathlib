import CModulesTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CModulesTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def cModulesProjection : Projection (AdmittedObject) := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem cModules_projection_idempotent (x : AdmittedObject) :
    cModulesProjection.toFun (cModulesProjection.toFun x) = cModulesProjection.toFun x := by
  exact cModulesProjection.idempotent x

end CModulesTheoremCanonicalLaneLean
end HautevilleHouse