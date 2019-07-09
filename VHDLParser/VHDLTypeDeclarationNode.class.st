Class {
	#name : #VHDLTypeDeclarationNode,
	#superclass : #VHDLNode,
	#instVars : [
		'name',
		'definition'
	],
	#category : #VHDLParser
}

{ #category : #'instance creation' }
VHDLTypeDeclarationNode class >> from:anArray [
	^self new name:(anArray at:1);
		definition:(anArray at:2);
		yourself.
]

{ #category : #accessing }
VHDLTypeDeclarationNode >> definition [
	^ definition
]

{ #category : #accessing }
VHDLTypeDeclarationNode >> definition: anObject [
	definition := anObject
]

{ #category : #accessing }
VHDLTypeDeclarationNode >> name [
	^name 
]

{ #category : #accessing }
VHDLTypeDeclarationNode >> name: anObject [
	name := anObject
]
