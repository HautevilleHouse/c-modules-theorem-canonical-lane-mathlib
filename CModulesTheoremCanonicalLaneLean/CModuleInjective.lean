import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CModulesTheoremCanonicalLaneLean.CModuleStructure
import HautevilleHouse.CModulesTheoremCanonicalLaneLean.CModuleHomomorphism

namespace HautevilleHouse
namespace CModulesTheoremCanonicalLaneLean

structure InjectiveCModule (R : Type u) [Ring R] (I : CModule R) where
  extendingProperty : ∀ (M N : CModule R), ∀ (f : CModuleHomomorphism R M I), ∀ (g : CModuleHomomorphism R M N),
    (Function.Injective g.map) → (∃ (h : CModuleHomomorphism R N I), ∀ (a : M.carrier), h.map (g.map a) = f.map a)

structure InjectiveCModuleEvidence {R : Type u} [Ring R] {I : CModule R} (E : InjectiveCModule R I) where
  extendingPropertyClosed : E.extendingProperty

end CModulesTheoremCanonicalLaneLean
end HautevilleHouse