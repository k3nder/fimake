function fimake_frtem
    set home "$FIMAKE_HOME/templates/$argv[1]"
    echo "TEMPLATE: $home"
    set -x "FIMAKE_PROYECT_NAME" "$argv[2]"
    echo "NAME: $FIMAKE_PROYECT_NAME"
    if not test -d "$home"
        fimake_error "Templete doesn't exists"
    end
    source $home/new.fish
    mkdir ./.proyect
    cp -r $home/functions ./.proyect/functions
    cp -r $home/env ./.proyect/env
    cp -r $home/init.fish ./.proyect/init.fish
end
