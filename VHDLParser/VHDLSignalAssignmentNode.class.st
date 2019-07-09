Class {
	#name : #VHDLSignalAssignmentNode,
	#superclass : #VHDLAssignmentNode,
	#category : #VHDLParser
}

{ #category : #'as yet unclassified' }
VHDLSignalAssignmentNode class >> from:anArray [
	^self new left:(anArray at:1);
		right:(anArray at:2);
		yourself.
]
