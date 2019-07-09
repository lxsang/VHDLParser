Class {
	#name : #VHDLInstantiatedNode,
	#superclass : #VHDLNode,
	#instVars : [
		'genericMap',
		'portMap',
		'name',
		'prefix'
	],
	#category : #VHDLParser
}

{ #category : #accessing }
VHDLInstantiatedNode >> genericMap [
	^ genericMap
]

{ #category : #accessing }
VHDLInstantiatedNode >> genericMap: anObject [
	genericMap := anObject ifNil: [ {  } ] ifNotNil: [ anObject ]
]

{ #category : #'as yet unclassified' }
VHDLInstantiatedNode >> isInstatiatedNode [
	^ true.
]

{ #category : #accessing }
VHDLInstantiatedNode >> name [
	^name
]

{ #category : #accessing }
VHDLInstantiatedNode >> name: anObject [
	name := anObject
]

{ #category : #accessing }
VHDLInstantiatedNode >> portMap [
	^ portMap
]

{ #category : #accessing }
VHDLInstantiatedNode >> portMap: anObject [
	portMap := anObject
]

{ #category : #accessing }
VHDLInstantiatedNode >> prefix [
	^ prefix
]

{ #category : #accessing }
VHDLInstantiatedNode >> prefix: anObject [
	prefix := anObject
]

{ #category : #'as yet unclassified' }
VHDLInstantiatedNode >> relativeReference [
	^self subclassResponsibility.
]
