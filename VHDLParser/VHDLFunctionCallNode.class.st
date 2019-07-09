Class {
	#name : #VHDLFunctionCallNode,
	#superclass : #VHDLStatementNode,
	#instVars : [
		'name',
		'parameters'
	],
	#category : #VHDLParser
}

{ #category : #'as yet unclassified' }
VHDLFunctionCallNode class >> conversions [
	^Dictionary newFrom: { 
		#signed -> #signed.
		#unsigned-> #unsigned.
		#std_logic_vector -> #std_logic_vector.
		#std_ulogic_vector -> #std_logic_vector.
		#std_ulogic -> #std_logic.
		#std_logic-> #std_logic
	}
]

{ #category : #'as yet unclassified' }
VHDLFunctionCallNode class >> functions [
	^Dictionary newFrom: { 
		#rising_edge -> #posedge.
		#falling_edge-> #negedge.
		#to_integer -> #asInteger.
		#to_unsigned -> #asUnsignedLogicVector:.
		#to_signed -> #asSignedLogicVector:
	}
]

{ #category : #accessing }
VHDLFunctionCallNode >> name [
	^name
]

{ #category : #accessing }
VHDLFunctionCallNode >> name: anObject [
	name := anObject
]

{ #category : #accessing }
VHDLFunctionCallNode >> parameters [
	^ parameters
]

{ #category : #accessing }
VHDLFunctionCallNode >> parameters: anObject [
	parameters := anObject
]
