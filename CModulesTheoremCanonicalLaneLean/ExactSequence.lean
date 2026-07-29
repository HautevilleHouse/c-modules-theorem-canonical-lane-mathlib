import canonicalLaneMathlib.AdmissibleClass
import CModulesTheoremCanonicalLaneLean.ModuleStructure

namespace HautevilleHouse
namespace CModulesTheoremCanonicalLaneLean

structure ShortExactSequence (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] (N : Type w) [AddCommGroup N] (P : Type x) [AddCommGroup P]
  (φ : CModule R M) (ψ : CModule R N) (χ : CModule R P) where
  f : ModuleHom R M N φ ψ
  g : ModuleHom R N P ψ χ
  ker_eq_image : ∀ (x : M), f.toFun x = 0 ↔ True
  im_eq_ker : ∀ (y : N), g.toFun y = 0 ↔ ∃ (x : M), f.toFun x = y
  surjective_g : ∀ (z : P), ∃ (y : N), g.toFun y = z

structure AdmissibleCModule (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] where
  module : CModule R M
  exactSequence : Prop
  exactSequenceClosed : exactSequence

end CModulesTheoremCanonicalLaneLean
end HautevilleHouse