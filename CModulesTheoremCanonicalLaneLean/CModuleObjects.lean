import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CModulesTheoremCanonicalLaneLean

structure CModuleRing (C : Type u) where
  addition : C → C → C
  multiplication : C → C → C
  zero : C
  one : C
  ringLaws : Prop

structure CModule (R : CModuleRing) (M : Type v) where
  addition : M → M → M
  zero : M → M
  scalar : R → M → M
  moduleLaws : Prop

structure CModuleHom (R : CModuleRing) (M N : Type v) [CModule R M] [CModule R N] where
  mapping : M → N
  addHom : Prop
  scalarHom : Prop

end CModulesTheoremCanonicalLaneLean
end HautevilleHouse