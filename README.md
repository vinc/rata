# Rata

    88888888ba
    88      "8b                ,d
    88      ,8P                88
    88aaaaaa8P'  ,adPPYYba,  MM88MMM  ,adPPYYba,
    88""""88'    ""     `Y8    88     ""     `Y8
    88    `8b    ,adPPPPP88    88     ,adPPPPP88
    88     `8b   88,    ,88    88,    88,    ,88
    88      `8b  `"8bbdP"Y8    "Y888  `"8bbdP"Y8

Rata has not be implemented yet but the goal is to have a little language that
will compile into Ruby and JavaScript.


## Example

Assuming a `fact.rt` file containing the following Rata program:

    let fact = do |n|
      let f = 1
      let i = 1
      while i < n do
        f *= i
        i += 1
      end
      f
    end

    print fact 20

The following command will compile it into Ruby and execute it:

    ruby rata.rb fact.rt | ruby

And the same for node:

    node rata.js fact.rt | node


## LICENSE

Rata is released under MIT.
