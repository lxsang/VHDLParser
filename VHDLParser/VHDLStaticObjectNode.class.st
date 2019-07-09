Class {
	#name : #VHDLStaticObjectNode,
	#superclass : #VHDLNode,
	#instVars : [
		'name',
		'value'
	],
	#category : #VHDLParser
}

{ #category : #'as yet unclassified' }
VHDLStaticObjectNode class >> name:aSymbol of:aValue [
	^ self new name:aSymbol;value:aValue; yourself.
]

{ #category : #accessing }
VHDLStaticObjectNode >> name [
	^name.
]

{ #category : #accessing }
VHDLStaticObjectNode >> name: anObject [
	name := anObject
]

{ #category : #accessing }
VHDLStaticObjectNode >> value [
	^value
]

{ #category : #accessing }
VHDLStaticObjectNode >> value: anObject [
	value := anObject
]
