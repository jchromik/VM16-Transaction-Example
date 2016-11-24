accessing
balanceForAccount: anAccount

	^transactions inject: 0 into: [ :sum :each | | result |
		result := sum.
		(each to = anAccount) ifTrue: [ result := result + each amount ]. 
		(each from = anAccount) ifTrue: [ result := result - each amount ]. 
		result ].