import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CModulesTheoremCanonicalLaneLean

structure ModuleCategory where
  R : Type u
  [Ring R]
  objects : Type v → Type (max u v)
  morphisms : ∀ (M N : objects (Type v)), Type (max u v)
  identity : ∀ (M : objects (Type v)), morphisms M M
  composition : ∀ (M N P : objects (Type v)), morphisms M N → morphisms N P → morphisms M P
  associativity : ∀ (M N P Q : objects (Type v)) (f : morphisms M N) (g : morphisms N P) (h : morphisms P Q),
    composition M P Q (composition M N P f g) h = composition M N Q f (composition N P Q g h)
  identityLaw : ∀ (M N : objects (Type v)) (f : morphisms M N),
    composition M M N (identity M) f = f ∧ composition M N N f (identity N) = f

structure CModuleObject where
  R : Type u
  [Ring R]
  M : Type v
  [AddCommGroup M]
  [Module R M]
  basis : List M

end CModulesTheoremCanonicalLaneLean
end HautevilleHouse