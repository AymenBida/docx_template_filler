# This file contains any messages and errors which are sent to the user interface
# This way we can easily translate the app to other languages

require 'colorize'

def before_starting
  "Make sure you follow this instructions to make use of this app:

1 - Prepare your 'template.docx' file:

  + Write your template (the text that is going to be there in all the cases)
  + Add bookmarks with meaningful names (so you can understand them later) in places you want to fill

    example: look at the 'example.docx' file

2 - If you prepared everything correctly exit and run the 'bin/main.rb' from the terminal again and skip 1 and 2

3 - Follow instructions to fill your template with text and save the results"
end
