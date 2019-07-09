Class {
	#name : #VHDLPortDeclarationNode,
	#superclass : #VHDLObjectDeclarationNode,
	#instVars : [
		'mode'
	],
	#category : #VHDLParser
}

{ #category : #'instance creation' }
VHDLPortDeclarationNode class >> from:anArray [
	^ self new name:(anArray at:1);
			mode:(anArray at:2) asSymbol;
			type:(anArray at:3);
			yourself.
]

{ #category : #accessing }
VHDLPortDeclarationNode >> mode [
	^ mode
]

{ #category : #accessing }
VHDLPortDeclarationNode >> mode: anObject [
	mode := anObject
]
