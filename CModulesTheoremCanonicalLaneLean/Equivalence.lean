import CModulesTheoremCanonicalLaneLean.ProjectiveResolution

namespace HautevilleHouse
namespace CModulesTheoremCanonicalLaneLean

structure DerivedEquivalence (R S : Type) [Ring R] [Ring S] where
  functor : (ModuleCategory R) → (ModuleCategory S)
  quasiInverse : (ModuleCategory S) → (ModuleCategory R)
  unit : ∀ (X : ModuleCategory R) , functor (quasiInverse X) ≅ X
  counit : ∀ (Y : ModuleCategory S) , quasiInverse (functor Y) ≅ Y
  triangleIdentities : Prop

structure EquivalenceEvidence (R S : Type) [Ring R] [Ring S] (E : DerivedEquivalence R S) where
  unitIso : ∀ X, E.unit X
  counitIso : ∀ Y, E.counit Y
  triangleIdentitiesClosed : E.triangleIdentities

def DerivedEquivalenceClosed (R S : Type) [Ring R] [Ring S] (E : DerivedEquivalence R S) : Prop :=
  (∀ X, Nonempty (E.unit X)) ∧ (∀ Y, Nonempty (E.counit Y)) ∧ E.triangleIdentities

theorem equivalence_closed_from_evidence (R S : Type) [Ring R] [Ring S]
    (E : DerivedEquivalence R S) (Ev : EquivalenceEvidence R S E) :
    DerivedEquivalenceClosed R S E := by
  refine ⟨λ X => ⟨Ev.unitIso X⟩, λ Y => ⟨Ev.counitIso Y⟩, Ev.triangleIdentitiesClosed⟩

end CModulesTheoremCanonicalLaneLean
end HautevilleHouse