Class {
	#name : #VHDLSubtypeIndicationNode,
	#superclass : #VHDLNode,
	#instVars : [
		'type',
		'constraint'
	],
	#category : #VHDLParser
}

{ #category : #'instance creation' }
VHDLSubtypeIndicationNode class >> from:anArray [
	^self new type: (anArray at:1);
			constraint:(anArray at:2);
			yourself.
]

{ #category : #accessing }
VHDLSubtypeIndicationNode >> constraint [
	^ constraint
]

{ #category : #accessing }
VHDLSubtypeIndicationNode >> constraint: anObject [
	constraint := anObject
]

{ #category : #accessing }
VHDLSubtypeIndicationNode >> type [
	^ type
]

{ #category : #accessing }
VHDLSubtypeIndicationNode >> type: anObject [
	type := anObject
]
