import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CModulesTheoremCanonicalLaneLean.CModuleStructure

namespace HautevilleHouse
namespace CModulesTheoremCanonicalLaneLean

structure CTensorProductPackage (R : Type*) [CommRing R] (M N : CModuleStructurePackage R) where
  tensorCarrier : Type u
  tensorAddGroup : AddCommGroup tensorCarrier
  tensorModule : Module R tensorCarrier
  bilinearMap : M.carrier → N.carrier → tensorCarrier
  universalProperty : Prop
  tensorProductAxioms : Prop

structure CTensorProductEvidence (R : Type*) [CommRing R] (M N : CModuleStructurePackage R) (T : CTensorProductPackage R M N) where
  universalPropertyTerm : T.universalProperty
  tensorProductAxiomsTerm : T.tensorProductAxioms

def CTensorProductClosed (R : Type*) [CommRing R] (M N : CModuleStructurePackage R) (T : CTensorProductPackage R M N) : Prop :=
  T.universalProperty ∧ T.tensorProductAxioms

theorem ctensor_product_closed_from_evidence (R : Type*) [CommRing R] (M N : CModuleStructurePackage R) (T : CTensorProductPackage R M N) (E : CTensorProductEvidence R M N T) : CTensorProductClosed R M N T := by
  exact And.intro E.universalPropertyTerm E.tensorProductAxiomsTerm

end CModulesTheoremCanonicalLaneLean
end HautevilleHouse