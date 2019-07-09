Class {
	#name : #VHDLNameSliceNode,
	#superclass : #VHDLStatementNode,
	#instVars : [
		'name',
		'slices'
	],
	#category : #VHDLParser
}

{ #category : #accessing }
VHDLNameSliceNode >> name [
	^name 
]

{ #category : #accessing }
VHDLNameSliceNode >> name: anObject [
	name := anObject
]

{ #category : #accessing }
VHDLNameSliceNode >> slices [
	^ slices
]

{ #category : #accessing }
VHDLNameSliceNode >> slices: anObject [
	slices := anObject
]
