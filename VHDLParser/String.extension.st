Extension { #name : #String }

{ #category : #'*VHDLParser' }
String >> ucFirstLetter:str [
	^'' join:((self split:str) collect: [:each| each at:1 put:(each at:1) asUppercase. each])
]
