Class {
	#name : #VHDLModuleInstantiatedNode,
	#superclass : #VHDLInstantiatedNode,
	#instVars : [
		'arch'
	],
	#category : #VHDLParser
}

{ #category : #'instance creation' }
VHDLModuleInstantiatedNode class >> from:anArray [
	^ self new name:(anArray at:1); 
				arch:(anArray at:2); 
				genericMap: (anArray at:3);
				portMap: (anArray at:4);
				yourself 
]

{ #category : #accessing }
VHDLModuleInstantiatedNode >> arch [
	^ arch
]

{ #category : #accessing }
VHDLModuleInstantiatedNode >> arch: anObject [
	arch := anObject
]

{ #category : #'as yet unclassified' }
VHDLModuleInstantiatedNode >> metaClass [
	self prefix ifNil: [  
		^self relativeReference key asClass.
	].
	^(self prefix, self relativeReference key) asClass.
]

{ #category : #'as yet unclassified' }
VHDLModuleInstantiatedNode >> relativeReference [
	(self name at:1) = #work ifTrue:[
		^ ('_' ucFirstLetter: (self name at:2))	-> (self name at:2)
	].
	^self error:('.' join: self name),' is not supported yet'.
]
