Feature: caesar ciphers message

  The program will take two arguments when called from the command line
  - a string and a key. The string will be ciphered using Caesar's cipher.
  Positive keys will be interpreted as a right shift, negative keys as
  a left shift.

  Scenario: small positive key
    Given I want to use caesar cipher
    When I run caesar with the string "1230-Beware the GREEN Monkey!!;;[[££$" and the key "8"
    Then I should see "1230-Jmeizm bpm OZMMV Uwvsmg!!;;[[££$"
