const fs = require("fs");

const file = process.argv[2];

console.log("var print = console.log");

fs.readFileSync(file, "utf-8").split(/\r?\n/).forEach(line => {
  console.log(line
    .replace(/do \|(.*)\|/g, "function ($1) {")
    .replace(/if (.*) do/g, "if ($1) {")
    .replace(/while (.*) do/g, "while ($1) {")
    .replace(/else/g, "} else {")
    .replace(/end/g, "}")
    .replace(/let /g, "var ")
  );
});
