import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CModulesTheoremCanonicalLaneLean

structure CModule (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] where
  smul : R → M → M
  smul_add : ∀ (r : R) (x y : M), smul r (x + y) = smul r x + smul r y
  add_smul : ∀ (r s : R) (x : M), smul (r + s) x = smul r x + smul s x
  mul_smul : ∀ (r s : R) (x : M), smul (r * s) x = smul r (smul s x)
  one_smul : ∀ (x : M), smul 1 x = x

structure ModuleHom (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] (N : Type w) [AddCommGroup N] (φ : CModule R M) (ψ : CModule R N) where
  toFun : M → N
  map_add' : ∀ (x y : M), toFun (x + y) = toFun x + toFun y
  map_smul' : ∀ (r : R) (x : M), toFun (φ.smul r x) = ψ.smul r (toFun x)

structure Submodule (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] (φ : CModule R M) where
  carrier : Set M
  zero_mem' : (0 : M) ∈ carrier
  add_mem' {x y : M} (hx : x ∈ carrier) (hy : y ∈ carrier) : x + y ∈ carrier
  smul_mem' (r : R) {x : M} (hx : x ∈ carrier) : φ.smul r x ∈ carrier

end CModulesTheoremCanonicalLaneLean
end HautevilleHouse