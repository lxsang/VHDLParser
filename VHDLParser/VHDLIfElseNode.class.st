Class {
	#name : #VHDLIfElseNode,
	#superclass : #VHDLSequenceNode,
	#instVars : [
		'ifelsif',
		'else'
	],
	#category : #VHDLParser
}

{ #category : #'instance creation' }
VHDLIfElseNode class >> from:anArray [
	^self new ifelsif: (anArray at:1);
		else:(anArray at:2);
		yourself.
]

{ #category : #accessing }
VHDLIfElseNode >> else [
	^ else
]

{ #category : #accessing }
VHDLIfElseNode >> else: anObject [
	else := anObject
]

{ #category : #accessing }
VHDLIfElseNode >> ifelsif [
	^ ifelsif
]

{ #category : #accessing }
VHDLIfElseNode >> ifelsif: anObject [
	ifelsif := anObject
]
