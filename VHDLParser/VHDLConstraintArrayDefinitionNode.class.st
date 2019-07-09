Class {
	#name : #VHDLConstraintArrayDefinitionNode,
	#superclass : #VHDLArrayDefinitionNode,
	#instVars : [
		'indexConstraint',
		'subtype'
	],
	#category : #VHDLParser
}

{ #category : #'instance creation' }
VHDLConstraintArrayDefinitionNode class >> from:anArray [
	^self new indexConstraint: (anArray at:1);
			subtype: (anArray at:2);
			yourself.
]

{ #category : #accessing }
VHDLConstraintArrayDefinitionNode >> indexConstraint [
	^ indexConstraint
]

{ #category : #accessing }
VHDLConstraintArrayDefinitionNode >> indexConstraint: anObject [
	indexConstraint := anObject
]

{ #category : #accessing }
VHDLConstraintArrayDefinitionNode >> subtype [
	^ subtype
]

{ #category : #accessing }
VHDLConstraintArrayDefinitionNode >> subtype: anObject [
	subtype := anObject
]
