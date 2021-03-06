\\ test.functions.conversions
\\                           wookay.noh at gmail.com

read(unittest)

assert_equal( []~             , Col()                           )
assert_equal( [1]~            , Col(1)                          )
assert_equal( [1, 2]~         , Col([1, 2])                     )
                                                                
assert_equal( Str(List([]))   , Str(List())                     )
                                                                
assert_equal( Mat(x+1)        , Mat(x+1)                        )
assert_equal( 0               , matid(0)                        )
assert_equal( 1               , matid(1)                        )
assert_equal( [;]             , matid(0)                        )
assert_equal( 1               , matid(2)                        )
assert_equal( [1, 0; 0, 1]    , matid(2)                        )
assert_equal( 1               , matid(3)                        )
                                                                
assert_equal( 2               , Mod(2, 3)                       )
assert_equal( 0               , Mod(3, 3)                       )
                                                                
assert_equal( x^2 + 2*x + 3   , Pol([1,2,3])                    )
assert_equal( 2*x^2 + 3*x + 4 , Pol([2,3,4])                    )
assert_equal( 3*x^2 + 4*x + 5 , Pol([3,4,5])                    )
                                                                
assert_equal( 3*x^2 + 2*x + 1 , Polrev([1,2,3])                 )
assert_equal( [1, 2, 3]       , Vec(x^2 + 2*x + 3)              )

\\ a*x^2 + b*x*y + c*y^2 = Qfb(a, b, c)
a = 1; b = 2; c = -1; d = 2
f(x,y) = a*x^2 + b*x*y + c*y^2
assert_equal( d               , f(1,1)                          )
assert_equal( [1, 1]          , qfbsolve(Qfb(a, b, c), d)       )
assert_equal( [1, 1]          , qfbsolve(Qfb(1, 2, -1), 2)      )

assert_equal( Mod(2, 3) + O(x^16) , Ser(Mod(2, 3))              ) 
assert_equal( Mod(0, 3) + O(x)    , Ser(Mod(2, 3) + 1)          ) 
assert_equal( Mod(1, 3) + O(x^16) , Ser(Mod(2, 3) + 2)          ) 

assert_equal( ["1"]               , Set([1, 1, 1])              ) 
assert_equal( ["1"]               , Set(1)                      ) 
assert_equal( ["\"1\""]           , Set("1")                    ) 

assert_equal( "nil"                  , Str(nil)                    ) 
assert_equal( Vecsmall([97, 98, 99]) , Vecsmall("abc")             ) 
assert_equal( "a"                    , Strchr(97)                  )
assert_equal( "p1"                   , Str(p, 01)                  ) 
assert_equal( "abcdefghijklmno"      , Strchr(vector(15, i, i+96)) )

read("fun.string") \\ split
assert_equal( ["fun", "pari_gp"]     , vecextract(split(Strexpand("$PWD"),"/"), "-1..-2"))

quit
