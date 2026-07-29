import CModulesTheoremCanonicalLaneLean.ModuleDefinitions

namespace HautevilleHouse
namespace CModulesTheoremCanonicalLaneLean

structure ModuleFoundationalInhabitants (R : Type) (M : Type) (Rpk : RingPackage R) (Mpk : ModulePackage R M Rpk) where
  projectiveResolutionTerm : HomologyPackage R M Rpk Mpk
  extGroupsTerm : HomologyPackage R M Rpk Mpk
  torGroupsTerm : HomologyPackage R M Rpk Mpk

default
structure ModuleRouteObligations where
  ring : Type
  module : Type
  ringPkg : RingPackage ring
  modulePkg : ModulePackage ring module ringPkg
  homologyClosed : Prop
  projectiveResolutionClosed : Prop
  extGroupsClosed : Prop
  torGroupsClosed : Prop

default
structure ModuleRouteEvidence (O : ModuleRouteObligations) where
  homologyClosed : O.homologyClosed
  projectiveResolutionClosed : O.projectiveResolutionClosed
  extGroupsClosed : O.extGroupsClosed
  torGroupsClosed : O.torGroupsClosed

theorem module_route_closed_from_evidence (O : ModuleRouteObligations) (E : ModuleRouteEvidence O) : O.homologyClosed := by
  exact E.homologyClosed

end CModulesTheoremCanonicalLaneLean
end HautevilleHouse