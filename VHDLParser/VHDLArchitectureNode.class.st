Class {
	#name : #VHDLArchitectureNode,
	#superclass : #VHDLNode,
	#instVars : [
		'name',
		'entity',
		'declarations',
		'statements'
	],
	#category : #VHDLParser
}

{ #category : #'as yet unclassified' }
VHDLArchitectureNode class >> from:anArray [
	^self new name:(anArray at:1);
			entity:(anArray at:2);
			declarations: (anArray at:3);
			statements:(anArray at:4);
			yourself.
]

{ #category : #accessing }
VHDLArchitectureNode >> declarations [
	^ declarations
]

{ #category : #accessing }
VHDLArchitectureNode >> declarations: anObject [
	declarations := anObject
]

{ #category : #'as yet unclassified' }
VHDLArchitectureNode >> dependencies [
	^(self statements select:[:each| 
		each isInstatiatedNode]) collect:[:each|each relativeReference.]
]

{ #category : #accessing }
VHDLArchitectureNode >> entity [
	^ entity
]

{ #category : #accessing }
VHDLArchitectureNode >> entity: anObject [
	entity := anObject
]

{ #category : #accessing }
VHDLArchitectureNode >> name [
	^name
]

{ #category : #accessing }
VHDLArchitectureNode >> name: anObject [
	name := anObject
]

{ #category : #'as yet unclassified' }
VHDLArchitectureNode >> setDependenciesPrefix:aPre [
	(self statements select:[:each| 
		each isInstatiatedNode]) collect:[:each|each prefix:aPre.]
]

{ #category : #accessing }
VHDLArchitectureNode >> statements [
	^ statements
]

{ #category : #accessing }
VHDLArchitectureNode >> statements: anObject [
	statements := anObject
]
