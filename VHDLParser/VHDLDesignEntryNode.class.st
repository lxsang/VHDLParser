Class {
	#name : #VHDLDesignEntryNode,
	#superclass : #VHDLNode,
	#instVars : [
		'name',
		'header',
		'entity',
		'architecture',
		'path'
	],
	#category : #VHDLParser
}

{ #category : #'instance creation' }
VHDLDesignEntryNode class >> from:anArray [
	^self new header: (anArray at:1);
		entity:(anArray at:2);
		architecture: (anArray at:3);
		yourself.
]

{ #category : #accessing }
VHDLDesignEntryNode >> architecture [
	^ architecture
]

{ #category : #accessing }
VHDLDesignEntryNode >> architecture: anObject [
	architecture := anObject
]

{ #category : #accessing }
VHDLDesignEntryNode >> dependencies [
	|list dpath|
	dpath := self path asFileReference parent pathString.
	list := { }.
	self architecture do:[:each| 
		list := list, (each dependencies collect:[:el|
			el key -> (dpath,'/',el value asString,'.vhd')
		]).
	].
	^list.
]

{ #category : #accessing }
VHDLDesignEntryNode >> entity [
	^ entity
]

{ #category : #accessing }
VHDLDesignEntryNode >> entity: anObject [
	entity := anObject.
	self name:('_' ucFirstLetter: self entity name).
]

{ #category : #accessing }
VHDLDesignEntryNode >> header [
	^ header
]

{ #category : #accessing }
VHDLDesignEntryNode >> header: anObject [
	header := anObject
]

{ #category : #accessing }
VHDLDesignEntryNode >> name [
	^name
]

{ #category : #accessing }
VHDLDesignEntryNode >> name: anObject [
	name := anObject
]

{ #category : #accessing }
VHDLDesignEntryNode >> path [
	^ path
]

{ #category : #accessing }
VHDLDesignEntryNode >> path: anObject [
	path := anObject
]

{ #category : #'as yet unclassified' }
VHDLDesignEntryNode >> setDependenciesPrefix:aPre [
	self architecture do:[:each| 
		each setDependenciesPrefix: aPre.
	].
]
