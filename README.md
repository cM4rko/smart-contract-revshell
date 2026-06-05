> This project presents an architecture that combines a Python script with an Ethereum
Smart Contract acting as a decentralized payload deployment server. By leveraging the 
inherent censorship-resistance of public blockchains, this model demonstrates a provisioning 
channel that is completely resilient against infrastructure takedowns, censorship, or 
centralized shutdowns.

---

## 🎓 Overview ##

<img src="https://github.com/cM4rko/smart-contract-revshell/blob/main/assets/images/image.png" >

---

## 🌐 Decentralized Architecture ##

- `Contract.sol` -> The Smart Contract deployed on any EVM compatible Blockchain with de function that stores the payload in bytes.
  
- `Exploit.py` -> The Python script that calls the Smart Contract, receive the bytes, decodes the payload and executes it.

---

## 🔝 Blockchain Improvments  ##

- Resilient to:
  - Censorship
  - Takedowns
  - Shutdowns

- Posibility to change the payload at any moment
- Only the contract Owner can change the payload stored in the contract

---
## ⚙️ Snippets ##

**To deploy the contract**
```bash
forge script script/RevShell.s.sol:RevShellScript --rpc-url $NODE --broadcast
```

**To change the payload**
```bash
cast send [Contract Address]  "updateShell(bytes)"  [Payload] --rpc-url $NODE --private-key $PRIVATE_KEY
```

---
## 📽️ PoCs

https://github.com/user-attachments/assets/0d816123-d0e4-4e94-9777-b09eb06c5acb

https://github.com/user-attachments/assets/abec6606-9141-4706-8629-d6861848c2db
