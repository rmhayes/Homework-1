pragma solidity ^0.4.16;


contract Fibonacci {
	function calculate(uint position) returns (uint result) {
		/* Add one variable to hold our greeting */
		if (position == 0 || position == 1) {
			return position;
		} else {
			uint fib1 = 1;
			uint fib2 = 1;
			uint index = 1;
			uint temp;
			while (index < position) {
				temp = fib2;
				fib2 = fib1 + fib2;
				fib1 = temp;
				index = index + 1;
			}
			return fib2;
		}
	}

	/* Add a fallback function to prevent contract payability and non-existent function calls */
	function() {}
}