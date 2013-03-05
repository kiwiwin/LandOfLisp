# GuessNumber

## global parameter
defparameter / setf
defvar

## function
defun

## math
ash

## local
let
flet / labels


# Exploring the syntax of Lisp code

Lisp: List processing
You can view it as just a bunch of nested lists, delimited by parentheses.
(bla bla bla bla bla)

## Symbols
eq (case-insensitive)

## Numbers
expt (can be really huge)
/ (rational number when integer)

## Strings
princ

## code and data
(command data-form)
(foo     bla bla bla bla)

' : data-mode

## Cons cells
The LIST of Lisp are created from cons cells

cons
(cons 'chicken 'cat) :can have only two pieces of data, and should be data mode
car
cdr
list


# Conditions
if
=
oddp/evenp

progn: wedge in extra commands in a single expression. a little like ; in ruby
when / unless

cond : last branch is "T" idiom
case

and / or

member

find-if : return the first value satisify

### Conrad's rule of sub
use EQ to compare symbols
use EQUAL to compare anything else

eql / equalp

assoc

## quasiquoting

`(xxx ,(command a) yyy ,(command b))
notice: don't forget comma	

mapcar
apply
append

remove-if-not

find :key
member

push/assoc idiom

# Read and Printing

print / prin1 / princ
read

character: #\newline #\tab #\space