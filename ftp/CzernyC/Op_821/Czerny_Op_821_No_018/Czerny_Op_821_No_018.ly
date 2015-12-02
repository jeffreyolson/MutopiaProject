\version "2.18.2"
\language "english"

\header {
    composer	        =       "Czerny, C."
    mutopiacomposer     =       "CzernyC"

    title	            =	"160 Eight-Measure Exercises"
    mutopiatitle        = "160 Eight-Measure Exercises, No. 18"

    opus	            =	"Op. 821"
    mutopiaopus         = "Op. 821, No. 18"
    
    source            =	"IMLSP; Leipzig: Edition Peters, n.d.[1888]. Plate 6990-6993."
    style             =	"Technique"
    license          =	"Public Domain"
    maintainer	        =	"Manuel Castejon Limas"
    maintainerWeb       =	"https://github.com/mcasl/Czerny"
    mutopiainstrument   =       "Piano"

footer = "Mutopia-2015/11/06-1722"
copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
tagline = ##f
}

%--------Definitions
exerciseNumber = "18."

mbreak = {  }
upperStaff =   { \tempo "Allegretto"
\clef treble \key g \major \time 3/8 
<b d'>8^.^1^2 <b d'>^. <c' f'>^>^1^4 (      | % 1

<b g'>8^.^1^5 ) <b d'>^. <c' f'>^> (          | % 2

<b g'>8^.) d'^. <b g'>^. | % 3

<d' f' a'>4^5 <g' cs>8^\>^1^4 (          | % 4

<f' d''>8^.^2^5 ) a'^.^3 <g' cs''>^>^1^4 (   | % 5

<f' d''>8^.^2^5 ) a'^.^3 <g' cs''>^>^1^4     | % 6

<f' d''>8^. ) <d' f' c''!>^. <c' d' f'>^.^4    | % 7

<b' d' g'>4 r8| % 8
\bar "|."

}

lowerStaff =  {
\clef bass \key g \major \time 3/8 
g32^5 a b c' b^3 d'^1 c' b a^4 c'^2 b a  | % 1

g32 a b c' b d' c' b a c' b a  | % 2

g32 a b c' b d' c' b a^1 g^2 fs g | % 3

d32^5 e fs g fs^3 a^1 g fs e^4 g^2 fs e | % 4

d32 e fs g fs^3 a g fs e^4 g^2 fs e     | % 5

d32 e fs g fs^3 a g fs e^4 g^2 fs e   | % 6

d32 e fs g a g fs e^1 d c b,_1 a,_2   | % 7

g,32 fs, g, fs, g, b,_2 d_1 b, g,8  | % 8
\bar "|."
}

%-------Typeset music and generate midi

dynamics = {
  <>-\p s2       | % 1
  s2             | % 2
  s2             | % 3
  <>-\cresc s2   | % 4
  s2             | % 5
  s2      \!     | % 6
  <>-\f s2       | % 7
  s2             | % 8
}

pedal = {
}

\score {
  \new PianoStaff = "PianoStaff_pf" <<
    \set PianoStaff.instrumentName = \markup \huge \bold \exerciseNumber 
    \new Staff    = "Staff_pfUpper" << \upperStaff >>
    \new Dynamics = "Dynamics_pf" \dynamics
    \new Staff    = "Staff_pfLower" << \lowerStaff >>
    \new Dynamics = "pedal" \pedal
  >>
  \layout { }
}

\score {
  \new PianoStaff = "PianoStaff_pf" <<
    \set PianoStaff.midiInstrument = "acoustic grand"
    \new Staff = "Staff_pfUpper" << \upperStaff \dynamics \pedal >>
    \new Staff = "Staff_pfLower" << \lowerStaff \dynamics \pedal >>
  >>
  \midi { \tempo 4 = 110 }
}
