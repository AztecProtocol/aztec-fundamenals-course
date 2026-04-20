# Aztec Fundamentals Course

Welcome to the Aztec fundamentals course. This course will teach you everything you need to know, from scratch, to become an Aztec smart contract developer.

**YOUTUBE LINK**

<p align="center">
    <br />
    <a href="">
        <img src="/img/thumbnail.png" width="500" alt=""/></a>
</p>

Welcome to the repository for the Aztec Fundamentals Course!

This repository houses course resources and [discussions](https://github.com/AztecProtocol/aztec-fundamentals-course/discussions) for the course.

## Contents

- [Helpful Resources](#helpful-resources)
- [Course Prerequisites](#course-prerequisites)
- [Deployment Steps](#deployment-steps)
- [Section 0: Welcome](#section-0)
- [Section 1: What is Aztec?](#section-1)
- [Section 2: Private Counter](#section-2)
- [Section 3: Private Token](#section-3)
- [Section 4: Well Done!](#section-4)
- [Thank you](#thank-you)

## Helpful resources

- [Noir Discord](https://discord.gg/noir-lang) (for developer help)
- [Aztec Discord](https://discord.gg/aztec) (for community)
- [Aztec documentation](https://docs.aztec.network/)
- [Noir documentation](https://noir-lang.org/docs/)
- [Awesome Aztec](https://github.com/AztecProtocol/awesome-aztec)
- [Aztec starter repo](https://github.com/AztecProtocol/aztec-starter)
- [Aztec Standards](https://github.com/defi-wonderland/aztec-standards)
- [WHAT IS ALPHA](https://aztec.network/blog/announcing-the-alpha-network)

The code is also in [this repository](https://github.com/AztecProtocol/aztec-fundamentals-course/tree/main/code).

## Course Prerequisites

This course is targeted at intermediate Solidity developers. Of course, if this is not you, you can still take this course but you may not fully follow as there is some assumed knowledge including:

- What a blockchain is
- What a zero-knowledge proof is
- [Merkle Trees](https://youtube.com/watch?reload=9&v=s7C2KjZ9n2U)
- Understand hash functions and how they can be used for [commitments](https://en.wikipedia.org/wiki/Commitment_scheme)
- What a nullifier is 
- How state works on Ethereum
- EVM smart contract development preferred

If you would prefer, you can watch the following courses (for free) on Cyfrin Updraft to get up to speed beforehand:
- [Blockchain Basics](https://updraft.cyfrin.io/courses/blockchain-basics)
- [Solidity](https://updraft.cyfrin.io/courses/solidity)
- [Foundry Beginner](https://updraft.cyfrin.io/courses/foundry)
- [Foundry Advanced](https://updraft.cyfrin.io/courses/advanced-foundry)

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

- [Account abstraction refresher video](https://www.youtube.com/watch?v=PZ8svp68NXM)
- [45 min course on zero-knowledge proofs](https://www.youtube.com/watch?v=i2FZJBHhy2U)
- [What is alpha](https://aztec.network/blog/announcing-the-alpha-network)

## Section 2

Build a private counter smart contract. [Code](https://github.com/AztecProtocol/aztec-fundamentals-course/tree/main/code/counter)

- [Modular arithmetic](https://youtu.be/mBDaDGBOu-E?si=NfZ4hLF2AO5hbM9O)
- [Finite fields refresher video](https://youtu.be/7XNnds4JKZw?si=tvGa5pnGBEEo-EtJ)
- [Grego Juice Bridge to get fee juice](https://gregoswap.anothercoffeefor.me/) on Testnet

## Section 3

Build a private token smart contract. [Code](https://github.com/AztecProtocol/aztec-fundamentals-course/tree/main/code/private_token)

## Section 4

Well done:)

Send a Tweet/post to let us know you completed the course!!

## Thank you

I just wanted to say a massive thank you to the following people:
- The entire Aztec team for making this possible (namely [Nico](https://x.com/mrnventuro), [Grego](https://github.com/Thunkar), [Jan](https://x.com/janbenes16), [Maddiaa](https://x.com/Maddiaa0), [Niall](https://x.com/niallinio) and [Alejo](https://x.com/alejoamiras) for answering millions of questions)
- [Jess](https://x.com/0xjesstech) for her help with editing (she is awesome)
- [Patrick Collins](https://x.com/PatrickAlphaC) for supporting me in creating long form content (the structure is inspired by courses from Cyfrin Updraft)
- [Josh](https://x.com/critesjosh_): devrel at Aztec for his fab AI resources and docs
- The [Wonderland](https://x.com/Wonderland) team for their learning resources and codebase I modified :)