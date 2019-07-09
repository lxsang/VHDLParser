Class {
	#name : #VHDLMainParser,
	#superclass : #PPCompositeParser,
	#instVars : [
		'design_unit',
		'context_clause',
		'library_unit',
		'context_item',
		'secondary_unit',
		'primary_unit',
		'design_file'
	],
	#category : #VHDLParser
}

{ #category : #'as yet unclassified' }
VHDLMainParser class >> dependencies [
	^ {VHDLGrammarParser}
]

{ #category : #'as yet unclassified' }
VHDLMainParser class >> parseVHDL:aFile [
	^self new parseVHDL: aFile.
]

{ #category : #accessing }
VHDLMainParser >> context_clause [
	^ context_item star.
]

{ #category : #accessing }
VHDLMainParser >> context_item [
	^ (self dep library_clause ) / (self dep use_clause )
]

{ #category : #accessing }
VHDLMainParser >> dep [
	^self dependencyAt: VHDLGrammarParser 
]

{ #category : #accessing }
VHDLMainParser >> design_file [
	^design_unit star. 
]

{ #category : #accessing }
VHDLMainParser >> design_unit [
	^ context_clause , library_unit 
]

{ #category : #accessing }
VHDLMainParser >> library_unit [
	^ secondary_unit / primary_unit 
]

{ #category : #'as yet unclassified' }
VHDLMainParser >> loadVHDLFile:aPath [
	|source rx|
	rx := '--[^',Character cr asString, Character lf asString,']*'.
	source := (FileStream readOnlyFileNamed: aPath) contents asLowercase.
	"remove all comment"
	^source copyWithRegex: rx matchesReplacedWith: ''.
]

{ #category : #'as yet unclassified' }
VHDLMainParser >> parseVHDL:afile [
	^self parse: (self loadVHDLFile: afile).
]

{ #category : #accessing }
VHDLMainParser >> primary_unit [
	^ (self dep entity_declaration)
  / (self dep configuration_declaration)
  / ( self dep package_declaration)
]

{ #category : #accessing }
VHDLMainParser >> secondary_unit [
	^ (self dep architecture_body)
  / (self dep package_body)
]

{ #category : #accessing }
VHDLMainParser >> start [
	^ design_file end.
]
