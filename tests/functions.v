fn (mut u User) register() {
	u.is_registered = true
}

fn foo
(text string) {
	eprintln('file: ' + @FILE + ' | line: ' + @LINE + ' | fn: ' + @MOD + '.' + @FN)
	println(text)
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
