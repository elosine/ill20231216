\version "2.20.0"
%All notation in one line
%Make sure whatever last note has an extra note for full duration
%Resize in Inkscape to 50px per beat
%zoom 210%


\paper
{
  paper-width = 2150 %50px per beat +1 for last beat marking border
  paper-height = 100

  top-margin = 0
  bottom-margin = 0
  left-margin = 0
  right-margin = 0
  
  system-system-spacing =
  #'((basic-distance . 15)  %this controls space between lines default = 12
                            (minimum-distance . 8)
                            (padding . 1)
                            (stretchability . 60)) 
}


\book
{

  \header
  {
    tagline = ##f %Do not display tagline
  }

  \score
  {
    <<

      \override Score.BarNumber.break-visibility = ##(#f #f #f) %The order of the three values is end of line visible, middle of line visible, beginning of line visible.
     
     
      
     
      \new Staff \with 
      {
        \omit TimeSignature
        \omit BarLine
        \omit Clef
        \omit KeySignature
        \override StaffSymbol.thickness = #1 %thickness of stafflines, ledger lines, and stems
        % \accidentalStyle dodecaphonic  modern modern-cautionary neo-modern default http://lilypond.org/doc/v2.18/Documentation/notation/displaying-pitches#automatic-accidentals
      }

      {
        \override TupletBracket.bracket-visibility = ##t
        \override TupletBracket.padding = 3
        \override TupletNumber.visibility = ##f
        \set tupletFullLength = ##t %http://lilypond.org/doc/v2.19/Documentation/snippets/rhythms
        \override NoteHead.font-size = #-2
        \override DynamicText.font-size = #-2
        \override Stem.details.beamed-lengths = #'(7)
        \override Stem.details.lengths = #'(7)
        % \override NoteColumn.accent-skip = ##t
        \override Accidental.font-size = -4 
        \override Stem.direction = #up
        \stopStaff % Hides staff lines
        \set Score.tempoHideNote = ##t
        %\override Stem.transparent = ##t  

        
        %%%%%%% SCORE BEGINS HERE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        
        %Grace notes into attack
        %Attacked grace notes
        %Alternate with long tones and silence
        
        
        
        \tempo 4 = 60
        \time 42/4
        
       
        r4 r
        

        \grace {  
          \override NoteHead.font-size = #-8
         [ e''32    <f'' d''> <g'' c''> <a'' e'' b'> <g'' b''> <e'' g'' b'' d''>g'' <b' c'''> <g''f'''> <b''e'''> <g'' b'' d'''> ]
        }
        \override NoteHead.font-size = #-2

        b'16  r
        
        \afterGrace 10/13 
        b'8 
        { 
          \override NoteHead.font-size = #-8
          c''32 d'' e'' f'' g'' c' d' e' f' g'
        }
        \override NoteHead.font-size = #-2

        
        
        
      
        
        
        
        
        
        
        
       
        %extra note for right border in Inkscape/SVG
        \once \override Stem.direction = #down
        g''4 

        %%%%% END SCORE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        
        
        
        
      }

    >>


    \layout
    {
      \context
      {
        \Score
        proportionalNotationDuration = #(ly:make-moment 1/35) 
        \override SpacingSpanner.uniform-stretching = ##t
        \override SpacingSpanner.strict-note-spacing = ##t
        %  \override SpacingSpanner.strict-grace-spacing = ##t
        \override Beam.breakable = ##t
        \override Glissando.breakable = ##t
        \override TextSpanner.breakable = ##t
        % \override NoteHead.no-ledgers = ##t 
      }

      indent = 0
      line-width = 2150 %50px per beat +1 for last beat marking border
      #(layout-set-staff-size 33) %staff height
      % \hide Stem
      %\hide NoteHead
      % \hide LedgerLineSpanner
      % \hide TupletNumber 
    }

    \midi{}

  }
}

