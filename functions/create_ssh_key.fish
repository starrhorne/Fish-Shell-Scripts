function create_ssh_key
    if test (count $argv) = 1
        ssh-keygen -t rsa -f "/users/snhorne/.ssh/$argv[1]"
        ssh-add "/users/snhorne/.ssh/$argv[1]"
        cat "/users/snhorne/.ssh/$argv[1].pub" | pbcopy
    else
        echo "Usage: create_ssh_key <file_name>"
    end
end
