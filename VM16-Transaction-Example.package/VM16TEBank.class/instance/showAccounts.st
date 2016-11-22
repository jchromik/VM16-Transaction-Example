as yet unclassified
showAccounts

	accounts do: [ :account | | balance | 
		balance := 0.
		Transcript show: account name ]