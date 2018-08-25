function count_handshake(people) {
	let handshake = 0

	for(let i = 1; i < people; i++){
		handshake += i
	}

	return handshake
}