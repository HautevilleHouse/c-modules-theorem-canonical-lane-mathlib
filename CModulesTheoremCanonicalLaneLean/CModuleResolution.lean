import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CModulesTheoremCanonicalLaneLean.CModuleStructure
import HautevilleHouse.CModulesTheoremCanonicalLaneLean.CModuleHomomorphism
import HautevilleHouse.CModulesTheoremCanonicalLaneLean.CModuleProjective

namespace HautevilleHouse
namespace CModulesTheoremCanonicalLaneLean

structure CModuleResolution (R : Type u) [Ring R] (M : CModule R) where
  chain : ℕ → CModule R
  differential : ∀ (n : ℕ), CModuleHomomorphism R (chain (n+1)) (chain n)
  exactness : ∀ (n : ℕ), kernel (differential n) = image (differential (n+1))
  projective : ∀ (n : ℕ), ProjectiveCModule R (chain n)

structure CModuleResolutionEvidence {R : Type u} [Ring R] {M : CModule R} (Rslv : CModuleResolution R M) where
  exactnessClosed : ∀ (n : ℕ), Rslv.exactness n
  projectiveClosed : ∀ (n : ℕ), Rslv.projective n

end CModulesTheoremCanonicalLaneLean
end HautevilleHouse