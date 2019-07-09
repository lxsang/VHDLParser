Class {
	#name : #VHDLExplicitRangeNode,
	#superclass : #VHDLRangeNode,
	#instVars : [
		'left',
		'direction',
		'right'
	],
	#category : #VHDLParser
}

{ #category : #'instance creation' }
VHDLExplicitRangeNode class >> from:anArray [
	^self new left:(anArray at:1); direction:(anArray at:2);
				right:(anArray at:3); yourself.
]

{ #category : #accessing }
VHDLExplicitRangeNode >> direction [
	^ direction
]

{ #category : #accessing }
VHDLExplicitRangeNode >> direction: anObject [
	direction := anObject
]

{ #category : #accessing }
VHDLExplicitRangeNode >> left [
	^ left
]

{ #category : #accessing }
VHDLExplicitRangeNode >> left: anObject [
	left := anObject
]

{ #category : #accessing }
VHDLExplicitRangeNode >> right [
	^ right
]

{ #category : #accessing }
VHDLExplicitRangeNode >> right: anObject [
	right := anObject
]
