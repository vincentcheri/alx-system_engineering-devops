## 0-simply_match_school.rb
- Matches "School"

## 1-repetition_token_0.rb
- Matches any argument that has hbttn, hbtttn, hbttttn, hbtttttn (t{2,5})

## 2-repetition_token_1.rb
- Matches hbtn or htn
- The '?' means 0 or 1 (b is optional)

## 3-repetition_token_2.rb
- Matches hbtn or hbttttttttn (t{1,10} or t+)

## 4-repetition_token_3.rb
- Matches /hbt*n/ with zero or more 't's
- Matches hbn, hbtn, hbttn, hbttttttttn, etc.

## 5-beginning_and_end.rb
- Matches h.n (h + any character + n)
- ./k.rb "hannwe hsn hrn" returns han hsn hrn

## 6-phone_number.rb
- Matches phone number that contains exactly 10 digits from beginning to end of a line
- Pattern: /^[0-9]{10}$/

## 7-OMG_WHYARE_YOU_SHOUTING.rb
- Matches capital letters only
- ./k.rb "azfWhdhg#hdhdAWHFGHhhdhd" returns AWHFGH

## 100-textme.rb
- Grabs sender and receiver from log format
- ./k.rb "[from:ppp.ppp.p.p][to:p.p.p.1]" returns ppp.ppp.p.p,p.p.p.1
