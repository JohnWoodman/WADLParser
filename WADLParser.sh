case "$1" in
	-h|--help)
		echo " "
		echo "Very basic script that parses an application.wadl file and grabs all the endpoints to be used for bruteforcing or anything else."
		echo " "
		echo "Usage:"
		echo "$0 [options]"
		echo " "
		echo "options:"
		echo "-h, --help 	show help page"
		echo "-f, --file 	specify path to local application.wadl file"
		echo "-u, --url 	specify url of remote application.wadl file"
		echo " "
		exit 0
		;;
	-f|--file)
		node wadl-2-json.js "$2"
		;;
	-u|--url)
		wget -q -O application.wadl "$2"
		node wadl-2-json.js application.wadl
		rm -rf application.wadl
		;;
	*)
		echo "Error, incorrect flags specified. Use -h, --help to view help page"
		exit 1
		;;
esac

cat swagger.json | jq .paths | jq 'keys' | cut -d'"' -f2 | head -n -1 | tail -n +2 | tr -s '/'
rm -rf swagger.json
