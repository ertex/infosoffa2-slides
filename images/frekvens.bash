clear
echo ' __      __  _   _                    __                 _                                                    _   _             __   _   _            _     _   _   _    __   _   _   _   _          _'
echo ' \ \    / / (_) (_)                  / _|               | |                                                  (_) (_)           / _| (_) (_)          | |   (_) | | | |  / _| (_) (_) | | | |        | |'
echo '  \ \  / /    __ _    __ _    __ _  | |_   _ __    ___  | | __ __   __   ___   _ __    ___    ___   _ __       __ _   _ __    | |_    ___    _ __    | |_   _  | | | | | |_    __ _  | | | |   ___  | |_'
echo '   \ \/ /    / _` |  / _` |  / _` | |  _| | "__|  / _ \ | |/ / \ \ / /  / _ \ | "_ \  / __|  / _ \ | "_ \     / _` | | "__|   |  _|  / _ \  | "__|   | __| | | | | | | |  _|  / _` | | | | |  / _ \ | __|'
echo '    \  /    | (_| | | (_| | | (_| | | |   | |    |  __/ |   <   \ V /  |  __/ | | | | \__ \ |  __/ | | | |   | (_| | | |      | |   | (_) | | |      | |_  | | | | | | | |   | (_| | | | | | |  __/ | |_ '
echo '     \/      \__,_|  \__, |  \__, | |_|   |_|     \___| |_|\_\   \_/    \___| |_| |_| |___/  \___| |_| |_|    \__,_| |_|      |_|    \___/  |_|       \__| |_| |_| |_| |_|    \__,_| |_| |_|  \___|  \__|'
echo '                      __/ |   __/ |                                                                                                                                                                      '
echo '                     |___/   |___/'

for i in $(seq 0 10) ; do
    F=$(curl -s -X GET --header 'Accept: application/json' 'https://driftsdata.statnett.no/RestApi/Frequency/BySecond' \
        | jq -rj '.Measurements[-1]')

    printf "\x1b[8;1H"
    printf "%.4f Hz    \x00" "$F" | figlet -w 230
    sleep 1
done

exit 100
