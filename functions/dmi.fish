function dmi
    if test (count $argv) = 1
        ./script/destroy migration $argv[1]
    else
        echo "Usage: dmi <migration name>"
    end
end
