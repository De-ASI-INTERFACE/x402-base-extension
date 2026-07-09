# x402-Base Specification
**Author:** Richard Patterson | **Ref:** RP-DEASI-BASE-2026-0709-001

## Payment Schema (`scheme: base-erc20`)
```json
{ "scheme": "base-erc20", "chainId": 8453,
  "payTo": "0x<facilitator>", "token": "0x<erc20-or-eth>",
  "amount": "<uint256>", "nonce": "<bytes32>",
  "expiresAt": "<unix-timestamp>",
  "signature": "<eip712-or-eip1271-sig>" }
```

## Base-Specific Invariants
1. **Smart Wallet EIP-1271:** `isValidSignature(hash, sig)` called on contract wallet before settlement
2. **Passkey Authorization:** WebAuthn P-256 signatures accepted via Smart Wallet proxy
3. **OP Stack Fraud Proof Window:** L2 finality within 2s; L1 settlement within 7-day challenge window
4. **Aerodrome vAMM/sAMM:** Volatile and stable pool routing based on token pair type
5. **Base Fee Predictability:** OP Stack EIP-1559 base fee enables exact payment amount calculation
