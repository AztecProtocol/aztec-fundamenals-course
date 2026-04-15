# Aztec Fundamentals Course

Welcome to the Aztec fundamentals course. This course will teach you everything you need to know, from scratch, to become an Aztec smart contract developer.

**YOUTUBE LINK**

<p align="center">
    <br />
    <a href="">
        <img src="/img/thumbnail.png" width="145" alt=""/></a>
</p>

Welcome to the repository for the Blockchain Basics Course!

This repository houses course resources and [discussions](https://github.com/AztecProtocol/aztec-fundamentals-course/discussions) for the course.

## Contents 

## Helpful resources

- Noir Discord (for developer help)
- Aztec Discord (for community)
- Aztec documentation
- Noir documentation
- Awesome Aztec
- Aztec starter repo
- Aztec Standards

The code is also in this repository.

## Course Prerequisites

This course is targeted at intermediate Solidity developers. Of course, if this is not you, you can still take this course but you may not fully follow as there is some assumed knowledge including:

- What a blockchain is
- What a zero-knowledge proof is
- [Merkle Trees]()
- Understand hash functions and how they can be used for [commitments]()
- What a nullifier is 
- How state works on Ethereum
- EVM smart contract development preferred

If you would prefer, you can watch the following courses (for free) on Cyfrin Updraft to get up to speed beforehand:
- Blockchain Basics
- Solidity
- Foundry Beginner
- Foundary Advances

## Deployment Steps 

1. Get an RPC endpoint

```bash
export NODE_URL=https://rpc.testnet.aztec-labs.com
```

2. Create but don't deploy a CLI wallet

```bash
aztec-wallet create-account -a main --register-only --node-url $NODE_URL
```

Note the output

3. Get some fee juice on testnet from [GregoJuice bridge](https://gregoswap.anothercoffeefor.me/)

4. Deploy your account

```bash
aztec-wallet deploy-account accounts:main --payment method=fee_juice --node-url $NODE_URL
```

5. Deploy the contract e.g., token contract

```bash
aztec-wallet deploy --node-url $NODE_URL --from accounts:main --payment method=fee_juice --alias token private_token@Token --args accounts:main Token TOK 18
```

6. Interact with the contract

```bash
aztec-wallet send mint_to_public --node-url $NODE_URL --from accounts:main --payment method=fee_juice --contract-address token --args accounts:main 100
```

7. Simulate to read state

```bash
aztec-wallet simulate balance_of_public --node-url $NODE_URL --from accounts:main --contract-address token --args accounts:main
```

## Section 0

This section is just a welcome to the course 

- Meet the instructor
- What you will learn
- What are the prerequisites

## Section 1

What is Aztec and how does it work?

- Account abstraction refresher video
- 45 min course on zero-knowldge proofs

## Section 2

Build a private counter smart contract.

- Finite fields refresher video
- [Grego Juice Bridge to get fee juice](https://gregoswap.anothercoffeefor.me/) on Testnet

## Section 3

Build a private token smart contract.

## Section 4

Well done:)

Send a Tweet/post to let us know you completed the course!!

