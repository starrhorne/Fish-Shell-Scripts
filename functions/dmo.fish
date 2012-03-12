function dmo
    if test (count $argv) = 1
        ./script/destroy model $argv[1]
    else
        echo "Usage: dmo <model name>"
    end
end
