#john morris beck 2025 - gplv2 - see gnu.org for license - https://github.com/memesmith0 - https://thefastscrolls.neocities.org
#quick-learn-field-code
#this program is intended to simplify the amount of effort it takes to teach a 14 year old or older highschool student to do math at arbitrary levels.
#for highschool students and for military recruits this language is intined to put "horse blinders" on math preventing them and their superiors from
#having to learn super advanced notations and maths in order to do mathematical or coding tasks of arbitrary complexity
#in its curent design it is intended to be paired with a second program that prevents the user from using "illegal syntax"
#this "illegal syntax" might be useful to an advanced user: however to most users of this language that notation is a complex heading. removing
#that complicated mumbjo jumbo code notation is the entire reaosn why this language exists - to put horse blinders on math so students, military personnel,
#and workers can learn to do maths at arbitrary levels of complexity with minimal training and learning. this langauge is along the evolutionary path
#of languages that is intended to be taught in math textbooks alongside ordinary math to explain in a crystal clear fashion what the bizarre noations
#in those books without having to rely on imprecise verbal descriptions. this language should be compatible with nearly all computer systems going back as far
#as 1980s unix systems or earlier. it is incredibly concise on purpose to make it easy to transfer onto an existing machine by hand, and to make it difficult
#for a lawyer to claim that any one company could have sole copyright over such a small piece of code. included with this language will be a set of functions
#for generating a much faster type of code called c code. in the military and in the industry c code is generally considered the fastest language. that being said,
#this extension of the quick-learn-field-code language that generates c code is not intended for beginners, but only advanced users of the language. beginners who
#try to use that extension will likely write faulty code that could break the functionality of a computer, which could prevent that computer from successfully
#completing the mission it was intended to aid. as a final reminder- removing the filter that prevents illegal syntax is counterproductive to the point of the
#design of this language. if the user, say a student or a military personnel, wants to use that extended syntax, they should be instructed to use regular awk,
#and not this system, and they are likely a more advanced user. the code that they generate in awk will not likely be readable to their superior, like this.
#furthermore, in this language the ordinary awk command is accessable through a function called system().
BEGIN{print "function add(x,y){return x+y}function minus(x,y){return x-y}function mult(x,y){return x*y}function div(x,y){return x/y}function pow(x,y){return x^y}function less(x,y){return x<y}function equal(x,y){return x==y}function or(x,y){return x||y}function mod(x,y){return x%y}function not(x){return !x}function concat(x,y){return x y}"}{print $0}END{print "END{main()}"}
