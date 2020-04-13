# Proof-of-Work implementation in Vlang

>**Not all functions are implemented yet! This program should only show the principle of Proof-of-Work and Blockchains.**
The Blockchain is programmed in [V](https://github.com/vlang/v). As hash algorithm is used SHA256.


## Requirements
- C-Compiler
- Installed [V-Compiler](https://github.com/vlang/v)

## Usage
`git clone https://github.com/bstnbuck/Proof-of-Work-using-Vlang.git`

Execute/Debug:
* If you want to execute the Proof-of-Work run the program in console with `v run main.v`.

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
