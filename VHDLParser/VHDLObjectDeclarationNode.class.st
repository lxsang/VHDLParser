Class {
	#name : #VHDLObjectDeclarationNode,
	#superclass : #VHDLNode,
	#instVars : [
		'name',
		'type',
		'default'
	],
	#category : #VHDLParser
}

{ #category : #'instance creation' }
VHDLObjectDeclarationNode class >> from:anArray [
	^self new name:(anArray at:1);
		type:(anArray at:2);
		default: (anArray at:3);
		yourself.
]

{ #category : #accessing }
VHDLObjectDeclarationNode >> default [
	^ default
]

{ #category : #accessing }
VHDLObjectDeclarationNode >> default: anObject [
	default := anObject
]

{ #category : #accessing }
VHDLObjectDeclarationNode >> name [
	^name
]

{ #category : #accessing }
VHDLObjectDeclarationNode >> name: anObject [
	name := anObject
]

{ #category : #accessing }
VHDLObjectDeclarationNode >> type [
	^ type
]

{ #category : #accessing }
VHDLObjectDeclarationNode >> type: anObject [
	type := anObject
]
