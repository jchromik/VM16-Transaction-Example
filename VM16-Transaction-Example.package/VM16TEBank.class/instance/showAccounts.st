as yet unclassified
showAccounts

	accounts do: [ :account | | balance |
		balance := transactions inject: 0 into: [ :sum :each | | result |
			result := sum.
			(each to = account) ifTrue: [ result := result + each amount ]. 
			(each from = account) ifTrue: [ result := result - each amount ]. 
			result ].
		Transcript show: account name , ': '.
		Transcript show: balance.
		Transcript cr.]