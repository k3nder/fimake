function fimake_new
    mkdir "$argv[1]"
    cd "$argv[1]"
    mkdir ".proyect"
    mkdir ".proyect/functions"
    touch ".proyect/init.fish"
    touch ".proyect/env"
end
