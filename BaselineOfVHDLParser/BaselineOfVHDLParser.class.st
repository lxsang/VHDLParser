Class {
	#name : #BaselineOfVHDLParser,
	#superclass : #BaselineOf,
	#category : #BaselineOfVHDLParser
}

{ #category : #baselines }
BaselineOfVHDLParser >> baseline: spec [
	<baseline>
	spec for: #common do: [ 
		spec baseline: 'PetitParser'
    	with: [  spec repository: 'github://moosetechnology/PetitParser/src'].
		spec
			package: 'VHDLParser';
			group: 'default' with: #('PetitParser')
]
]
