mut bools := [true, false]
mut ints  := [1, 2, 3, 4]
ints[0]    = -4
ints       = ints[1 .. 3]

mut nums := [1, 2, 3]
println(nums) // "[1, 2, 3]"
println(nums[1]) // "2"
nums[1] = 5
println(nums) // "[1, 5, 3]"
println(nums[0..2]) // slicing gives an array "[1, 5]"
println(nums.len) // "3"
nums = [] // The array is now empty
println(nums.len) // "0"

// Declare an empty array:
users := []int{}

// Declare a single-value array
user := [1]int{}

chars := [['a', 'b']]
	// Comment
	[0]
	.len
println(chars)
