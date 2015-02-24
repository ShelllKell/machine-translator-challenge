# Machine Translator Challenge

Your challenge is to create a machine translator that will automatically translate text from any language into any other language.

### Requirements

1. The machine translator should take a chunk of text, a source language code, and a target
language code, and return the text translated from the source language into the target language.

1. The input text should be broken up by newlines and translated as paragraphs.

1. The output text should follow the same formatting as the input text.
(It should be split into paragraphs, include newlines, etc.)

1. All your code should be fully tested. We have included RSpec in the Gemfile, but feel free to use any testing libraries.

### Notes

1. You do not need to write your own machine translation engine, we will provide you with an API key for Bing Translator.

1. Source language refers to the language you are translating from.

1. Target language refers to the language you are translating into.

1. Language codes are industry standards and are used as shorthand and represent different languages. For example, the language code for English is "en" and then language code for Spanish is "es". See http://www.loc.gov/standards/iso639-2/php/code_list.php.

### Extra

Write a script that can be run from the command-line, takes an input filename, output filename,
source language, and target language. It translates the input file from the source language to
the target language, and then writes it to the output file. You can use the sample file in the data direction for the input file.