function h --description 'cd to project root'
  while true

    if test -f "./config.ru"
      break
    end
     
    cd ..

  end
end
