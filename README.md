# Proof-of-Work implementation in Vlang

![PoW using Vlang](https://github.com/bstnbuck/Proof-of-Work-using-Vlang/workflows/PoW%20using%20Vlang/badge.svg?branch=master)

>**Not all functions are implemented yet! This program should only show the principle of Proof-of-Work and Blockchains.**
The Blockchain is programmed in [V](https://github.com/vlang/v). As hash algorithm is used SHA256.


## Requirements
- C-Compiler
- Installed [V-Compiler](https://github.com/vlang/v)

## Usage
`git clone https://github.com/bstnbuck/Proof-of-Work-using-Vlang.git`

##### Execute:
* If you want to execute the Proof-of-Work run the program in console with `v run main.v`.
* After that enter the leading hex-nulls the hash should have. Should like this: **0000**
    => Otherwise an error will be printed and the program exits.

##### Example output:
```
Enter leading hex-nulls: 0000
Random Nonce: 3322132513
Started: 2020-08-08 23:43:29

Hash found!: 0000e896ab477e8a1dd9392f1133c717c026cb2ce07a2486ba90812728ce4838
Text+Nonce: HelloWorld3322135425 Count: 2912

Stopped: 2020-08-08 23:43:30
Duration: 48ms => 0sec
```
Using **VS-Code**:
With VS-Code you can easily edit the Code, but be very careful of what you change!

#### Blockchain:
1.  After starting the program begins automatically. Nothing else to do!

### Information
* The Code is self-explanatory commented.
* The Proof-of-Work function uses a string with a incremented Nonce as hash operators.
* **Important! Since V has no garbage collection, the consumption of RAM is constantly increasing, this should be observed permanently.** I will look for a solution in the near future.

### The following is still being implemented
* More functions
* A full Blockchain application
