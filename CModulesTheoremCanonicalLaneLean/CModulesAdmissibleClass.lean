import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CModulesTheoremCanonicalLaneLean

structure CModuleSpace where
  carrier : Type
  algebra : Type

structure CModuleAdmittedObject where
  space : CModuleSpace
  complete : Prop
  innerProductDefinite : Prop
  conclusion : complete ∧ innerProductDefinite

structure CModuleEndgameState where
  object : CModuleAdmittedObject

def CModuleWitnessClosed (O : CModuleAdmittedObject) : Prop :=
  O.conclusion

structure AdmissibleClass where
  object : CModuleAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CModuleWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CModulesTheoremCanonicalLaneLean
end HautevilleHouse