import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CModulesTheoremCanonicalLaneLean

structure CModule (R : Type u) [Ring R] where
  carrier : Type v
  add : carrier → carrier → carrier
  zero : carrier
  neg : carrier → carrier
  smul : R → carrier → carrier
  add_assoc : ∀ a b c : carrier, add (add a b) c = add a (add b c)
  add_comm : ∀ a b : carrier, add a b = add b a
  add_zero : ∀ a : carrier, add a zero = a
  zero_add : ∀ a : carrier, add zero a = a
  add_left_neg : ∀ a : carrier, add (neg a) a = zero
  smul_add : ∀ (r : R) (a b : carrier), smul r (add a b) = add (smul r a) (smul r b)
  add_smul : ∀ (r s : R) (a : carrier), smul (r + s) a = add (smul r a) (smul s a)
  mul_smul : ∀ (r s : R) (a : carrier), smul (r * s) a = smul r (smul s a)
  one_smul : ∀ a : carrier, smul 1 a = a
  smul_zero : ∀ (r : R), smul r zero = zero
  zero_smul : ∀ a : carrier, smul 0 a = zero

structure RingAdmissibleObject where
  R : Type u
  [ringR : Ring R]
  carrierAdmitted : Bool
  ringAdmitted : ringR = inferInstance

end CModulesTheoremCanonicalLaneLean
end HautevilleHouse