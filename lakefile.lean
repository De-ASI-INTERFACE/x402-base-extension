import Lake
open Lake DSL
package «x402-base» where
  name := "x402-base"
require mathlib from git
  "https://github.com/leanprover-community/mathlib4" @ "v4.14.0"
lean_lib «X402Base» where
  roots := #[`X402Base]
