function fibo(col, row) {
	var fib = [0];
	for(let i = 1; i <= col*row ; i++){
		if(i < 3){
			fib.push(1)
		}else{
			fib.push(fib[i-1] + fib[i-2]);
		}

		if(i % col === 0){
			console.log(fib.slice(i-col, i).join(', '))
		}
	}
}