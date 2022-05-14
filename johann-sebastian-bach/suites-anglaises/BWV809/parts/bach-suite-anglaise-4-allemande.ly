\version "2.23.7"

Global = {
   \key f \major
   \time 4/4
}

Upper = \relative c'' {
  \clef treble
  \Global
  \partial 16
  \repeat volta 4 {

  \stemUp f16
  | << { f8~ f32 f e d } \\ c8 \\ a >> c16 d c bes
    \tupletUp \tuplet 3/2 8 {
      \override TupletBracket.tuplet-slur = ##t
      a bes c a bes c  f, g a f g a
    }
  | c,8 f  f8.\prall e32 f
    << { g8 g } \\ { r f } >>  << { g8.\prall f32 g } \\ e4 >>
  | << { a16 c d e } \\ f,4 >>  << f'~ \\ { r16 c bes a } >>  << { f'16 f e f  g e f g } \\ bes,2~ >>
  | << c2~ \\ { bes16 bes a g  a f g a } >>  << { c16 c bes a } \\ d,4 >>  << { bes'16 g a bes } \\ { r8 d, } >>
  %5
  | << { e16 g a bes  c4~  c16 bes a d  bes8.\prall a32 bes } \\ { c,4  r16 c d e  f4. e8 } >>
  | << { a16 c d e  f4.  e8   d16 g f g } \\ { f,4  r16 a b c  d8 c  b!4 } >>
  | << { e4~  e16 e f g } \\ { c,16 g a b  c4~ } >>
    <<
    \tupletUp \tuplet 3/2 8 {
      \override TupletBracket.tuplet-slur = ##t
      a'16 b c  a b c  f, g a  f g a
    }
    \\
    c,2~
    >>
  | << { d4~  d16 d e f } \\ { c16 c b! a  b!4~ } >>
    <<
    \tupletUp \tuplet 3/2 8 {
      \override TupletBracket.tuplet-slur = ##t
      g'16 a b!  g a b!  e, f g  e f g
    }
    \\
    b,2~
    >>
  | << { c4~  c16 ees d c } \\ { b16 b a g  a4~ } >>
    <<
    \tupletUp \tuplet 3/2 8 {
      \override TupletBracket.tuplet-slur = ##t
      fis'16 g a  fis g a  c, d ees  c d ees
    }
    \\
    a,2
    >>
  %10
  | <<
    {
      \tupletUp \tuplet 3/2 8 {
        \override TupletBracket.tuplet-slur = ##t
        b!16 c d  b! c d  g, a b!~
      }
      b!8
      c ees  aes, c
    }
    \\
    {
      g4  r8
      \tupletDown \tuplet 3/2 8 {
        \override TupletBracket.tuplet-slur = ##t
	f16 g aes
      }
      ees8
    }
    >>
  | fis8 a!  d, fis  b,!16 d g b,  c a' d, b'
  | e, g c e,  << { d16 c' f, b! } \\ { d,8 f } >>  << { c'4. e16\rest } \\ { g,4. g16\rest } \\ { e4. c16\rest } >> \partial 16
  %  \bar ":|."
  }
  %\break

    \repeat volta 4 {
      %\bar ".|:"
      %\partial 16 g''16
      g''16
  |   << g4 \\ e \\ c >>  r16 g a b!  c8 g  e' c
        \tupletUp \tuplet 3/2 8 {
          \override TupletBracket.tuplet-slur = ##t
          g'16 f e g16 f e
        }
        c'16 g f\prall e
        \tupletUp \tuplet 3/2 8 {
          \override TupletBracket.tuplet-slur = ##t
          a16 g f a16 g f
        }
        b!16 f e\prall d
  %15
  |   c8 g'  g8~ g32 bes a g  f8 f  f8~  f32 a g f
  |   e16 d e f  e g fis e  fis8 d  << g4~ \\ {} >>
  |   << { g16 e f g  f a g f  e d e f  e g f e } \\ { r16 g, a bes  a c! bes a  g f g a  g bes a g } >>
  |   << { d'8. e16  cis8. d16  d8 a32 bes a bes  bes8.\prall a32 bes } \\ { f8. g16  e4  f2~ } >>
  |   << { c'16 ees d c  d bes c d  g,8~ g32 a g a  a8.\prall g32 a } \\ { f2  e!2 } >>
  %20
  |   << { bes'16 d c bes  c a bes c } \\ { ees,2 } >>
      << { f16 f32 g a g f g  a16. bes32  bes16 a32\prall bes } \\ { d,8 } >>
  |   \tupletUp \tuplet 3/2 8 {
        \override TupletBracket.tuplet-slur = ##t
        \override TupletBracket.bracket-visibility = ##t
        c'16 bes c d c d  e d e f e f  g f g
      }
      << { a8~ } \\ { a16[ c,] } \\ \stemDown f,8~ >>
      << { a'16 a g f } \\ \stemUp \override NoteColumn.force-hshift = #0.4 d4 \\ { \stemDown f,16 f bes a } >>
  | << { e'16 f e d } \\ \stemUp c8 \\ { \stemDown g16 a g f } >>  << { c'8. c16 } \\ { e,8 r } >>
    des'16 c b! c  f, c' b! c
  | d! c b! c  f, aes g f  bes des bes g  e! g c bes
  | a c f a,  << { g f' bes, e } \\ { g,8 bes } >>  << { f'4. f16\rest } \\ { c4. a16\rest } \\ { a4. d,16\rest } >>
    }

% la si do re mi fa sol
%  a b  c  d  e  f  g
}

Lower = \relative c {
  \clef bass
  \Global
  \partial 16
  \repeat volta 4 {
    r16
  | f8 f,  r16 f'' e d  c8 f  a, c
  | \tupletUp \tuplet 3/2 8 {
      \override TupletBracket.tuplet-slur = ##t
      \override TupletBracket.bracket-visibility = ##t
      f,16 g a f g a
    }
    \tupletUp \tuplet 3/2 8 {
      \override TupletBracket.tuplet-slur = ##t
      d, e f d e f
    }
    \tupletUp \tuplet 3/2 8 {
      \override TupletBracket.tuplet-slur = ##t
      bes, c d bes c d
    }
    g,16 c bes c
  | f,8 f'  f8.\prall e32 f  g8 g  g8.\prall f32 g
  | a4  r8 a  bes4  r8 bes
  %5
  | bes2  a8 d  g, c
  | f, e  d c  b!16 d e f  g8 g,
  | \tupletUp \tuplet 3/2 8 {
      \override TupletBracket.tuplet-slur = ##t
      \override TupletBracket.bracket-visibility = ##t
      c16 d e c d e
    }
    \tupletUp \tuplet 3/2 8 {
      \override TupletBracket.tuplet-slur = ##t
      \override TupletBracket.bracket-visibility = ##t
      a,16 b c a b c
    }
    f,8 a'  d, f
  | \tupletUp \tuplet 3/2 8 {
      \override TupletBracket.tuplet-slur = ##t
      \override TupletBracket.bracket-visibility = ##t
      b,!16 c d b c d
    }
    \tupletUp \tuplet 3/2 8 {
      \override TupletBracket.tuplet-slur = ##t
      \override TupletBracket.bracket-visibility = ##t
      g,16 a b g a b
    }
    e,8 g'  c, e
  | \tupletUp \tuplet 3/2 8 {
      \override TupletBracket.tuplet-slur = ##t
      \override TupletBracket.bracket-visibility = ##t
      a,16 b c a b c
    }
    \tupletUp \tuplet 3/2 8 {
      \override TupletBracket.tuplet-slur = ##t
      \override TupletBracket.bracket-visibility = ##t
      fis,16 g a fis g a
    }
    d,8 a'  fis d
  %10
  | g4  r8 g'  aes16([g fis g])  c,([g' fis g])
  | a!16([g fis g])  c,([ees d c])  f!4~  f16 f e d
  | c e a f  g8 g,  << { c4  c8 r16 } \\ { r16 << { \stemUp c, e g } \\ { c,8.~ c8. } >> } >>
  \break
  }

  \repeat volta 4 {
    r16
  | c'8~  c32 g a b!  c16 b c d
    \tupletUp \tuplet 3/2 8 {
      \override TupletBracket.tuplet-slur = ##t
      \override TupletBracket.bracket-visibility = ##t
      e16 d c e d c
    }
    \tupletUp \tuplet 3/2 8 {
      \override TupletBracket.tuplet-slur = ##t
      \override TupletBracket.bracket-visibility = ##t
      g'16 f e g f e
    }
  | c'8 g  g8~  g32 b! a g  f8 f  f~  f32 a g f
  %15
  | << { r16 g a b!  c4~  c16 c b! a  b4 } \\ { e,4  r16 g f e  d4  r16 g f g } >>
  | << { r8 g  } \\ { c,4 } >>  c'4~  c16 a b! cis  b d cis b
  | cis4  d2  cis4
  | d8 g,  a a,  d, d'  r16 d c bes
  | a8 a'32 bes a bes  bes8.\prall a32 bes  c8 c,  r16 c bes a
  %20
  |  g8 g'32 a g a  a8.\prall g32 a  bes8 bes,  r16 f32 g a g f g
  | \tupletUp \tuplet 3/2 8 {
      \override TupletBracket.tuplet-slur = ##t
      \override TupletBracket.bracket-visibility = ##t
      a'16 g a bes a bes  c bes c d c d  e d e
    }
    f16 a,  bes4
  | c4~  c16 bes a g  f8 aes  d, f
  | b,!8 d  g, b!  e,4  r16 bes'' a! g
  | f16 a d bes  c8 c,  << { f4  f8 r16 } \\ { r16 << { \stemUp f, a c } \\ { f,8.~ f8. } >> } >> \partial 16
  }

% la si do re mi fa sol
%  a b  c  d  e  f  g
}

\score {
  \new PianoStaff
  <<
    \accidentalStyle Score.piano-cautionary
    \new Staff = "upper" \Upper
    \new Staff = "lower" \Lower
  >>
  \header {
    subtitle = "Allemande."
  }
  \layout { }
  \midi {
    \tempo 4 = 100
  }
}