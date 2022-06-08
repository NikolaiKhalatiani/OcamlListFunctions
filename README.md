# OcamlListFunctions
OCaml Lab task about List Module functions

Implement mentioned functions from OCaml <code>List</code> Standard Library yourself. Make sure your implementations have the same type. In cases where the standard functions throw exceptions, you may just <code>failwith</code> "invalid".

<ol>
<li><strong>let hd</strong><br><code>val hd : 'a list -> 'a
<br>
Return the first element of the given list.</br>
Raises Failure if the list is empty.</code></br></li>
<li><strong>let tl</strong><br><code>val tl : 'a list -> 'a list
<br>
Return the given list without its first element.</br>
Raises Failure if the list is empty.</br></code></li>
<li><strong>let length</strong><br><code>val length : 'a list -> int
Return the length (number of elements) of the given list.</code></br></li>
<li><strong>let append</strong><br><code>val append : 'a list -> 'a list -> 'a list
Concatenate two lists. Same function as the infix operator @.
  Not tail-recursive (length of the first argument). The @ operator is not tail-recursive either.</code></br></li>
<li><strong>let rev</strong><br><code>val rev : 'a list -> 'a list
List reversal.</code></br></li>
<li><strong>let nth</strong><br><code>val nth : 'a list -> int -> 'a
Return the n-th element of the given list. The first element (head of the list) is at position 0.

Raises
Failure if the list is too short and Invalid_argument if n is negative.</code></br></li>
</ol>
