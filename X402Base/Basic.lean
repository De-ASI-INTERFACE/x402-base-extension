-- ============================================================
-- x402-Base: Basic Re-export Shim
-- Author: Richard Patterson (@De-ASI-INTERFACE)
-- Date: 2026-07-09
-- Chain: Base (Coinbase L2) / ERC-20 / Aerodrome Finance
--
-- Re-exports X402Base.PaymentVerification as the single
-- authoritative source of all shared types and definitions.
-- Chain-prefixed theorem aliases are provided for ergonomic use.
-- ============================================================
import X402Base.PaymentVerification

namespace X402Base

/-- Alias: replay prevention under the Base chain prefix.
    result type: a.nonce ∉ s.used_nonces. -/
theorem base_replay_prevented
    (a : PaymentAuth) (s : FacilitatorState) (h : verify a s) :
    a.nonce ∉ s.used_nonces :=
  replay_prevented a s h

/-- Alias: expiry enforcement under the Base chain prefix.
    Delegates to within_expiry: s.block_time ≤ a.expires_at. -/
theorem base_not_expired
    (a : PaymentAuth) (s : FacilitatorState) (h : verify a s) :
    s.block_time ≤ a.expires_at :=
  within_expiry a s h

end X402Base
