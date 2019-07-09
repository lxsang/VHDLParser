Class {
	#name : #VHDLCaseNode,
	#superclass : #VHDLSequenceNode,
	#instVars : [
		'reference',
		'cases'
	],
	#category : #VHDLParser
}

{ #category : #'instance creation' }
VHDLCaseNode class >> from:anArray [
	^self new reference:(anArray at:1);
	cases: (anArray at:2);
	yourself.
]

{ #category : #accessing }
VHDLCaseNode >> cases [
	^ cases
]

{ #category : #accessing }
VHDLCaseNode >> cases: anObject [
	cases := anObject
]

{ #category : #accessing }
VHDLCaseNode >> reference [
	^ reference
]

{ #category : #accessing }
VHDLCaseNode >> reference: anObject [
	reference := anObject
]
