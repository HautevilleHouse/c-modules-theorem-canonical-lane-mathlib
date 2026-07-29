import CModulesTheoremCanonicalLaneLean.AdjointableOperator

namespace HautevilleHouse
namespace CModulesTheoremCanonicalLaneLean

structure KasparovModulePackage {A B : Type u} [CStarAlgebra A] [CStarAlgebra B]
    (P : HilbertCModulePackage A) (Q : AdjointableOperatorPackage P) (R : HilbertCModulePackage B) where
  operatorF : R.carrier → R.carrier
  selfAdjoint : ∀ x, R.innerProduct (operatorF x) x = R.innerProduct x (operatorF x)
  compactResidual : IsCompact (λ x : R.carrier => x - operatorF (operatorF x))
  commutatorCompact : ∀ a : A, IsCompact (λ x : R.carrier => a • (operatorF x) - operatorF (a • x))

structure KasparovModuleEvidence {A B : Type u} [CStarAlgebra A] [CStarAlgebra B]
    {P : HilbertCModulePackage A} {Q : AdjointableOperatorPackage P} {R : HilbertCModulePackage B}
    (K : KasparovModulePackage P Q R) where
  selfAdjointClosed : K.selfAdjoint
  compactResidualClosed : K.compactResidual
  commutatorCompactClosed : K.commutatorCompact

def KasparovModuleClosed {A B : Type u} [CStarAlgebra A] [CStarAlgebra B]
    {P : HilbertCModulePackage A} {Q : AdjointableOperatorPackage P} {R : HilbertCModulePackage B}
    (K : KasparovModulePackage P Q R) : Prop :=
  K.selfAdjoint ∧ K.compactResidual ∧ K.commutatorCompact

theorem kasparov_module_closed_from_evidence {A B : Type u} [CStarAlgebra A] [CStarAlgebra B]
    {P : HilbertCModulePackage A} {Q : AdjointableOperatorPackage P} {R : HilbertCModulePackage B}
    (K : KasparovModulePackage P Q R) (E : KasparovModuleEvidence K) :
    KasparovModuleClosed K := by
  exact And.intro E.selfAdjointClosed
    (And.intro E.compactResidualClosed E.commutatorCompactClosed)

end CModulesTheoremCanonicalLaneLean
end HautevilleHouse