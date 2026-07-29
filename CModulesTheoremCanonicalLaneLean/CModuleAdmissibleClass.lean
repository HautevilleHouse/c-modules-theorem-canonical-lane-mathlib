import canonicalLaneMathlib.AdmissibleClass
import HCMT.CModuleObjects

namespace HautevilleHouse
namespace CModulesTheoremCanonicalLaneLean

open CModule

structure AdmissibleClass (C : Type u) (R : CModuleRing C) where
  object : CModule R C  -- The C-module itself
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure {C : Type u} (R : CModuleRing C) (A : AdmissibleClass C R) : Prop :=
  CModuleWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CModulesTheoremCanonicalLaneLean
end HautevilleHouse