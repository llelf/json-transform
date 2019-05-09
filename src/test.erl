-module(test).
-compile({parse_transform, json_parser}).
-export([test/1
         ,test2/0
         ,test3/0
        ]).

test(V) ->
    <<{{
      "name"  : "Jack (\"Bee\") Nimble",
      "format": {
                  "type"      : "rect",
                  "width"     : 1920,
                  "height"    : (-1080),
                  "interlace" : false,
                  "frame rate": V
                },
      "погода": "🌦️"
     }}>>.

test2() ->
    <<{
        ["Sunday", "Monday", "Tuesday", "Wednesday",
          "Thursday", "Friday", "Saturday"]
    }>>.

test3() ->
    <<{
        [
         [0, -1, 0.0],
         [1, 0, 0],
         [0, 0, -1.1]
        ]
    }>>.
