function fimake_load
   source "$FIMAKE_HOME/src/functions/info.fish"
   fimake_info "Loading proyect..."
   if not test -d ".proyect"
     fimake_error "This is not a fimake proyect" 1
   end
   fimake_info "Loading enviroment file..."
   if not test -e ".proyect/env"
        fimake_error "This proyect hasn't env file" 1
   end
   while read -l line
       set env $(string split "=" $line -m 1)
       set -x $env[1] $env[2]
   end < ./.proyect/env
   for file in ./.proyect/functions/*
       source $file
   end
   eval "source ./.proyect/init.fish"
end
