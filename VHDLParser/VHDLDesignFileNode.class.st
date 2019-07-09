Class {
	#name : #VHDLDesignFileNode,
	#superclass : #VHDLNode,
	#instVars : [
		'units',
		'path'
	],
	#category : #VHDLParser
}

{ #category : #'instance creation' }
VHDLDesignFileNode class >> from:anArray [
	^self new units:anArray; yourself
]

{ #category : #accessing }
VHDLDesignFileNode >> path [
	^ path
]

{ #category : #accessing }
VHDLDesignFileNode >> path: anObject [
	path := anObject.
	self units do:[:e| e path:self path].
]

{ #category : #accessing }
VHDLDesignFileNode >> units [
	^ units
]

{ #category : #accessing }
VHDLDesignFileNode >> units: anObject [
	units := anObject
]
