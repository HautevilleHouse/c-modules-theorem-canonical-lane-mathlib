import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CModulesTheoremCanonicalLaneLean.CModuleStructure
import HautevilleHouse.CModulesTheoremCanonicalLaneLean.CModuleHomomorphism

namespace HautevilleHouse
namespace CModulesTheoremCanonicalLaneLean

structure ProjectiveCModule (R : Type u) [Ring R] (P : CModule R) where
  liftingProperty : ∀ (M N : CModule R), ∀ (f : CModuleHomomorphism R P N), ∀ (g : CModuleHomomorphism R M N),
    (Function.Surjective g.map) → (∃ (h : CModuleHomomorphism R P M), ∀ (a : P.carrier), g.map (h.map a) = f.map a)

structure ProjectiveCModuleEvidence {R : Type u} [Ring R] {P : CModule R} (E : ProjectiveCModule R P) where
  liftingPropertyClosed : E.liftingProperty

end CModulesTheoremCanonicalLaneLean
end HautevilleHouse