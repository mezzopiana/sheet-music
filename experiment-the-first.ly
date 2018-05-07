\header {
  title = "Experiment the First"
  composer = "A. Hilsdottir"
}

global = {
  \numericTimeSignature
  \time 4/4
  \key b \minor
  }

trebleNotes = 
{
 R1*4
%first theme (twice)
  \repeat unfold 2 {
    \repeat unfold 3 {fis'16( e d cis b8-.) }
    \alternative {
    {gis-. a( cis-.) bes( d-.)}
    {gis,16( b a8-.) a16( cis bes8-.) bes16( d}
    }
    e16 d b! a b8-.) e,16( a b2)
  }
%second theme (twice)
  \repeat unfold 2 {  
    fis'16( g a fis b8 fis-.) dis( e-.) e16( c e8-.) |
    c16( d e c fis8 c-.) ais( b-.) b16( fis b8-.) |
    g16( a b g) cis16( d e cis) ais16( b cis ais) d16( e fis d) |
    e16( d b! a b8-.) e,16( a b2)
  }
}

%bass fragments/elements
fragmentAonB = {<b, b'>8 fis'16 q fis8 q}
fragmentAonC = {<c c'>8 fis16 q fis8 q}
fragmentBonB = {\repeat unfold 2 {<b, b'> fis'}}
fragmentBonC = {\repeat unfold 2 {<c c'> fis}}

bassNotes =  {
  \clef bass
  %bass notes first theme
    \repeat unfold 4 {\fragmentAonB \fragmentBonB }
      \repeat unfold 2 {
        \repeat unfold 3 {\fragmentAonB \fragmentBonC } 
        \fragmentAonB \fragmentBonB
      }
  %bass notes second theme
    \repeat unfold 2 {
      \fragmentAonC \fragmentBonC 

      \fragmentAonB \fragmentBonB
    }
}


\score {
  \new PianoStaff <<
    \new Staff = "RH"
    \relative c' {
      \global 
      \trebleNotes
  }
    \new Staff = "LH"
    \relative c {
      \global
      \bassNotes
    }
  >>
  \layout {}
  \midi {}
}


