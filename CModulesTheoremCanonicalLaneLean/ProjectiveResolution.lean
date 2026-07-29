import CModulesTheoremCanonicalLaneLean.ModuleCategory

namespace HautevilleHouse
namespace CModulesTheoremCanonicalLaneLean

structure ProjectiveObject (R : Type) [Ring R] (M : ModuleObject R) : Prop where
  projective : M.projective

structure ProjectiveResolution {R : Type} [Ring R] (M : ModuleObject R) where
  chain : ChainComplex R
  augmentation : chain.objects 0 → M.carrier
  exactness : ∀ n, exactAt chain n
  projectiveObjects : ∀ n, ProjectiveObject R (chain.objects n)

structure ProjectiveResolutionPackage {R : Type} [Ring R] (M : ModuleObject R) where
  existsResolution : ProjectiveResolution M
  uniquenessUpToHomotopy : Prop

structure ProjectiveResolutionEvidence {R : Type} [Ring R] {M : ModuleObject R}
    (P : ProjectiveResolutionPackage M) where
  existsResolutionClosed : P.existsResolution
  uniquenessUpToHomotopyClosed : P.uniquenessUpToHomotopy

def ProjectiveResolutionClosed {R : Type} [Ring R] {M : ModuleObject R}
    (P : ProjectiveResolutionPackage M) : Prop :=
  P.existsResolution ∧ P.uniquenessUpToHomotopy

theorem projective_resolution_closed_from_evidence {R : Type} [Ring R] {M : ModuleObject R}
    (P : ProjectiveResolutionPackage M) (E : ProjectiveResolutionEvidence P) :
    ProjectiveResolutionClosed P := by
  exact And.intro E.existsResolutionClosed E.uniquenessUpToHomotopyClosed

end CModulesTheoremCanonicalLaneLean
end HautevilleHouse