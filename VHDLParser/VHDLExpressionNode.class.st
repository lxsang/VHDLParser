Class {
	#name : #VHDLExpressionNode,
	#superclass : #VHDLNode,
	#instVars : [
		'receiver',
		'selector',
		'arguments'
	],
	#category : #VHDLParser
}

{ #category : #'as yet unclassified' }
VHDLExpressionNode class >> cselectors [
	^Dictionary newFrom:{
		#+ -> #+.
		#- -> #-.
		#= -> #=.
		#* -> #*.
		#/ -> #/.
		#and -> #and:.
		#or -> #or:.
		#xor -> #xor:.
		#not -> #not.
		#& -> #,.
		#/= -> #~=.
		#< -> #<.
		#> -> #>.
		#<= -> #<=.
		#>= -> #>=
	}
]

{ #category : #'instance creation' }
VHDLExpressionNode class >> receiver:rev selector:sel arguments:args [
	^self new receiver: rev;
		selector: sel;
		arguments: args;
		yourself.
]

{ #category : #accessing }
VHDLExpressionNode >> arguments [
	^ arguments
]

{ #category : #accessing }
VHDLExpressionNode >> arguments: anObject [
	arguments := anObject
]

{ #category : #'as yet unclassified' }
VHDLExpressionNode >> getValueOf:obj scope:aDic [
	obj class caseOf: { 
		[ ByteSymbol ] -> [^aDic at: obj].
		[ VHDLExpressionNode  ] -> [ ^obj value:aDic ].
	} otherwise: [ ^obj].
]

{ #category : #accessing }
VHDLExpressionNode >> receiver [
	^ receiver
]

{ #category : #accessing }
VHDLExpressionNode >> receiver: anObject [
	anObject isArray ifTrue:[
		anObject size = 1 ifTrue:[
			receiver := anObject at:1.	
		] ifFalse:[^ self error:'Multiple receiver?'].	
	] ifFalse:[receiver := anObject].
	
]

{ #category : #accessing }
VHDLExpressionNode >> selector [
	^ selector
]

{ #category : #accessing }
VHDLExpressionNode >> selector: anObject [
	selector := anObject
]

{ #category : #accessing }
VHDLExpressionNode >> value:objts [
	|rec param|
	rec := self getValueOf: self receiver  scope: objts.
	param := self getValueOf: self arguments  scope:objts.
	^ (MessageSend receiver: rec selector:self selector  argument:param ) value. 
]
