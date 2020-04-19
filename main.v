import (
        crypto.sha256
        rand
        time
)

/*
Because this is my first V-project, there is of course still a lot of potential upwards. 
Care should be taken with the leading zeros, as they influence the runtime considerably. 
There is no garbage collection (don't know how yet), so watch memory !!!
*/

fn main() {
	seed := time.now().unix				//seed rand with unix time
	mut nonce := rand.rand_r(&seed)			//make new random nonce
    	text := "HelloWorld"		
	mut count := 0					//count counts the runs
    	println("Random Nonce: "+nonce.str())
	println("Started: "+time.now().str())
        
	//mut hash := sha256.new()			// [OLD] make new SHA256 hash
	for{						//endless while
		//hash.write((text+nonce.str()).bytes())	// [OLD] write the text and nonce into hash as bytes
		hashthex := sha256.hexhash(text+nonce.str())	//instead using hexhhash which generates hash and convert the byte output into hex
		
		if hashthex.starts_with("00000"){
			println('Hash found!: ' + hashthex + ' Text+Nonce: ' + text+nonce.str()+ ' Count: ' + count.str())	//print hash, text&nonce and counter
			break			//stop the loop
		}
		//println(hashthex)		// DEBUG	
		
		hashthex.free()
		//hash.reset()			// [OLD] reset hash
		nonce += 1			//increment nonce and counter by 1
		count += 1
	}
	println("Stopped "+time.now().str())	//print timestamp
}
/*
		Examples:

		Random Nonce: 1473829389
		Started: 2020-04-13 17:08:52
		Hash found!: 000004ea72022cc4bdfb9acd3d77c07574bc2134ed0c7ef8d83422c5d790ba3b Text+Nonce: HelloWorld1474439964 Count: 610575
		Stopped 2020-04-13 17:09:05

		Random Nonce: 1168500507
		Started: 2020-04-13 17:11:06
		Hash found!: 0000005a425fce5c128d60b21c8beb662e73a2908f279e5ae901c071beabcf24 Text+Nonce: HelloWorld1170915732 Count: 2415225
		Stopped 2020-04-13 17:11:56

		Random Nonce: 718789990
		Started: 2020-04-13 17:30:41
		Hash found!: 000000c46cb3857d7702826647a5fefd2bb196ea706195a854dc009644ad7d19 Text+Nonce: HelloWorld719159603 Count: 369613
		Stopped 2020-04-13 17:30:49

		Random Nonce: 1282586321
		Started: 2020-04-13 17:31:36
		Hash found!: 000000baf0d180206b2df7e5b1deb1b9f4324b43d04fd11bc8b592cf4e780e14 Text+Nonce: HelloWorld1283307941 Count: 721620
		Stopped 2020-04-13 17:31:51

*/