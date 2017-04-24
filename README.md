## Anagram Detector
Ruby exercise for Epicodus, 4.24.2017

By Susha Dore
## Description
This web page identifies two words as anagrams, antigrams, palindromes or non words.
## Specifications
| behavior |  input   |  output |
|----------|:--------:|:--------:
|Takes two words and identifies them as anagrams|smelt & melts|anagram|
|Identifies anagram regardless of capitalization|Astronomer & Moon Starer|anagram|
|Identifies palindromes|naan & naan|palindrome|
|Identifies words without vowels|hwr|not a word|
|Identifies antigrams|stop & end|antigram|
|Identifies anagrams despite spaces and punctuation|Election results: & Lies! Let's recount.|anagram|
## Setup
This site requires a machine with Ruby installed. View the repository at https://github.com/sushadore/anagrams. This is a static site but follow these steps for a browser preview:
* In the terminal run the command: git clone https://github.com/sushadore/anagrams
* Switch to the anagrams folder and run the command: ruby app.rb
* View the site at http://localhost:4567/
## License
MIT license
Copyright (c) 2017 Susha Dore
