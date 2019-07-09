Class {
	#name : #VHDLEnumerationDefinitionNode,
	#superclass : #VHDLScalarDefinitionNode,
	#instVars : [
		'enum'
	],
	#category : #VHDLParser
}

{ #category : #'instance creation' }
VHDLEnumerationDefinitionNode class >> from:anObject [
	^self new enum:anObject;yourself.
]

{ #category : #accessing }
VHDLEnumerationDefinitionNode >> enum [
	^ enum
]

{ #category : #accessing }
VHDLEnumerationDefinitionNode >> enum: anObject [
	enum := anObject
]
