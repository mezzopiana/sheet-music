\version 2.18.2

\paper {
    page-count = #2
    ragged-last-bottom = ##f
}

\header {
    title = "Fairest Isle"
    subtitle = "from King Arthur"
    composer = "H. Purcell"
}

global = {
    \key f \major
    \time 3/4
}

voiceNotes = {
    \global \dynamicUp 
    a'4\mf c2 | f,2 c'4 | d8( c d e) d4 | c2 a4 | a8( bes c4) g | a8( g f4) e | d8( e f4) g | e2. | 
    a4\p c2 | f,2 c'4 | d8( c d e) d4 | c2 a4 | a8( bes c4) g | a8( g f4) e |
    d8( e f4) g | e2. | g4 e2 | a2 f4 | bes4 g2 | a2 a4 | a8( bes c d) c4 | fis,2 g4 | g8( a bes a) g4 |
    g2. | c4 a2 | f2 a4 | bes8( a g a) g( f) | g4( c,) c | f8( e d4) bes' | bes8( a g4) c | c8( bes a4) g8( f) | f2. \bar "|."  
}

pianoRH = {
    \global 
    <a c f>4\mf <<{f'( e)} \\ {<g, bes>2} >> | 
    <<{e'4( d)}\\{<f, a>2}>> <f c'>4 | 
    <f a d>( <f bes d>) <<{d'8 e}\\{<f, bes>4}>> | 
    <<{<c' f>4. <c g'>8 <c a'>4 }\\{a8 g a bes a4}>> | 
    <c a'>4 <c g'> <c e> | 
    <<{f2}\\{c4 d}>> <c e>4 |
    <<{d8 e f4}\\{c2}>> <b g'>4 |
    <c e>2. |
    r4 <<{a'4 c}\\{c,8 d e4}>> |
    <<{f2 f8 e}\\{e4 d c}>> |
    <bes d>2 <<{d8 e}\\{bes4}>> |
    <<{f'8[ e f g]}\\{a,4. c8}>> <f a>4 |
    <c a'>4 <c g'> <c e> |
    <<{f2}\\{c4 d}>> s4 |
    <<{d8 e f4}\\{c2}>> <b g'>4 |
    <c e>8 b c d e f |
    r4 <e g>( <c e>) |
    <<{r4 a'( f)}\\{c2( d4)}>> |
    <<{r4 bes'( g)}\\{bes,2 c4}>> |
    <<{r4 a'( f)}\\{a,2( c4)}>> |
    r4 <c a'c>( <c f a>) |
    r4 <d f a>( <f a d>) | 
    <<{<g d'>( g4.) f8}\\{d2( <g, d'>4) }>> |
    <<{e'8[ f g f]}\\{c2}>> <c e>4
}

pianoLH = {
    \global \dynamicUp <f, f'>4 <c c'>2 | 
    <d d'>2 <a a'>4 | 
    <bes bes'>2 <bes bes'>4 | 
    <f f'>2. | 
    f''4 <e g> <<{c'8 bes}\\{c,4}>> | 
    <<{a'4}\\{f8[ e]}>> <d b'>4 <e g> | 
    <<{a2 g4}\\{f4 d g,}>> |
    <<{g'2.}\\{c,8 d c bes a g}>> |
    f4 f' s |
    d2 a4 |
    <bes f'>2 q4  |
    <f f'>2 q4 |
    f'4 <e g> <<{c'8 bes}\\{c,4}>> |
    <<{a'4}\\{f8[ e]}>> <d b'>4 s |
    <<{a'2}\\{f4 d}>> <g, g'>4 |
    <c g'>2. |
    <c, c'>2( c'4) |
    <a f'>2( <d f>4) |
    <g, d' g>2( <c e>4) | 
    <f, c' f>2( <f' a>4) |
    es2. | 
    d4( c) bes |
    c2. | 
    <g g'>8(\< <a a'> <bes bes'>\! <a a'>\> <g g'> <f f'>)\! |

      
}

verseOne = \lyricmode {
    Fair -- est Isle, all isles __ ex -- cel -- ling, Cra -- dled mid __ the west -- ern seas, Where sweet Peace hath made __ her dwell -- ing, Where __ she sport -- eth at __ her ease! Bles -- sed Isle, where glad -- ness reign -- eth, Where __ the wan __ d'rer find -- eth rest, Where the churl a -- lone __ com -- plain -- eth, Where __ the brave __ and true __ are __ blest! 
}


\score {
        <<
        <<
        \new Staff {
            \new Voice = "voice" \relative c' {
            \global \voiceNotes
            }
        }

        \new Lyrics { \lyricsto "voice" \verseOne }
        >>

        \new PianoStaff <<  

            \new Staff = "RH" \relative c' {
                \global \pianoRH
            }

            \new Staff = "LH" \relative c {
                \global \clef bass \pianoLH 
            }
        >>
    >> 
}