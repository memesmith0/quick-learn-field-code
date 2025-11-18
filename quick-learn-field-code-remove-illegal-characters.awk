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


{
    # 1. Initialization for the current line
    in_string = 0;              # 0: Not in string, 1: In string
    num_backslashes = 0;        # Counts consecutive backslashes for escape checking
    error_found = 0;            # Flag to halt processing and print "error"
    i = 1;                      # Character index (starts at 1 in AWK)
    line_len = length($0);      # Store the length of the line

    # 2. Character-by-Character Iteration (POSIX-compliant)
    while (i <= line_len) {
        c = substr($0, i, 1);   # Get the character at the current index

        # 3. Handle Backslashes (\)
        if (c == "\\") {
            # Increment the backslash count and move to the next character
            num_backslashes++;
            i++;
            continue; 
        }

        # 4. Handle Quotes (")
        if (c == "\"") {
            if (in_string == 0) {
                # Start of a new string
                in_string = 1;
            } else {
                # Check if the quote is escaped:
                # If num_backslashes is ODD, the quote IS escaped (e.g., \", \\\"", etc.)
                # If num_backslashes is EVEN, the quote IS NOT escaped (e.g., ", \\"", etc.)
                if (num_backslashes % 2 == 0) {
                    # Not escaped: Terminate the string
                    in_string = 0;
                }
                # If it IS escaped (num_backslashes is odd), we just stay in the string.
            }
            # Reset backslash count and move to the next character
            num_backslashes = 0;
            i++;
            continue; 
        }

        # 5. Handle Illegal Characters (ONLY when NOT in a string)
        if (in_string == 0) {
            # Check for illegal characters outside of a string
            # Allowed: a-z, 0-9, _, {, }, ,, ), (, space
            
            # This POSIX ERE pattern matches allowed characters. 
            # The '!' checks if the character is NOT one of the allowed ones.
            # Using c !~ /[a-z0-9_{}(), ]/ for brevity, POSIX supports [a-z0-9] ranges.
            if (c !~ /[a-z0-9_\{\}\,\)\( ]/) {
                # Illegal character found, immediately halt and set error flag
                print "error";
                error_found = 1;
                break; # Exit the character loop
            }
        }
        
        # 6. Reset backslash count and increment index for all other characters
        # If the character was not '\' or '"', the backslash count resets
        num_backslashes = 0;
        i++;
    }
    
    # 7. Post-Line Processing
    if (error_found == 0) {
        # If the line was successfully parsed (no illegal characters outside string),
        # print the original line with a newline.
        print $0;
    }

    # No need to explicitly reset state for the next line, as they are reset at the 
    # start of the block for the next input line.
}
