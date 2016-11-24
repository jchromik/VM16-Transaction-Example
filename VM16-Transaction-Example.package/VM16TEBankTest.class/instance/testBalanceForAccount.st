as yet unclassified
testBalanceForAccount

	| bank acc1 acc2 t1 t2 |
	bank := VM16TEBank new.
	acc1 := VM16TEAccount new: 'alice'.
	acc2 := VM16TEAccount new: 'bob'.
	t1 := VM16TETransaction new
		amount: 100;
		from: acc1;
		to: acc2.
	t2 := VM16TETransaction new
		amount: 10;
		from: acc2;
		to: acc1.
	bank
		addAccount: acc1;
		addAccount: acc2;
		addTransaction: t1;
		addTransaction: t2.
		
	self assert: (bank balanceForAccount: acc1) equals: -90.
	self assert: (bank balanceForAccount: acc2) equals: 90.
	