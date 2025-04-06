function fimake
    for func in $FIMAKE_HOME/src/functions/*
        source $func
    end
    if test "$argv[1]" = "new"
        if not set -q argv[2]
            read -P "Proyect name: " name
            fimake_new "$name"
        else
            if not set -q argv[3]
                fimake_error "Proyect name not found"
            end
            fimake_frtem "$argv[2]" "$argv[3]"
        end
    else if test "$argv[1]" = "load"
        fimake_load
    else
        fimake_error "function not found" 1
    end
end
