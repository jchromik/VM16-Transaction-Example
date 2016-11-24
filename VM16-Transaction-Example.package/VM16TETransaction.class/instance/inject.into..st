enumerating
inject: aValue into: aBlock

	predecessor ifNil: [
		^aBlock value: aValue value: self ]
	ifNotNil: [
		^(predecessor inject: (aBlock value: aValue value: self) into: aBlock) ]