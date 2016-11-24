enumerating
do: aBlock

	aBlock value: self.
	predecessor ifNotNil: [
		predecessor do: aBlock ]