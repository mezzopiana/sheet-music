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
  R1*2 | a1~ | a1 |
}

mezzoNotes = {
  R1*2 | e1~ | e1 |
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

pianoRH = {f}

pianoLH = {f}


%LYRICS


\score {
  <<
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
    \new PianoStaff <<
      \new Staff = "RH" \relative c' {\global \pianoRH 

      }
      \new Staff = "LH" \relative c {\global
        \clef bass  \pianoLH
      
      }

    >>  
  >>
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