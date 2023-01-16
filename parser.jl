struct __parserMonad__
    line
    inspect
    parse
    then
end

function read(filepath::String)
    fileHandle = open(filepath)

    global lines = readlines(fileHandle)
    parser_monad()
end

function line(lineNo::Number)
    return lines[lineNo]
end

function inspect(lineInFile::String)
    print(lineInFile)
    print("\n")
    return parser_monad()
end

function parse(lineInFile::String)
    print("parsing")
    return parser_monad()
end

function then(fn)
    fn(lines)
    return parser_monad()
end

function parser_monad()
    return __parserMonad__(line, inspect, parse, then)
end