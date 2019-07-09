Class {
	#name : #VHDLProcessNode,
	#superclass : #VHDLConcurenceNode,
	#instVars : [
		'sensitivityList',
		'statements',
		'declarations'
	],
	#category : #VHDLParser
}

{ #category : #'as yet unclassified' }
VHDLProcessNode class >> from:anArray [
	^self new sensitivityList: (anArray at:1);
			declarations: (anArray at:2);
			statements:(anArray at:3);
			yourself.
]

{ #category : #accessing }
VHDLProcessNode >> declarations [
	^ declarations
]

{ #category : #accessing }
VHDLProcessNode >> declarations: anObject [
	declarations := OrderedCollection new.
	anObject do:[:e|
		e isArray ifTrue:[e do:[:e1| declarations add:e1]] ifFalse:[
			declarations add:e]]
]

{ #category : #'as yet unclassified' }
VHDLProcessNode >> new [
	declarations := {  }.
]

{ #category : #accessing }
VHDLProcessNode >> sensitivityList [
	^ sensitivityList
]

{ #category : #accessing }
VHDLProcessNode >> sensitivityList: anObject [
	sensitivityList := anObject
]

{ #category : #accessing }
VHDLProcessNode >> statements [
	^ statements
]

{ #category : #accessing }
VHDLProcessNode >> statements: anObject [
	statements := anObject
]
