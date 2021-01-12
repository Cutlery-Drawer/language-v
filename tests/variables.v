struct EOL {
	name    string
	literal string
	escaped string
}

fn main(){
	foo := "Foo"
	bar := 'Bar'
	cr  := '\r'
	lf  := "\n"
	baz := foo + "$cr$lf" + bar + "${cr}${lf}" + "\x2D" + "${cr + lf}"
	println(baz)
	
	// Struct access
	crlf := EOL {
		name:    "CRLF"
		literal: cr + lf
		escaped: r'\r\n'
	}
	
	abbr := crlf . name
	println("<${!!(crlf.name == abbr)}>")
}
