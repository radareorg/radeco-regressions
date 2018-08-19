Program PickRandomElement (output);

const
	s: array [1..5] of string = ('1234', 'ABCDE', 'WTF', 'Some more', 'qwe');

begin
	randomize;
	writeln(s[low(s) + random(length(s))]);
end.

