# Rata

    88888888ba
    88      "8b                ,d
    88      ,8P                88
    88aaaaaa8P'  ,adPPYYba,  MM88MMM  ,adPPYYba,
    88""""88'    ""     `Y8    88     ""     `Y8
    88    `8b    ,adPPPPP88    88     ,adPPPPP88
    88     `8b   88,    ,88    88,    88,    ,88
    88      `8b  `"8bbdP"Y8    "Y888  `"8bbdP"Y8

Rata is a little language that compiles into JavaScript.

## Example

The following program:

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

Will be compiled into:

    var print = console.log

    var fact = function (n) {
      var f = 1
      var i = 1
      while (i < n) {
        f *= i
        i += 1
      }
      return f
    }

    print (fact (20))

## LICENSE

Rata is released under MIT.
