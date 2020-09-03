var wadl2json = require("./wadl2json");
var fs = require('fs');

var options = {
		sort: false, // set it to true if you want to sort operations and verbs in the alphabetical order
		stringify: true, // set it to true if you want to get a string instead of an object
		prettify: true, // set it to true if you want to get an indented string (stringify=true required)

		title: "Generated", // the title of the API (required)
		description: "Simple API description", // the description of the API (required)
		version: "1.4.2", // the version of the API (required)

		blacklist: ["/internal"] // the path roots you want to blacklist
};

var wadl_file = process.argv[2];

var swaggerFromFile = wadl2json.fromFile(wadl_file, options);

fs.writeFile('swagger.json', swaggerFromFile, function(err, result) {
	if(err) console.log('error', err);
});


