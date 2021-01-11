fn (mut u User) register() (int, string) {
	u.is_registered = true
}

// Function header with embedded comments
fn            /* 1. Function keyword */
foo           /* 2. Function name */
(text string) /* 3. Argument list */
(int, string) /* 4. Multiple return types */
{
	eprintln('file: ' + @FILE + ' | line: ' + @LINE + ' | fn: ' + @MOD + '.' + @FN)
	println(text)
}

// Function header with nested embedded comments
/*=================================================
(1) /* Function */ keyword:          */fn/* ................. /* (1) */
(2) /* Function's */ name:           */foo/* ................ /* (2) */
(3) /* Function's */ arguments:      */(text string)/* ...... /* (3) */
(4) /* Function's */ return type(s): */(int, string)/* ...... /* (4) */
========================*/{
	return true
}


fn bar(baz int, names ...
[]
	[]
string){
	println(names.len)
}

fn main(){
	bar([["John", "Alhadis"]], [["Clueless bastard"]])
	foo('hello world')
}
