#!/bin/bash

# create a boilerplate for index (allows adding js, css or all)

# create both js and cs if no arguments
[[ -z $1 ]] && (> script.js; > style.css;)


# create js if -j is first arg 
[[ $1 == "-j" ]] && > script.js;

# create css if -c or -s is first arg 
[[ $1 == "-c" || $1 == '-s' ]] && > style.css;


# create index and write the boiler plate
# boilerplate from https://www.freecodecamp.org/news/basic-html5-template-boilerplate-code-example/
cat > index.html <<- EOM
<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>HTML 5 Boilerplate</title>
    <link rel="stylesheet" href="style.css">
  </head>
  <body>

	<script src="index.js"></script>
  </body>

</html>
EOM

