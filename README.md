# Proof-of-Work implementation in Vlang

![PoW using Vlang](https://github.com/bstnbuck/Proof-of-Work-using-Vlang/workflows/PoW%20using%20Vlang/badge.svg?branch=master)

>**This program should only show the principle of Proof-of-Work and Blockchains.**
The Blockchain is programmed in [V](https://github.com/vlang/v). As hash algorithm SHA256 is used.


## Requirements
- Installed [V-Compiler](https://github.com/vlang/v)

## Usage & Build
* Clone the Repo: `git clone https://github.com/bstnbuck/Proof-of-Work-using-Vlang.git`
* Build: ``` v -prod -cc {gcc, msvc, tcc} . ```

##### Execute:
* If you want to execute the Proof-of-Work run the program in console.
* After that enter the leading hex-nulls the hash should have. Should like this: **5** => 00000

##### Example output:
```
Enter number of leading hex-nulls: 5
Random Nonce: 4028111107
Started: 2022-12-05 12:44:54

Hash found!: 00000768f7cf74053c2d7420efa0594e99906bc012c399c40e94a8bc66878b33
Text+Nonce: HelloWorld4028323042 Count: 211935

Stopped: 2022-12-05 12:44:54
Duration: 472ms => 0sec
```

### Information
* The Proof-of-Work function uses a string with a incremented Nonce as hash operators.