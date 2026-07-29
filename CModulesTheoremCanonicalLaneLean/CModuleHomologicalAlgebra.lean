import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CModulesTheoremCanonicalLaneLean.CModuleStructure
import HautevilleHouse.CModulesTheoremCanonicalLaneLean.CModuleHomomorphism
import HautevilleHouse.CModulesTheoremCanonicalLaneLean.CModuleResolution

namespace HautevilleHouse
namespace CModulesTheoremCanonicalLaneLean

structure HomologicalAlgebra (R : Type u) [Ring R] where
  shortExactSequence : Type
  derivedFunctors : Type
  extFunctors : Type

structure HomologicalAlgebraEvidence (R : Type u) [Ring R] (H : HomologicalAlgebra R) where
  shortExactSequenceClosed : H.shortExactSequence
  derivedFunctorsClosed : H.derivedFunctors
  extFunctorsClosed : H.extFunctors

end CModulesTheoremCanonicalLaneLean
end HautevilleHouse