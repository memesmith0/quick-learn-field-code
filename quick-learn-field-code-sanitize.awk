#john morris beck 2025 - gplv2 - see gnu.org for license - https://github.com/memesmith0 - https://thefastscrolls.neocities.org
#quick-learn-field-code-remove-illegal-characters
#this program precedes the compiler to quick-learn-field-langauge
#quick-learn-field-langauge is what is called a subset of subcategory of awk. that means that we take the complex awk programming language which is intended for engineers and math types,
#and we simply its rules to something so simple that a non math person like a 14 year old jarhead or student could use the language. however the design of the language is incredibly
#small with very short lines of code for many tactical reasons. because of that the language itself allows for unwanted operations that allow the user to access the ordinary features
#of awk that we intended to limit. this defeats the purpose of the quick-learn-field-language. by allowing those parts of awk back into the language this means that the user isnt
#put in "horse blinders" so to speak. not only might they become quickly overwhelmed by the engineering tool awk, but the code they produce will look like absoulte gibberish to their
#superior officer. the point of quick-learn-field-code is to make a lanugae that the two cam both mutually communicate in. if a subordinate say a private or a student at a school
#is trying to remove this filter, that is fine. but they are likely a math or engineering type who should just be using the ordinary engineer tool awk, and they do not need this
#language. however their code will take much more techncial expertise to understand and to debug and make secure. it is better if the supervisor of the office desires for the code
#to be simmple easier and readable for them to use a tool like this one, or like python or javascript. if the user of this code still desires to use ordinary awk commands or other
#language commands those are available through a built in command called system() without removing the coplexity filter. they can merely type up what they want in that more complex
#langauge, say an engineering tool like mysql or rust, and they can wrap up that code into simple macros inside of the quick-learn-field-code language so that the reuslting code is
#more readable by their supervisor.

#as you are reading this this filter might not be perfectly debugged. bear in mind that this code needs to be verified before going into a mission critical system. hoever, due to the
#fact taht awk is already verified as secure in most systems, and because this project uses very small amounts of awk code, the cost of verifying if this is secure is rather cheap
#compared to most high security code audits. the audit you'd want by the way would be the highest degre aeuronatical D O style code audit from boeing.
{is = 0;nb = 0;e = 0;i = 1;ln = length($0);while (i <= ln) {c = substr($0, i, 1);if(c=="\\"){nb++;i++;continue}if(c=="\""){if(is==0){is=1}else{if(nb%2==0){is=0}}nb=0;i++;continue}if(is==0&&c=="="){c2=substr($0,i+1,1);if(c2=="="){e=1;print "err_!#%";break;}}if(is==0){if(c!~/[a-z0-9_\{\},\,,\;,\t,\],\[,=,\)\( ]/){e=1;print "err_!#%";break;}}nb=0;i++;}if(e==0){print $0;}}
