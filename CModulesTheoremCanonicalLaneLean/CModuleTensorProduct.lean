import canonicalLaneMathlib.AdmissibleClass
import HCMT.CModuleObjects

namespace HautevilleHouse
namespace CModulesTheoremCanonicalLaneLean

structure TensorProductPackage (C : Type u) (R : CModuleRing C) (M N : Type v) [CModule R M] [CModule R N] where
  tensorProduct : Type v
  bilinearMap : M → N → tensorProduct
  universalProperty : Prop

structure TensorProductEvidence {C : Type u} (R : CModuleRing C) (M N : Type v) [CModule R M] [CModule R N]
    (P : TensorProductPackage C R M N) where
  universalPropertyClosed : P.universalProperty

def TensorProductClosed {C : Type u} (R : CModuleRing C) (M N : Type v) [CModule R M] [CModule R N]
    (P : TensorProductPackage C R M N) : Prop :=
  P.universalProperty

theorem tensor_product_closed_from_evidence {C : Type u} (R : CModuleRing C) (M N : Type v) [CModule R M] [CModule R N]
    (P : TensorProductPackage C R M N) (E : TensorProductEvidence R M N P) : TensorProductClosed R M N P :=
  E.universalPropertyClosed

end CModulesTheoremCanonicalLaneLean
end HautevilleHouse