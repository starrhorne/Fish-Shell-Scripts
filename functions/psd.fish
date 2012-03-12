function psd
    if test (count $argv) = 1
        open -a /Applications/Adobe\ Photoshop\ CS5/Adobe\ Photoshop\ CS5.app $argv[1]
    else
        echo "Usage: psd <image_path>"
    end
end
