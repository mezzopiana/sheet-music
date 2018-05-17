\header {
  title = "Summer in the City"
  composer = "arr. W. Thielen"
}

global = {
  \key a \minor
  \time 4/4
  \numericTimeSignature 
}




%MUSIC

sopranoNotes = {
  R1*2 | e1( | f1) |
  a1~ | a1~ | a1~ | a2 gis |
  R1*2 |
}

mezzoNotes = {
  R1*2 | e1( | f1) |
  e8. d16 c d8 e16~ e d8 c16~ c d e8 | f8. es16 c es8 f16~ f es8 c16~ c4 | e8. d16 c d8 e16~ e d8 c16~ c d e8 | f8. es16 c es8 f16~ f es8 c16~ c4 |
}

altoNotes = {
  R1*2 | c1~ | c1 |
}

tenorNotes = {
  R1*2 | a1~ | a1 |
}

bassNotes = {
  R1*2 | a1~ | a1 |
}

%PIANO
\parallelMusic #'(pianoRH pianoLH) {
%1
  <c e>8. d16 c d8 e16~ e d8 c16~ c d e8 |
  <<{e4 a e a}\\{a,1}>>  |
%2
  <c f>8. es16 c es8 f16~ f es8 c16~ c es f8 |
  <<{f'4 a f a}\\{a,1}>> |
%3
  <c e>8. d16 c d8 e16~ e d8 c16~ c d e8 |
  <<{e4 a e a}\\{a,1}>>  |
%4
  <c f>8. es16 c es8 f16~ f es8 c16~ c es f8 |
  <<{f'4 a f a}\\{a,1}>> |
}

%LYRICS

\book {
  \score {
    <<
      \new StaffGroup <<
        \new Staff = "soprano" \with instrumentName "Soprano" \relative c'  {\global 
          \sopranoNotes 
        }
        \new Staff = "mezzo" \relative c' {\global 
          \mezzoNotes 
        }
        \new Staff = "alto" \relative c' {\global 
          \altoNotes 
        }
        \new Staff = "tenor" \relative c' \transpose c c' {\global 
          \tenorNotes
        }
        \new Staff = "bass" \relative c {\global 
          \clef bass \bassNotes
        }
      
      >>
      \new PianoStaff <<
        \new Staff = "RH" \relative c' {\global \pianoRH 

        }
        \new Staff = "LH" \relative c {\global
          \clef bass \pianoLH
        
        }

      >>  
    >>
  }
}

\book {
  \score {
    \new PianoStaff <<
      \new Staff = "RH" \relative c' {\global \pianoRH 
      }
      \new Staff = "LH" \relative c {\global 
        \clef bass \pianoLH 
      }
    >>

  }
}

\book {
  \score {
    \new StaffGroup <<
    \new Staff = "soprano" \relative c'' {\global 
      \sopranoNotes 
    }
    \new Staff = "mezzo" \relative c' {\global 
      \mezzoNotes 
    }
    \new Staff = "alto" \relative c' {\global 
      \altoNotes 
    }
    \new Staff = "tenor" \relative c' \transpose c c' {\global 
      \tenorNotes
    }
    \new Staff = "bass" \relative c {\global 
      \clef bass \bassNotes
    }
  
  >>  
  
  }
}