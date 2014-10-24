# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl test.pl'

######################### We start with some black magic to print on failure.

# Change 1..1 below to 1..last_test_to_print .
# (It may become useful if the test is moved to ./t subdirectory.)

BEGIN { $| = 1; print "1..20\n"; }
END {print "not ok 1\n" unless $loaded;}
use Text::Reflow qw(reflow_file reflow_string reflow_array);
$loaded = 1;
print "ok 1\n";

######################### End of black magic.

# Insert your test code below (better if it prints "ok 13"
# (correspondingly "not ok 13") depending on the success of chunk 13
# of the test code):

$test1 = <<EOF;

				      1851
				   MOBY DICK;
				  OR THE WHALE
			       by Herman Melville

  ETYMOLOGY

  (Supplied by a Late Consumptive Usher to a Grammar School)

  The pale Usher--threadbare in coat, heart, body, and brain; I see him now.
He was ever dusting his old lexicons and grammars, with a queer 
handkerchief, mockingly embellished with all the gay flags of all the known 
nations of the world. He loved to dust his old grammars; it somehow mildly 
reminded him of his mortality.

CHAPTER I

Call me Ishmael. Some years ago--never mind how long precisely--having
little or no money in my purse, and nothing particular to interest me on 
shore, I thought I would sail about a little and see the watery part of the 
world. It is a way I have of driving off the spleen and regulating the 
circulation. Whenever I find myself growing grim about the mouth; whenever 
it is a damp, drizzly November in my soul; whenever I find myself 
involuntarily pausing before coffin warehouses, and bringing up the rear of 
every funeral I meet; and especially whenever my hypos get such an upper 
hand of me, that it requires a strong moral principle to prevent me from 
deliberately stepping into the street, and methodically knocking people's 
hats off--then, I account it high time to get to sea as soon as I can. This 
is my substitute for pistol and ball. With a philosophical flourish Cato 
throws himself upon his sword; I quietly take to the ship. There is nothing 
surprising in this. If they but knew it, almost all men in their degree, 
some time or other, cherish very nearly the same feelings towards the ocean 
with me.

EOF

$test2 = <<EOF;

				      1851
				   MOBY DICK;
				  OR THE WHALE
			       by Herman Melville

ETYMOLOGY

(Supplied by a Late Consumptive Usher to a Grammar School)

The pale Usher--threadbare in coat, heart, body, and brain;
I see him now.  He was ever dusting his old lexicons and grammars,
with a queer handkerchief, mockingly embellished with all the gay
flags of all the known nations of the world.  He loved to dust
his old grammars; it somehow mildly reminded him of his mortality.

CHAPTER I

Call me Ishmael.  Some years ago--never mind how long precisely--
having little or no money in my purse, and nothing particular to
interest me on shore, I thought I would sail about a little and see
the watery part of the world.  It is a way I have of driving off
the spleen and regulating the circulation.  Whenever I find myself
growing grim about the mouth; whenever it is a damp, drizzly November
in my soul; whenever I find myself involuntarily pausing before
coffin warehouses, and bringing up the rear of every funeral I meet;
and especially whenever my hypos get such an upper hand of me,
that it requires a strong moral principle to prevent me from
deliberately stepping into the street, and methodically knocking
people's hats off--then, I account it high time to get to sea
as soon as I can.  This is my substitute for pistol and ball.
With a philosophical flourish Cato throws himself upon his sword;
I quietly take to the ship.  There is nothing surprising in this.
If they but knew it, almost all men in their degree, some time or other,
cherish very nearly the same feelings towards the ocean with me.

EOF

$test3 = <<EOF;

				      1851
				   MOBY DICK;
				  OR THE WHALE
			       by Herman Melville

  ETYMOLOGY

  (Supplied by a Late Consumptive Usher to a Grammar School)

  The pale Usher--threadbare in coat, heart, body, and brain; I see him now.
He was ever dusting his old lexicons and grammars, with a queer
handkerchief, mockingly embellished with all the gay flags of all the known
nations of the world. He loved to dust his old grammars; it somehow mildly
reminded him of his mortality.

CHAPTER I

Call me Ishmael.  Some years ago--never mind how long precisely--
having little or no money in my purse, and nothing particular to
interest me on shore, I thought I would sail about a little and see
the watery part of the world.  It is a way I have of driving off
the spleen and regulating the circulation.  Whenever I find myself
growing grim about the mouth; whenever it is a damp, drizzly November
in my soul; whenever I find myself involuntarily pausing before
coffin warehouses, and bringing up the rear of every funeral I meet;
and especially whenever my hypos get such an upper hand of me,
that it requires a strong moral principle to prevent me from
deliberately stepping into the street, and methodically knocking
people's hats off--then, I account it high time to get to sea
as soon as I can.  This is my substitute for pistol and ball.
With a philosophical flourish Cato throws himself upon his sword;
I quietly take to the ship.  There is nothing surprising in this.
If they but knew it, almost all men in their degree, some time or other,
cherish very nearly the same feelings towards the ocean with me.

EOF

$test4 = <<EOF;

				      1851
				   MOBY DICK;
				  OR THE WHALE
			       by Herman Melville

  ETYMOLOGY

  (Supplied by a Late Consumptive Usher to a Grammar School)

  The pale Usher--threadbare in coat, heart, body, and brain; I see him now.
He was ever dusting his old lexicons and grammars, with a queer
handkerchief, mockingly embellished with all the gay flags of all
the known nations of the world.  He loved to dust his old grammars;
it somehow mildly reminded him of his mortality.

CHAPTER I

Call me Ishmael.  Some years ago--never mind how long precisely--
having little or no money in my purse, and nothing particular to
interest me on shore, I thought I would sail about a little and see
the watery part of the world.  It is a way I have of driving off
the spleen and regulating the circulation.  Whenever I find myself
growing grim about the mouth; whenever it is a damp, drizzly November
in my soul; whenever I find myself involuntarily pausing before
coffin warehouses, and bringing up the rear of every funeral I meet;
and especially whenever my hypos get such an upper hand of me,
that it requires a strong moral principle to prevent me from
deliberately stepping into the street, and methodically knocking
people's hats off--then, I account it high time to get to sea
as soon as I can.  This is my substitute for pistol and ball.
With a philosophical flourish Cato throws himself upon his sword;
I quietly take to the ship.  There is nothing surprising in this.
If they but knew it, almost all men in their degree, some time or other,
cherish very nearly the same feelings towards the ocean with me.

EOF

$test5 = <<EOF;

				      1851
				   MOBY DICK;
				  OR THE WHALE
			       by Herman Melville

ETYMOLOGY

(Supplied by a Late Consumptive Usher to a Grammar School)

The pale Usher--threadbare in coat, heart, body, and brain;
I see him now.  He was ever dusting his old lexicons and grammars,
with a queer handkerchief, mockingly embellished with all
the gay flags of all the known nations of the world.
He loved to dust his old grammars; it somehow mildly reminded
him of his mortality.

CHAPTER I

Call me Ishmael.  Some years ago--never mind how long precisely--
having little or no money in my purse, and nothing particular
to interest me on shore, I thought I would sail about a little
and see the watery part of the world.  It is a way I have
of driving off the spleen and regulating the circulation.
Whenever I find myself growing grim about the mouth;
whenever it is a damp, drizzly November in my soul; whenever I
find myself involuntarily pausing before coffin warehouses,
and bringing up the rear of every funeral I meet;
and especially whenever my hypos get such an upper hand of me,
that it requires a strong moral principle to prevent me from
deliberately stepping into the street, and methodically knocking
people's hats off--then, I account it high time to get to sea
as soon as I can.  This is my substitute for pistol and ball.
With a philosophical flourish Cato throws himself upon his sword;
I quietly take to the ship.  There is nothing surprising in this.
If they but knew it, almost all men in their degree,
some time or other, cherish very nearly the same feelings
towards the ocean with me.

EOF

$test6 = <<EOF;
>
> 				      1851
> 				   MOBY DICK;
> 				  OR THE WHALE
> 			       by Herman Melville
>
> ETYMOLOGY
>
> (Supplied by a Late Consumptive Usher to a Grammar School)
>
> The pale Usher--threadbare in coat, heart, body, and brain;
> I see him now.  He was ever dusting his old lexicons and grammars,
> with a queer handkerchief, mockingly embellished with all
> the gay flags of all the known nations of the world.
> He loved to dust his old grammars; it somehow mildly reminded
> him of his mortality.
>
> CHAPTER I
>
> Call me Ishmael.  Some years ago--never mind how long precisely--
> having little or no money in my purse, and nothing particular
> to interest me on shore, I thought I would sail about a little
> and see the watery part of the world.  It is a way I have
> of driving off the spleen and regulating the circulation.
> Whenever I find myself growing grim about the mouth;
> whenever it is a damp, drizzly November in my soul; whenever I
> find myself involuntarily pausing before coffin warehouses,
> and bringing up the rear of every funeral I meet;
> and especially whenever my hypos get such an upper hand of me,
> that it requires a strong moral principle to prevent me from
> deliberately stepping into the street, and methodically knocking
> people's hats off--then, I account it high time to get to sea
> as soon as I can.  This is my substitute for pistol and ball.
> With a philosophical flourish Cato throws himself upon his sword;
> I quietly take to the ship.  There is nothing surprising in this.
> If they but knew it, almost all men in their degree,
> some time or other, cherish very nearly the same feelings
> towards the ocean with me.
>
EOF

$test7 = <<EOF;

				      1851
				   MOBY DICK;
				  OR THE WHALE
			       by Herman Melville

  ETYMOLOGY

(Supplied by a Late Consumptive Usher to a Grammar School)

The pale Usher--threadbare in coat, heart, body, and brain;
  I see him now.  He was ever dusting his old lexicons and grammars,
  with a queer handkerchief, mockingly embellished with all
  the gay flags of all the known nations of the world.
  He loved to dust his old grammars; it somehow mildly reminded
  him of his mortality.

CHAPTER I

Call me Ishmael.  Some years ago--never mind how long precisely--
  having little or no money in my purse, and nothing particular
  to interest me on shore, I thought I would sail about a little
  and see the watery part of the world.  It is a way I have
  of driving off the spleen and regulating the circulation.
  Whenever I find myself growing grim about the mouth;
  whenever it is a damp, drizzly November in my soul; whenever I
  find myself involuntarily pausing before coffin warehouses,
  and bringing up the rear of every funeral I meet;
  and especially whenever my hypos get such an upper hand of me,
  that it requires a strong moral principle to prevent me from
  deliberately stepping into the street, and methodically knocking
  people's hats off--then, I account it high time to get to sea
  as soon as I can.  This is my substitute for pistol and ball.
  With a philosophical flourish Cato throws himself upon his sword;
  I quietly take to the ship.  There is nothing surprising in this.
  If they but knew it, almost all men in their degree,
  some time or other, cherish very nearly the same feelings
  towards the ocean with me.

EOF

$test8 = <<EOF;

				      1851
				   MOBY DICK;
				  OR THE WHALE
			       by Herman Melville

ETYMOLOGY

(Supplied by a Late Consumptive Usher to a Grammar School)

The pale Usher--threadbare in coat, heart, body, and brain;
I see him now. He was ever dusting his old lexicons and grammars,
with a queer handkerchief, mockingly embellished with all the gay
flags of all the known nations of the world. He loved to dust his
old grammars; it somehow mildly reminded him of his mortality.

CHAPTER I

Call me Ishmael. Some years ago--never mind how long precisely--
having little or no money in my purse, and nothing particular
to interest me on shore, I thought I would sail about a little
and see the watery part of the world. It is a way I have of driving
off the spleen and regulating the circulation. Whenever I find
myself growing grim about the mouth; whenever it is a damp,
drizzly November in my soul; whenever I find myself involuntarily
pausing before coffin warehouses, and bringing up the rear of every
funeral I meet; and especially whenever my hypos get such an upper
hand of me, that it requires a strong moral principle to prevent
me from deliberately stepping into the street, and methodically
knocking people's hats off--then, I account it high time to get
to sea as soon as I can. This is my substitute for pistol and ball.
With a philosophical flourish Cato throws himself upon his sword;
I quietly take to the ship. There is nothing surprising in this.
If they but knew it, almost all men in their degree, some time or other,
cherish very nearly the same feelings towards the ocean with me.

EOF

$test9 = <<EOF;
1851 MOBY DICK; OR THE WHALE by Herman Melville ETYMOLOGY (Supplied by
a Late Consumptive Usher to a Grammar School) The pale Usher--
threadbare in coat, heart, body, and brain; I see him now.  He was ever
dusting his old lexicons and grammars, with a queer handkerchief,
mockingly embellished with all the gay flags of all the known
nations of the world.  He loved to dust his old grammars; it somehow
mildly reminded him of his mortality.  CHAPTER I Call me Ishmael.
Some years ago--never mind how long precisely--having little or no
money in my purse, and nothing particular to interest me on shore,
I thought I would sail about a little and see the watery part
of the world.  It is a way I have of driving off the spleen
and regulating the circulation.  Whenever I find myself growing
grim about the mouth; whenever it is a damp, drizzly November
in my soul; whenever I find myself involuntarily pausing before
coffin warehouses, and bringing up the rear of every funeral I meet;
and especially whenever my hypos get such an upper hand of me,
that it requires a strong moral principle to prevent me from
deliberately stepping into the street, and methodically knocking
people's hats off--then, I account it high time to get to sea
as soon as I can.  This is my substitute for pistol and ball.
With a philosophical flourish Cato throws himself upon his sword;
I quietly take to the ship.  There is nothing surprising in this.
If they but knew it, almost all men in their degree, some time or other,
cherish very nearly the same feelings towards the ocean with me.
EOF

$test10 = <<EOF;

				      1851
				   MOBY DICK;
				  OR THE WHALE
			       by Herman Melville

ETYMOLOGY

(Supplied by a Late Consumptive Usher to a Grammar School)

The pale Usher--threadbare in coat, heart, body, and brain; I see
       him now.  He was ever dusting his old lexicons and grammars,
       with a queer handkerchief, mockingly embellished with all
       the gay flags of all the known nations of the world.
       He loved to dust his old grammars; it somehow mildly reminded
       him of his mortality.

CHAPTER I

Call me Ishmael.  Some years ago--never mind how long precisely--
       having little or no money in my purse, and nothing particular
       to interest me on shore, I thought I would sail about a little
       and see the watery part of the world.  It is a way I have
       of driving off the spleen and regulating the circulation.
       Whenever I find myself growing grim about the mouth;
       whenever it is a damp, drizzly November in my soul; whenever I
       find myself involuntarily pausing before coffin warehouses,
       and bringing up the rear of every funeral I meet;
       and especially whenever my hypos get such an upper hand of me,
       that it requires a strong moral principle to prevent me from
       deliberately stepping into the street, and methodically knocking
       people's hats off--then, I account it high time to get to sea
       as soon as I can.  This is my substitute for pistol and ball.
       With a philosophical flourish Cato throws himself upon his sword;
       I quietly take to the ship.  There is nothing surprising in this.
       If they but knew it, almost all men in their degree,
       some time or other, cherish very nearly the same feelings
       towards the ocean with me.

EOF

$longword = <<EOF;
A short paragraph with a long last word:
****************************************************************************
EOF


open(OUT, ">tmp1") or die "Can't write `tmp1': $!\n";
print OUT $test1;
close(OUT);

test_reflow_file(2, $test2, "tmp1", "", 2, [65], 75);
test_reflow_file(3, $test3, "tmp1", "CHAPTER", 2, [65], 75);
test_reflow_file(4, $test4, "tmp1", "", 1, [65], 75);
test_reflow_file(5, $test5, "tmp1", "", 2, [65, 70, 60], 75);

unlink("tmp1");

test_reflow_string(6, $test2, $test1, "", 2, [65], 75);
test_reflow_string(7, $test3, $test1, "CHAPTER", 2, [65], 75);
test_reflow_string(8, $test4, $test1, "", 1, [65], 75);
test_reflow_string(9, $test5, $test1, "", 2, [65, 70, 60], 75);

$tmp = $test1;
chomp($tmp);
@test1 = map { "$_\n" } split(/\n/, $tmp, -1);

test_reflow_array(10, $test2, \@test1, "", 2, [65], 75);
test_reflow_array(11, $test3, \@test1, "CHAPTER", 2, [65], 75);
test_reflow_array(12, $test4, \@test1, "", 1, [65], 75);
test_reflow_array(13, $test5, \@test1, "", 2, [65, 70, 60], 75);


$_ = reflow_string($test1, indent => "> ", optimum => [65, 70, 60]);

if ($_ eq $test6) {
  print "ok 14\n";
} else {
  print "not ok 14\n";
}

$test99 = $_;


$_ = reflow_string($test1, skipto => "  ETYMOLOGY", indent1 => "", indent2 => "  ",
			   optimum => [65, 70, 60]);

if ($_ eq $test7) {
  print "ok 15\n";
} else {
  print "not ok 15\n";
}

$_ = reflow_string($test99, quote => '> ');

if ($_ eq $test2) {
  print "ok 16\n";
} else {
  print "not ok 16\n";
}


$_ = reflow_string($test1, frenchspacing => 'y');

if ($_ eq $test8) {
  print "ok 17\n";
} else {
  print "not ok 17\n";
}


$_ = reflow_string($test1, oneparagraph => 'y');

if ($_ eq $test9) {
  print "ok 18\n";
} else {
  print "not ok 18\n";
}


$_ = reflow_string($test1, indent1 => '', indent2 => "       ");

if ($_ eq $test10) {
  print "ok 19\n";
} else {
  print "not ok 19\n";
}

$_ = reflow_string($longword);
if ($_ eq $longword) {
  print "ok 20\n";
} else {
  print "not ok 20\n";
}



exit(0);

sub test_reflow_file {
  my ($n, $res, $input, $skipto, $skipindented, $optimum, $maximum) = @_;
  reflow_file($input, "tmp2", skipto => $skipto, skipindented => $skipindented,
			      optimum => $optimum, maximum => $maximum);
  open(IN, "tmp2");
  { local $/;
    undef $/;
    $_ = <IN>;
  }
  close(IN);
  unlink("tmp2");
  if ($_ eq $res) {
    print "ok $n\n" ;
  } else {
    print "not ok $n\n";
  }
}


sub test_reflow_string {
  my ($n, $res, $input, $skipto, $skipindented, $optimum, $maximum) = @_;
  local $_;
  $_ = reflow_string($input, skipto => $skipto, skipindented => $skipindented,
			     optimum => $optimum, maximum => $maximum);
  if ($_ eq $res) {
    print "ok $n\n" ;
  } else {
    print "not ok $n\n";
  }
}


sub test_reflow_array {
  my ($n, $res, $input, $skipto, $skipindented, $optimum, $maximum) = @_;
  my $output;
  $output = reflow_array($input, skipto => $skipto, skipindented => $skipindented,
				 optimum => $optimum, maximum => $maximum);
  $_ = join("", @$output);
  if ($_ eq $res) {
    print "ok $n\n" ;
  } else {
    print "not ok $n\n";
  }
}

