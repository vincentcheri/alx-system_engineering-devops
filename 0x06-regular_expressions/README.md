## 0-simply_match_school.rb
- Matches "School"
```bash
./0-simply_match_school.rb "School is cool School"
# Output: SchoolSchool
```

## 1-repetition_token_0.rb
- Matches any argument that has hbttn, hbtttn, hbttttn, hbtttttn (t{2,5})
```bash
./1-repetition_token_0.rb "hbttn hbtttn hbttttn"
# Output: hbttnhbtttnhbttttn
```

## 2-repetition_token_1.rb
- Matches hbtn or htn
- The '?' means 0 or 1 (b is optional)
```bash
./2-repetition_token_1.rb "htn hbtn hbbtn"
# Output: htnhbtn
```

## 3-repetition_token_2.rb
- Matches hbtn or hbttttttttn (t{1,10} or t+)
```bash
./3-repetition_token_2.rb "hbtn hbttn hbttttttttn"
# Output: hbtnhbttnhbttttttttn
```

## 4-repetition_token_3.rb
- Matches /hbt*n/ with zero or more 't's
- Matches hbn, hbtn, hbttn, hbttttttttn, etc.
```bash
./4-repetition_token_3.rb "hbn hbtn hbttn hbttttttttn"
# Output: hbnhbtnhbttnhbttttttttn
```

## 5-beginning_and_end.rb
- Matches h.n (h + any character + n)
```bash
./5-beginning_and_end.rb "hannwe hsn hrn"
# Output: hanhsnhrn
```

## 6-phone_number.rb
- Matches phone number that contains exactly 10 digits from beginning to end of a line
- Pattern: /^[0-9]{10}$/
```bash
./6-phone_number.rb "1234567890"
# Output: 1234567890
```

## 7-OMG_WHYARE_YOU_SHOUTING.rb
- Matches capital letters only
```bash
./7-OMG_WHYARE_YOU_SHOUTING.rb "azfWhdhg#hdhdAWHFGHhhdhd"
# Output: AWHFGH
```

## 100-textme.rb
- Grabs sender and receiver from log format
```bash
./100-textme.rb "[from:192.168.1.1][to:10.0.0.1]"
# Output: 192.168.1.1,10.0.0.1
```
