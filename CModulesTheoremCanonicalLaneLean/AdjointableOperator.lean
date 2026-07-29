import CModulesTheoremCanonicalLaneLean.HilbertCModule

namespace HautevilleHouse
namespace CModulesTheoremCanonicalLaneLean

structure AdjointableOperatorPackage {A : Type u} (P : HilbertCModulePackage A) where
  operators : Set (P.carrier → P.carrier)
  adjointExists : ∀ f ∈ operators, ∃ f' : P.carrier → P.carrier, ∀ x y, P.innerProduct (f x) y = P.innerProduct x (f' y)
  adjointUnique : ∀ f, (∀ x y, P.innerProduct (f x) y = P.innerProduct x (f' y)) → f' = f
  cstarIdentity : ∀ f ∈ operators, ∀ x, P.innerProduct (f x) (f x) = P.innerProduct (f' (f x)) x

structure AdjointableOperatorEvidence {A : Type u} {P : HilbertCModulePackage A}
    (Q : AdjointableOperatorPackage P) where
  adjointExistsClosed : Q.adjointExists
  adjointUniqueClosed : Q.adjointUnique
  cstarIdentityClosed : Q.cstarIdentity

def AdjointableOperatorClosed {A : Type u} {P : HilbertCModulePackage A}
    (Q : AdjointableOperatorPackage P) : Prop :=
  Q.adjointExists ∧ Q.adjointUnique ∧ Q.cstarIdentity

theorem adjointable_operator_closed_from_evidence {A : Type u} {P : HilbertCModulePackage A}
    (Q : AdjointableOperatorPackage P) (E : AdjointableOperatorEvidence Q) :
    AdjointableOperatorClosed Q := by
  exact And.intro E.adjointExistsClosed
    (And.intro E.adjointUniqueClosed E.cstarIdentityClosed)

end CModulesTheoremCanonicalLaneLean
end HautevilleHouse