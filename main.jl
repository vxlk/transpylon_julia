include("parser.jl")

read("c.c").
    inspect(line(5)).
    then((_) -> print("I am going to print line 2 of the file\n")).
    then((lines) -> print(lines[2]))