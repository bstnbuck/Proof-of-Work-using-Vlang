import crypto.sha256
import rand
import time
import os

/*
Because this is my first V-project, there is of course still a lot of potential upwards. 
Care should be taken with the leading zeros, as they influence the runtime considerably. 
There is no garbage collection (don't know how yet), so watch memory !!!
*/
fn main() {
	// enter the leading hex-nulls the hash should have
	nulls := os.input('Enter leading hex-nulls: ')
	mut i := 0
	for i < nulls.len {
		if nulls[i].str() != '0' {
			println('ERROR: Must be nulls!')
			exit(1)
		}
		i++
	}
	mut nonce := rand.u32() // make new random nonce
	mut count := 0 // count counts the runs
	text := 'HelloWorld'
	println('Random Nonce: ' + nonce.str())
	timestamp_start := time.now()
	println('Started: ' + timestamp_start.str())
	mut hashthex := ''
	for { // endless while
		hashthex = sha256.hexhash(text + nonce.str())
		if hashthex.starts_with(nulls) {
			println('\nHash found!: $hashthex \nText+Nonce: ' + text + nonce.str() + ' Count: ' +
				count.str() + '\n') // print hash, text&nonce and counter
			break // stop the loop
		}
		// println(hashthex)		// DEBUG
		hashthex.free()
		nonce++ // increment nonce and counter by 1
		count++
	}
	timestamp_stop := time.now()
	duration := timestamp_stop.unix_time_milli() - timestamp_start.unix_time_milli()
	println('Stopped: ' + timestamp_stop.str()) // print timestamp
	println('Duration: ' + duration.str() + 'ms => ' + (duration / 1000).str() + 'sec') // print duration
}
