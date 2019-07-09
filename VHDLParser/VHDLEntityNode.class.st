Class {
	#name : #VHDLEntityNode,
	#superclass : #VHDLNode,
	#instVars : [
		'name',
		'header',
		'declarations',
		'statements'
	],
	#category : #VHDLParser
}

{ #category : #'instance creation' }
VHDLEntityNode class >> from: anArray [
	^self new name:(anArray at:1);
		header:(anArray at:2);
		declarations:(anArray at:3);
		statements:(anArray at:4);
		yourself.
]

{ #category : #accessing }
VHDLEntityNode >> declarations [
	^ declarations
]

{ #category : #accessing }
VHDLEntityNode >> declarations: anObject [
	declarations := anObject
]

{ #category : #'as yet unclassified' }
VHDLEntityNode >> genericCollect [
	(header at:1) ifNil:[^OrderedDictionary new].
	^OrderedDictionary newFrom: ((header at:1) collect: [ :each| (each asMetaObject )]).
]

{ #category : #accessing }
VHDLEntityNode >> header [
	^ header
]

{ #category : #accessing }
VHDLEntityNode >> header: anObject [
	header := anObject
]

{ #category : #accessing }
VHDLEntityNode >> name [
	^name
]

{ #category : #accessing }
VHDLEntityNode >> name: anObject [
	name := anObject
]

{ #category : #accessing }
VHDLEntityNode >> statements [
	^ statements
]

{ #category : #accessing }
VHDLEntityNode >> statements: anObject [
	statements := anObject
]
