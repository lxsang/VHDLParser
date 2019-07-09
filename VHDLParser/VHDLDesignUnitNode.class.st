Class {
	#name : #VHDLDesignUnitNode,
	#superclass : #VHDLNode,
	#instVars : [
		'context',
		'unit'
	],
	#category : #VHDLParser
}

{ #category : #'as yet unclassified' }
VHDLDesignUnitNode class >> from:anArray [
	^self new context: (anArray at:1);
		unit: (anArray at:2);
		yourself.
]

{ #category : #accessing }
VHDLDesignUnitNode >> context [
	^ context
]

{ #category : #accessing }
VHDLDesignUnitNode >> context: anObject [
	context := anObject
]

{ #category : #accessing }
VHDLDesignUnitNode >> unit [
	^ unit
]

{ #category : #accessing }
VHDLDesignUnitNode >> unit: anObject [
	unit := anObject
]
