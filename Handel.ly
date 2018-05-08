\header {
  title = "Hewwoh"
  subtitle = "A. Hilsdottir"
  composer = "G. F. Handel"
}

global = {
  \time 3/8
  \key g \minor

}
\parallelMusic #'(voiceA voiceB) {
%1
  g'16 d g bes a c | 
  g4           r8  |
%2    
  bes8   g     fis | 
  g'16 d g bes a c |
%3  
  g16 d g bes a c | 
  bes8  g     fis | 
%4  
  bes16 g bes d c es | 
  g8      g,    a    |
%5
  d16 g, d' g fis g |  
  bes8   bes' g     | 
%6
  c,16 es d c bes a |
  a8      fis d     |
%7
  bes16 d c bes a g |
  g8      es    c   |
%8
  fis16\prall e d4          |
  d8.             c16 bes a |
%9
  g'16 d es d c f |
  bes8   bes' a   |
%10
  bes,16 es d es a, d |
  g4             f8   |
%11
  g,16 d' es d c bes |
  es8    f    g     |
%12
  a16 f g a bes c |
  f4        a8    |
%13
  d16 bes a bes g' bes, |
  bes8    d,    es      |
%14
  f'16 bes, a bes g bes |
  d8        d'    es    |




}



\score {
  \new PianoStaff
    <<
      \new Staff = "Treble" \relative c' {
        \global \voiceA
      }
      \new Staff = "Bass" \relative c {
        \global \clef bass \voiceB
      }
    >>
}    

