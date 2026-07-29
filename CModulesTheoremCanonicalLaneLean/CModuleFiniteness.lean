import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CModulesTheoremCanonicalLaneLean.CModuleStructure

namespace HautevilleHouse
namespace CModulesTheoremCanonicalLaneLean

structure CModuleFinitenessPackage (R : Type*) [CommRing R] (M : CModuleStructurePackage R) where
  generatingSet : Set M.carrier
  finiteGenerators : Prop
  fpResolution : Prop
  gradedRank : Prop

structure CModuleFinitenessEvidence (R : Type*) [CommRing R] (M : CModuleStructurePackage R) (F : CModuleFinitenessPackage R M) where
  finiteGeneratorsTerm : F.finiteGenerators
  fpResolutionTerm : F.fpResolution
  gradedRankTerm : F.gradedRank

def CModuleFinitenessClosed (R : Type*) [CommRing R] (M : CModuleStructurePackage R) (F : CModuleFinitenessPackage R M) : Prop :=
  F.finiteGenerators ∧ F.fpResolution ∧ F.gradedRank

theorem cmodule_finiteness_closed_from_evidence (R : Type*) [CommRing R] (M : CModuleStructurePackage R) (F : CModuleFinitenessPackage R M) (E : CModuleFinitenessEvidence R M F) : CModuleFinitenessClosed R M F := by
  exact And.intro E.finiteGeneratorsTerm (And.intro E.fpResolutionTerm E.gradedRankTerm)

end CModulesTheoremCanonicalLaneLean
end HautevilleHouse