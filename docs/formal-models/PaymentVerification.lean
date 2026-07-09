-- x402-Base | Author: Richard Patterson
import Mathlib.Data.Finset.Basic
namespace X402Base
structure PaymentAuth where
  nonce : Nat; amount : Nat; expires_at : Nat
  deriving Repr
structure FacilitatorState where
  used_nonces : Finset Nat; block_time : Nat
  deriving Repr
def verify (a : PaymentAuth) (s : FacilitatorState) : Prop :=
  a.nonce ∉ s.used_nonces ∧ s.block_time ≤ a.expires_at
theorem base_replay_prevented (a : PaymentAuth) (s : FacilitatorState)
    (h : verify a s) : a.nonce ∉ s.used_nonces := h.1
end X402Base
