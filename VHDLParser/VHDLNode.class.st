Class {
	#name : #VHDLNode,
	#superclass : #Object,
	#category : #VHDLParser
}

{ #category : #'instance creation' }
VHDLNode class >> from:anArray [
	^self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
VHDLNode >> isInstatiatedNode [
	^false.
]
