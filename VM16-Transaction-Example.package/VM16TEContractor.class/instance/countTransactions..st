as yet unclassified
countTransactions: aTransaction

	^aTransaction inject: 0 into: [ :sum :each | sum + 1 ]