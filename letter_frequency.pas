{Jason Steinshouer
CSIS 150 - 12:20}

{This program counts the frequency of each character in a datafile
 and prints the results in a frequancy chart}

{Filename - Name of datafile entered by user
 Datafile - Contents of Data file
 AtoZ - Array of the alphabet
 Ch - for storing individual characters
 CharPos - assigns all characters of alphabet in an array
 Counter - array that keeps track of frequency of each character }

PROGRAM LetterFrequency;

USES
  crt;

TYPE
  Alphabet = (a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z);
  CountVar = array [a..z] of integer;
  character = array [a..z] of char;

{This procedure gets the file name from the user
 and assigns the file a variable}
PROCEDURE GetInput (VAR infile : text);

  VAR
    FileName : string;

  BEGIN
    writeln ( 'Please enter the name of the data file and press <enter>');
    readln (FileName);
    assign (infile, FileName);
    reset (infile);
  END;

{This procedure prints the data file}
PROCEDURE PrintFile (VAR Outfile, infile :text);

  VAR
    datafile : string;

  BEGIN
    clrscr;
    WHILE NOT eof (infile) DO
     BEGIN
       readln (infile, datafile);
       writeln (outfile,datafile);
     END;
    writeln(outfile);
    reset (infile);
  END;

{This Procedure counts the Frequency of each character}
PROCEDURE CountFrequency (VAR infile: Text;
                          VAR Count: CountVar;
                          VAR NotAlphabet: integer);

  VAR
    AtoZ : Alphabet;
    ch: char;
    charPos : character;

  BEGIN
    charPos[a] := 'A';
    charPos[b] := 'B';
    charPos[c] := 'C';
    charPos[d] := 'D';
    charPos[e] := 'E';
    charPos[f] := 'F';
    charPos[g] := 'G';
    charPos[h] := 'H';
    charPos[i] := 'I';
    charPos[j] := 'J';
    charPos[k] := 'K';
    charPos[l] := 'L';
    charPos[m] := 'M';
    charPos[n] := 'N';
    charPos[o] := 'O';
    charPos[p] := 'P';
    charPos[q] := 'Q';
    charPos[r] := 'R';
    charPos[s] := 'S';
    charPos[t] := 'T';
    charPos[u] := 'U';
    charPos[v] := 'V';
    charPos[w] := 'W';
    charPos[x] := 'X';
    charPos[y] := 'Y';
    charPos[z] := 'Z';
    FOR AtoZ:= a TO z DO
      count [AtoZ] :=0;
    While NOT eof (infile) DO
    BEGIN
      read (infile, ch);
       FOR AtoZ := a to z DO
         BEGIN
          {counts all alphabetic characters}
          IF (upcase (ch) = charPos[AtoZ]) THEN
           count [AtoZ] :=  Count[AtoZ] + 1;
         END;
    END;
    reset(infile);
    NotAlphabet :=0;
    While NOT eof (infile) DO
    BEGIN
      read (infile, ch);
          {counts all nonalphabetic characters}
          IF (ord (upcase(ch)) < ord('A')) OR (ord (upcase(ch)) > ord ('Z')) THEN
            NotAlphabet := NotAlphabet + 1;
    END;
    close (infile);
  END;

{Prints output in the form of a frequency chart}
PROCEDURE PrintOutput (VAR count: CountVar;
                       VAR NotAlphabet : Integer);
  VAR
    counter :integer;

  BEGIN
    writeln ( '*******************':45);
    writeln ( '* FREQUENCY CHART *':45);  {prints the Header}
    writeln ( '*******************':45);
    writeln ();
    write ( 'A|':2);
    Counter :=0;
    WHILE counter < count[a] DO
     BEGIN
     write ( '*');
     counter := counter + 1;
     END;
    writeln();
    write ( 'B|':2);
    Counter :=0;
    WHILE counter < count[b] DO
     BEGIN
     write ( '*');
     counter := counter + 1;
     END;
    writeln();
    write ( 'C|':2);
    Counter :=0;
    WHILE counter < count[c] DO
     BEGIN
     write ( '*');
     counter := counter + 1;
     END;
    writeln();
    write ( 'D|':2);
    Counter :=0;
    WHILE counter < count[d] DO
     BEGIN
     write ( '*');
     counter := counter + 1;
     END;
    writeln();
    write ( 'E|':2);
    Counter :=0;
    WHILE counter < count[e] DO
     BEGIN
     write ( '*');
     counter := counter + 1;
     END;
    writeln();
    write ( 'F|':2);
     Counter :=0;
    WHILE counter < count[f] DO
     BEGIN
     write ( '*');
     counter := counter + 1;
     END;
    writeln();
    write ( 'G|':2);
    Counter :=0;
    WHILE counter < count[g] DO
     BEGIN
     write ( '*');
     counter := counter + 1;
     END;
    writeln();
    write ( 'H|':2);
    Counter :=0;
    WHILE counter < count[h] DO
     BEGIN
     write ( '*');
     counter := counter + 1;
     END;
    writeln();
    write ( 'I|':2);
    Counter :=0;
    WHILE counter < count[i] DO
     BEGIN
     write ( '*');
     counter := counter + 1;
     END;
    writeln();
    write ( 'J|':2);
    Counter :=0;
    WHILE counter < count[j] DO
     BEGIN
     write ( '*');
     counter := counter + 1;
     END;
    writeln();
    write ( 'K|':2);
    Counter :=0;
    WHILE counter < count[k] DO
     BEGIN
     write ( '*');
     counter := counter + 1;
     END;
    writeln();
    write ( 'L|':2);
    Counter :=0;
    WHILE counter < count[l] DO
     BEGIN
     write ( '*');
     counter := counter + 1;
     END;
    writeln();
    write ( 'M|':2);
    Counter :=0;
    WHILE counter < count[m] DO
     BEGIN
     write ( '*');
     counter := counter + 1;
     END;
    writeln();
    write ( 'N|':2);
    Counter :=0;
    WHILE counter < count[n] DO
     BEGIN
     write ( '*');
     counter := counter + 1;
     END;
    writeln();
    write ( 'O|':2);
    Counter :=0;
    WHILE counter < count[o] DO
     BEGIN
     write ( '*');
     counter := counter + 1;
     END;
    writeln();
    write ( 'P|':2);
     Counter :=0;
    WHILE counter < count[p] DO
     BEGIN
     write ( '*');
     counter := counter + 1;
     END;
    writeln();
    write ( 'Q|':2);
    Counter :=0;
    WHILE counter < count[q] DO
     BEGIN
     write ( '*');
     counter := counter + 1;
     END;
    writeln();
    write ( 'R|':2);
    Counter :=0;
    WHILE counter < count[r] DO
     BEGIN
     write ( '*');
     counter := counter + 1;
     END;
    writeln();
    write ( 'S|':2);
    Counter :=0;
    WHILE counter < count[s] DO
     BEGIN
     write ( '*');
     counter := counter + 1;
     END;
    writeln();
    write ( 'T|':2);
    Counter :=0;
    WHILE counter < count[t] DO
     BEGIN
     write ( '*');
     counter := counter + 1;
     END;
    writeln();
    write ( 'U|':2);
    Counter :=0;
    WHILE counter < count[u] DO
     BEGIN
     write ( '*');
     counter := counter + 1;
     END;
    writeln();
    write ( 'V|':2);
    Counter :=0;
    WHILE counter < count[v] DO
     BEGIN
     write ( '*');
     counter := counter + 1;
     END;
    writeln();
    write ( 'W|':2);
    Counter :=0;
    WHILE counter < count[w] DO
     BEGIN
     write ( '*');
     counter := counter + 1;
     END;
    writeln();
    write ( 'X|':2);
    Counter :=0;
    WHILE counter < count[x] DO
     BEGIN
     write ( '*');
     counter := counter + 1;
     END;
    writeln();
    write ( 'Y|':2);
    Counter :=0;
    WHILE counter < count[y] DO
     BEGIN
     write ( '*');
     counter := counter + 1;
     END;
    writeln();
    write ( 'Z|':2);
    Counter :=0;
    WHILE counter < count[z] DO
     BEGIN
     write ( '*');
     counter := counter + 1;
     END;
    writeln();
    writeln ('  ----+----+----+----+----+----+----+----+----+----+');
    writeln ('      5    10   15   20   25   30   35   40   45   50');
    writeln();
    writeln ('       Non Alphabetic Characters =',NotAlphabet);
  END;

{Simulates MAIN, but with no global variables}
PROCEDURE Start_Up;

  VAR
    DataFile : text;
    Freq : CountVar;
    NonAlphabet : Integer;

  BEGIN
  clrscr;
  GetInput (DataFile);
  CountFrequency (Datafile, Freq, NonAlphabet);
  PrintOutput (Freq, NonAlphabet);
  readln;
  END;

{***********************************************************************}
BEGIN
  START_UP;
END.  {main}