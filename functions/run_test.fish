function run_test
    if test (count $argv) = 1
        ruby -Ilib:test $argv[1] 
    else
        echo "Usage: run_test <test_file_name>"
    end
end
