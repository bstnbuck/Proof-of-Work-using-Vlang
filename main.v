import crypto.sha256
import rand {u32}
import time {now}
import os {input}

/*
Because this is my first V-project, there is of course still a lot of potential upwards. 
Care should be taken with the leading zeros, as they influence the runtime considerably. 
There is no garbage collection (don't know how yet), so watch memory !!!
*/
fn main() {
	mut nonce := rand.u32() // make new random nonce
	mut count := 0 // count counts the runs
	text := 'HelloWorld'
	println('Random Nonce: ' + nonce.str())
	println('Started: ' + time.now().str())
	mut hashthex := ''
	mut i := 0
    nulls := os.input('Enter leading hex-nulls: ')
    for i < nulls.len{
        if nulls[i].str() != '0'{
            println("ERROR: Must be nulls!")
            exit(1)
        }
        i++
    }
	for { // endless while
		hashthex = sha256.hexhash(text + nonce.str())
		if hashthex.starts_with(nulls) {
			println('Hash found!: $hashthex  Text+Nonce: ' + text + nonce.str() + ' Count: ' +
				count.str()) // print hash, text&nonce and counter
			break // stop the loop
		}
		// println(hashthex)		// DEBUG
		hashthex.free()
		nonce++ // increment nonce and counter by 1
		count++
	}
	println('Stopped ' + time.now().str()) // print timestamp
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
