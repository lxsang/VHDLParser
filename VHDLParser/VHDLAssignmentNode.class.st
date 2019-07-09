Class {
	#name : #VHDLAssignmentNode,
	#superclass : #VHDLStatementNode,
	#instVars : [
		'left',
		'right'
	],
	#category : #VHDLParser
}

{ #category : #'as yet unclassified' }
VHDLAssignmentNode class >> from:anArray [
	^self new left:(anArray at:1);
		right:(anArray at:2);
		yourself.
]

{ #category : #accessing }
VHDLAssignmentNode >> left [
	^ left
]

{ #category : #accessing }
VHDLAssignmentNode >> left: anObject [
	left := anObject
]

{ #category : #accessing }
VHDLAssignmentNode >> right [
	^ right
]

{ #category : #accessing }
VHDLAssignmentNode >> right: anObject [
	right := anObject
]
