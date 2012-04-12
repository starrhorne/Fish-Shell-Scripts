function reverse_tunnel
   echo "50.57.108.71:1100" | pbcopy
   echo "50.57.108.71:1100 => localhost:80"
   ssh -nNT -R 1100:127.0.0.1:80 hydra1
end
