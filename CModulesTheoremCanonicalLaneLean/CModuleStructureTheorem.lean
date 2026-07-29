import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CModulesTheoremCanonicalLaneLean.CModuleStructure
import HautevilleHouse.CModulesTheoremCanonicalLaneLean.CModuleHomomorphism
import HautevilleHouse.CModulesTheoremCanonicalLaneLean.CSubmoduleQuotient
import HautevilleHouse.CModulesTheoremCanonicalLaneLean.CTensorProduct
import HautevilleHouse.CModulesTheoremCanonicalLaneLean.CModuleFiniteness

namespace HautevilleHouse
namespace CModulesTheoremCanonicalLaneLean

structure CModuleStructureTheoremPackage (R : Type*) [CommRing R] where
  classificationStatement : Prop
  invariantFactorDecomposition : Prop
  primaryDecomposition : Prop
  closureUnderOperations : Prop

structure CModuleStructureTheoremEvidence (R : Type*) [CommRing R] (T : CModuleStructureTheoremPackage R) where
  classificationStatementTerm : T.classificationStatement
  invariantFactorDecompositionTerm : T.invariantFactorDecomposition
  primaryDecompositionTerm : T.primaryDecomposition
  closureUnderOperationsTerm : T.closureUnderOperations

def CModuleStructureTheoremClosed (R : Type*) [CommRing R] (T : CModuleStructureTheoremPackage R) : Prop :=
  T.classificationStatement ∧ T.invariantFactorDecomposition ∧ T.primaryDecomposition ∧ T.closureUnderOperations

theorem cmodule_structure_theorem_closed_from_evidence (R : Type*) [CommRing R] (T : CModuleStructureTheoremPackage R) (E : CModuleStructureTheoremEvidence R T) : CModuleStructureTheoremClosed R T := by
  exact And.intro E.classificationStatementTerm (And.intro E.invariantFactorDecompositionTerm (And.intro E.primaryDecompositionTerm E.closureUnderOperationsTerm))

end CModulesTheoremCanonicalLaneLean
end HautevilleHouse