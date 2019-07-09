Class {
	#name : #VHDLAdapter,
	#superclass : #VHDLMainParser,
	#category : #VHDLParser
}

{ #category : #'as yet unclassified' }
VHDLAdapter class >> defaultPrefix [
	^#IP
]

{ #category : #'as yet unclassified' }
VHDLAdapter class >> dependencies [
	^ {VHDLGrammarAdapter}
]

{ #category : #accessing }
VHDLAdapter >> collectArchivesNodes:nodes [
	^{}
]

{ #category : #accessing }
VHDLAdapter >> collectDesignEntryNode:nodes [
	|entities arches|
	entities := nodes select:[:each| each unit class = VHDLEntityNode].
	arches := nodes select:[:each| each unit class = VHDLArchitectureNode].
	^entities collect: [ :each|
		|arch|
		arch := (arches select:[:e| 
			e unit entity = each unit name]) collect:[:e| e unit].
		VHDLDesignEntryNode from:{each context.each unit. arch.}.
	]
]

{ #category : #accessing }
VHDLAdapter >> dep [
	^self dependencyAt: VHDLGrammarAdapter.
]

{ #category : #accessing }
VHDLAdapter >> design_file [
	^ super design_file==>[:nodes|
			VHDLDesignFileNode from:(
				(self collectDesignEntryNode:nodes),
				(self collectArchivesNodes:nodes)
			)
		"VHDLDesignFileNode from:nodes."
	].
]

{ #category : #accessing }
VHDLAdapter >> design_unit [
	^ super design_unit==>[:nodes|
			VHDLDesignUnitNode from:nodes
	].
]

{ #category : #'as yet unclassified' }
VHDLAdapter >> parseVHDL:afile [
	^(self parse: (self loadVHDLFile: afile)) path:afile;yourself.
]
