import CModulesTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CModulesTheoremCanonicalLaneLean

structure RingPackage (R : Type) where
  ringStructure : Ring R
  commutative : Prop
  noetherian : Prop

default
structure ModulePackage (R : Type) (M : Type) (Rpk : RingPackage R) where
  moduleStructure : Module R M
  finitelyGenerated : Prop
  projective : Prop
  flat : Prop

default
structure HomologyPackage (R : Type) (M : Type) (Rpk : RingPackage R) (Mpk : ModulePackage R M Rpk) where
  projectiveResolution : Prop
  extGroups : Prop
  torGroups : Prop

default
structure ModuleAnalyticFoundation where
  ring : Type
  ringPkg : RingPackage ring
  module : Type
  modulePkg : ModulePackage ring module ringPkg
  homology : HomologyPackage ring module ringPkg modulePkg
  homologyEvidence : homology.projectiveResolution ∧ homology.extGroups ∧ homology.torGroups

end CModulesTheoremCanonicalLaneLean
end HautevilleHouse