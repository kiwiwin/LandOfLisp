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

loop
read-from-string
concatenate result-type sequences: it concatenate all individual elements into the result-type you want.
quote : (quote x) == 'x

print1-to-string
coerce: convert object to another type. coerce object result-type

char-downcase / char-upcase

# Other form of list

## Dotted List
A list in Lisp that ends in something other than a nil is referred to as a dotted list. example:
(cons 1 (cons 2 3))
it should be nil for the end. but it is 3 instead fo nil

## Pairs
one use for dotted list : (cons 2 3) ==> (2 . 3)

## Circular Lists
(defparameter foo '(1 2 3))
(setf (cdddr foo) foo)

## Association Lists
(already)

substitute-if what-to-sub predicates-fun a-list
substitute-if is a generic function that can accept multiple datatypes as parameters and handle them appropriately.

digital-char-p: return true if char is digital

complement: like !

write-to-string
subseq

mapc

with-open-file (stream filename :direction  xx :if-exists yy) (thunk)
princ can accept another element as stream to print to instead of console

keyword in lisp, little like constant

maplist