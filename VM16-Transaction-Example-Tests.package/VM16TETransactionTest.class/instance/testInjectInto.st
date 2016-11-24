as yet unclassified
testInjectInto

	| t1 t2 |
	t1 := VM16TETransaction new
		amount: 100.
	t2 := VM16TETransaction new
		amount: 10;
		predecessor: t1.
	
	self assert: (t2 inject: 0 into: [ :sum :each |  sum + 1 ]) equals: 2.
	self assert: (t2 inject: 0 into: [ :sum :each |  sum + each amount ]) equals: 110.