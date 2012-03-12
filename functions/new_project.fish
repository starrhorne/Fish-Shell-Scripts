function new_project
    if test (count $argv) = 1
        mkdir -p $argv[1]/support/{mockups,specs,testbench,resources,contracts,db,archive}
    else
        echo "Usage: new_project <project_name>"
    end
end
