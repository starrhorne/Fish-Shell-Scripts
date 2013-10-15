function vv --description "vagrant helpers"
  if test (count $argv) = 0
    vagrant ssh
  else
    switch $argv[1]
      case log
        echo "Tailing Development Log:"
        vagrant ssh -c "tail -f /vagrant/log/development.log"
      case console
        echo "Loading rails console"
        vagrant ssh -c "cd /vagrant; rails console"
      case restart
        echo "Restarting Development Server:"
        vagrant ssh -c "sudo stop officespace; sudo start officespace;"
      case '*'
        echo "Running" $argv
        vagrant ssh -c "cd /vagrant; $argv"
    end
  end
end
