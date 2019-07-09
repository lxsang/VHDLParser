Class {
	#name : #VHDLSelectedSignalAssignNode,
	#superclass : #VHDLSignalAssignmentNode,
	#instVars : [
		'select'
	],
	#category : #VHDLParser
}

{ #category : #'as yet unclassified' }
VHDLSelectedSignalAssignNode class >> from:anArray [
	 ^(super from:anArray) select:(anArray at:3);yourself.
]

{ #category : #accessing }
VHDLSelectedSignalAssignNode >> select [
	^ select
]

{ #category : #accessing }
VHDLSelectedSignalAssignNode >> select: anObject [
	select := anObject
]
