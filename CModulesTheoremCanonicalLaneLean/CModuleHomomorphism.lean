import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CModulesTheoremCanonicalLaneLean.CModuleStructure

namespace HautevilleHouse
namespace CModulesTheoremCanonicalLaneLean

structure CModuleHomomorphism (R : Type u) [Ring R] (M N : CModule R) where
  map : M.carrier → N.carrier
  map_add : ∀ a b : M.carrier, map (M.add a b) = N.add (map a) (map b)
  map_smul : ∀ (r : R) (a : M.carrier), map (M.smul r a) = N.smul r (map a)

structure CModuleHomomorphismAdmissible (R : Type u) [Ring R] (M N : CModule R) where
  hom : CModuleHomomorphism R M N
  kernelAdmitted : Prop
  imageAdmitted : Prop

end CModulesTheoremCanonicalLaneLean
end HautevilleHouse