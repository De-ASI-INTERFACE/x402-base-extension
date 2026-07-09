# x402-Base Extension
**HTTP 402 Payment-Gated Routing on Base (Coinbase L2)**
**Author:** Richard Patterson (@De-ASI-INTERFACE) | **Version:** 1.0.0 | **Date:** 2026-07-09

## Overview
The x402-Base Extension adapts the x402 HTTP 402 payment standard to Base (Coinbase's OP Stack L2, chainId: 8453). It uses EIP-712 typed signatures, ERC-20 and native ETH payments, and Uniswap v3 (Base) + Aerodrome Finance as canonical routing surfaces. Unique to Base: Smart Wallet (ERC-4337 + EIP-1271) enables passkey/biometric payment authorization without private key management. Lean 4 proofs verify nonce replay prevention, block deadline enforcement, and EIP-1271 contract signature validity.
**Reference ID:** RP-DEASI-BASE-2026-0709-001
