import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CModulesTheoremCanonicalLaneLean.CModuleStructure

namespace HautevilleHouse
namespace CModulesTheoremCanonicalLaneLean

structure CSubmodulePackage (R : Type*) [CommRing R] (M : CModuleStructurePackage R) where
  subcarrier : Set M.carrier
  addClosed : Prop
  smulClosed : Prop
  submoduleAxioms : Prop

structure CSubmoduleEvidence (R : Type*) [CommRing R] (M : CModuleStructurePackage R) (S : CSubmodulePackage R M) where
  addClosedTerm : S.addClosed
  smulClosedTerm : S.smulClosed
  submoduleAxiomsTerm : S.submoduleAxioms

def CSubmoduleClosed (R : Type*) [CommRing R] (M : CModuleStructurePackage R) (S : CSubmodulePackage R M) : Prop :=
  S.addClosed ∧ S.smulClosed ∧ S.submoduleAxioms

theorem csubmodule_closed_from_evidence (R : Type*) [CommRing R] (M : CModuleStructurePackage R) (S : CSubmodulePackage R M) (E : CSubmoduleEvidence R M S) : CSubmoduleClosed R M S := by
  exact And.intro E.addClosedTerm (And.intro E.smulClosedTerm E.submoduleAxiomsTerm)

structure CQuotientPackage (R : Type*) [CommRing R] (M : CModuleStructurePackage R) (S : CSubmodulePackage R M) where
  quotientCarrier : Type u
  quotientAddGroup : AddCommGroup quotientCarrier
  quotientModule : Module R quotientCarrier
  projectionLinear : Prop
  kernelIsSubmodule : Prop

structure CQuotientEvidence (R : Type*) [CommRing R] (M : CModuleStructurePackage R) (S : CSubmodulePackage R M) (Q : CQuotientPackage R M S) where
  projectionLinearTerm : Q.projectionLinear
  kernelIsSubmoduleTerm : Q.kernelIsSubmodule

def CQuotientClosed (R : Type*) [CommRing R] (M : CModuleStructurePackage R) (S : CSubmodulePackage R M) (Q : CQuotientPackage R M S) : Prop :=
  Q.projectionLinear ∧ Q.kernelIsSubmodule

theorem cquotient_closed_from_evidence (R : Type*) [CommRing R] (M : CModuleStructurePackage R) (S : CSubmodulePackage R M) (Q : CQuotientPackage R M S) (E : CQuotientEvidence R M S Q) : CQuotientClosed R M S Q := by
  exact And.intro E.projectionLinearTerm E.kernelIsSubmoduleTerm

end CModulesTheoremCanonicalLaneLean
end HautevilleHouse