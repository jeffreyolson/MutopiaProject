\score {
  \new StaffGroupNoBar <<
    \new Staff \withLyrics << 
      \characterName \markup \center-align \smallCaps { Première Furie }
      \global \clef "vhaute-contre" \includeNotes "furie1"
    >> \includeLyrics "paroles"
    \new Staff \withLyrics << 
      \characterName \markup \center-align \smallCaps { Deuxième Furie }
      \global \clef "vtaille" \includeNotes "furie2"
    >> \includeLyrics "paroles"
    \new Staff \withLyrics << 
      \characterName \markup \center-align \smallCaps { Troisième Furie }
      \global \clef "vbasse" \includeNotes "furie3"
    >> \includeLyrics "paroles"
  >>
  \layout { indent = \largeindent }
}
