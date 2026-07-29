import CModulesTheoremCanonicalLaneLean.CModulesAdmissibleClass

namespace HautevilleHouse
namespace CModulesTheoremCanonicalLaneLean

structure HilbertCModulePackage (A : Type u) where
  carrier : Type v
  innerProduct : carrier → carrier → A
  completeness : Prop
  innerProductDefinite : Prop
  moduleAction : A → carrier → carrier
  actionContinuous : Prop

structure HilbertCModuleEvidence {A : Type u} (P : HilbertCModulePackage A) where
  completenessClosed : P.completeness
  innerProductDefiniteClosed : P.innerProductDefinite
  actionContinuousClosed : P.actionContinuous

def HilbertCModuleClosed {A : Type u} (P : HilbertCModulePackage A) : Prop :=
  P.completeness ∧ P.innerProductDefinite ∧ P.actionContinuous

theorem hilbert_cmodule_closed_from_evidence {A : Type u} (P : HilbertCModulePackage A)
    (E : HilbertCModuleEvidence P) : HilbertCModuleClosed P := by
  exact And.intro E.completenessClosed
    (And.intro E.innerProductDefiniteClosed E.actionContinuousClosed)

end CModulesTheoremCanonicalLaneLean
end HautevilleHouse