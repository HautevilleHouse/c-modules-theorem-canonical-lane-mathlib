import canonicalLaneMathlib.AdmissibleClass
import CModulesTheoremCanonicalLaneLean.ModuleStructure

namespace HautevilleHouse
namespace CModulesTheoremCanonicalLaneLean

structure ProjectiveModule (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] (φ : CModule R M) where
  liftProperty : ∀ (N : Type w) [AddCommGroup N] (ψ : CModule R N) (P : Type x) [AddCommGroup P] (χ : CModule R P)
    (f : ModuleHom R M P φ χ) (g : ModuleHom R N P ψ χ) (h : ∀ (x : M), g.toFun (some x) = f.toFun x), abort
  lift_exists : ∀ (h : ModuleHom R N P ψ χ), True

end CModulesTheoremCanonicalLaneLean
end HautevilleHouse