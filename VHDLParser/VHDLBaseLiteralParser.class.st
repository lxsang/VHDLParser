Class {
	#name : #VHDLBaseLiteralParser,
	#superclass : #PPCompositeParser,
	#instVars : [
		'abs',
		'access',
		'across',
		'after',
		'alias',
		'all',
		'vand',
		'architecture',
		'array',
		'assert',
		'attribute',
		'begin',
		'block',
		'body',
		'break',
		'buffer',
		'bus',
		'case',
		'component',
		'configuration',
		'constant',
		'disconnect',
		'downto',
		'vend',
		'entity',
		'else',
		'elsif',
		'exit',
		'file',
		'for',
		'function',
		'generate',
		'generic',
		'group',
		'guarded',
		'if',
		'impure',
		'in',
		'inertial',
		'inout',
		'is',
		'label',
		'library',
		'limit',
		'linkage',
		'literal',
		'loop',
		'map',
		'mod',
		'nand',
		'nature',
		'new',
		'next',
		'noise',
		'nor',
		'vnot',
		'null',
		'of',
		'on',
		'open',
		'or',
		'others',
		'out',
		'package',
		'port',
		'postponed',
		'process',
		'procedure',
		'procedural',
		'pure',
		'quantity',
		'range',
		'reverse_range',
		'reject',
		'rem',
		'record',
		'reference',
		'register',
		'report',
		'return',
		'rol',
		'ror',
		'select',
		'severity',
		'shared',
		'signal',
		'sla',
		'sll',
		'spectrum',
		'sra',
		'srl',
		'subnature',
		'subtype',
		'terminal',
		'then',
		'through',
		'to',
		'tolerance',
		'transport',
		'type',
		'unaffected',
		'units',
		'until',
		'use',
		'variable',
		'wait',
		'with',
		'when',
		'while',
		'xnor',
		'xor',
		'base_literal',
		'binanry_based_integer',
		'octal_based_integer',
		'hexa_based_integer',
		'bit_string_literal',
		'bit_string_literal_binary',
		'bit_string_literal_octal',
		'bit_string_literal_hex',
		'real_literal',
		'basic_identifier',
		'extended_identifier',
		'letter',
		'comment',
		'tab',
		'space',
		'newline',
		'cr',
		'character_literal',
		'string_literal',
		'other_special_character',
		'doublestar',
		'assign',
		'le',
		'ge',
		'arrow',
		'neq',
		'varasgn',
		'box',
		'dblquote',
		'semi',
		'comma',
		'ampersand',
		'lparen',
		'rparen',
		'lbracket',
		'rbracket',
		'colon',
		'mul',
		'div',
		'vplus',
		'minus',
		'lowerthan',
		'greaterthan',
		'eq',
		'bar',
		'dot',
		'backslash',
		'exponent',
		'hexdigit',
		'integer',
		'digit',
		'apostrophe',
		'unit_name'
	],
	#category : #VHDLParser
}

{ #category : #accessing }
VHDLBaseLiteralParser >> abs [
	^ 'abs' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> access [
	^ 'access' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> across [
	^ 'across' asParser  trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> after [
	^ 'after' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> alias [
	^ 'alias' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> all [
	^ 'all' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> ampersand [
	^ $& asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> apostrophe [
	^ $' asParser "trim".
]

{ #category : #accessing }
VHDLBaseLiteralParser >> architecture [
	^ 'architecture' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> array [
	^ 'array' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> arrow [
	^ '=>' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> assert [
	^ 'assert' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> assign [
	^ '==' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> attribute [
	^ 'attribute' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> backslash [
	^ $\ asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> bar [
	^ $| asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> base_literal [
	^(binanry_based_integer / octal_based_integer/ hexa_based_integer  ).
]

{ #category : #accessing }
VHDLBaseLiteralParser >> basic_identifier [
	^ letter, (($_ asParser)/ letter /digit) star.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> begin [
	^ 'begin' asParser trim.
]

{ #category : #grammar }
VHDLBaseLiteralParser >> binanry_based_integer [
	^	(($2 asParser), 
		$# asParser, 
		((($1 asParser)/ ($0 asParser)/($_ asParser)) plus), 
		($# asParser), 
		(integer optional)) flatten  ==> [:str|
			str asNumber
		].
]

{ #category : #accessing }
VHDLBaseLiteralParser >> bit_string_literal [
	^ bit_string_literal_binary / bit_string_literal_octal / bit_string_literal_hex.
]

{ #category : #grammar }
VHDLBaseLiteralParser >> bit_string_literal_binary [
	^ 	((($b asParser)/($B asParser)),
		($" asParser),
		(($1 asParser)/($0 asParser)/ ($_ asParser)) plus,
		$" asParser) flatten.
		
]

{ #category : #grammar }
VHDLBaseLiteralParser >> bit_string_literal_hex [
	^((($x asParser)/($X asParser)),
		($" asParser),
		(
			($f asParser)/
			($e asParser)/ 
			($d asParser)/ 
			($c asParser)/ 
			($b asParser)/ 
			($a asParser)/ 
			($F asParser)/ 
			($E asParser)/ 
			($D asParser)/ 
			($C asParser)/ 
			($B asParser)/ 
			($A asParser)/ 
			($9 asParser)/ 
			($8 asParser)/ 
			($7 asParser)/ 
			($6 asParser)/ 
			($5 asParser)/ 
			($4 asParser)/ 
			($3 asParser)/ 
			($2 asParser)/ 
			($1 asParser)/ 
			($0 asParser)/ 
			($_ asParser)
		) plus,
		$" asParser) flatten.
]

{ #category : #grammar }
VHDLBaseLiteralParser >> bit_string_literal_octal [
	^((($o asParser)/($O asParser)),
		($" asParser),
		(
			($7 asParser)/
			($6 asParser)/ 
			($5 asParser)/ 
			($4 asParser)/ 
			($3 asParser)/ 
			($2 asParser)/ 
			($1 asParser)/ 
			($0 asParser)/ 
			($_ asParser)
		) plus,
		$" asParser) flatten.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> block [
	^ 'block' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> body [
	^ 'body' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> box [
	^ '<>' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> break [
	^ 'break' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> buffer [
	^ 'buffer' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> bus [
	^ 'bus' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> case [
	^ 'case' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> character_literal [
	^ (apostrophe, #any asParser, apostrophe) flatten ==>[:str| str at:2 ].
]

{ #category : #accessing }
VHDLBaseLiteralParser >> colon [
	^ $: asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> comma [
	^ $, asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> comment [
	^ '--' asParser, (Character cr asParser negate) star
]

{ #category : #accessing }
VHDLBaseLiteralParser >> component [
	^ 'component' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> configuration [
	^ 'configuration' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> constant [
	^ 'constant' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> cr [
	^ Character cr asParser.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> dblquote [
	^ $" asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> digit [
	^ #digit asParser
]

{ #category : #accessing }
VHDLBaseLiteralParser >> disconnect [
	^ 'disconnect' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> div [
	^ $/ asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> dot [
	^ $. asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> doublestar [
	^ '**' asParser trim
]

{ #category : #accessing }
VHDLBaseLiteralParser >> downto [
	^ 'downto' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> else [
	^ 'else' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> elsif [
	^ 'elsif' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> entity [
	^ 'entity' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> eq [
	^ $= asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> exit [
	^ 'exit' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> exponent [
	^ $e asParser, (($+ asParser) / ($- asParser) ) optional, integer.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> extended_identifier [
	^ $\ asParser, 
	( 	(#lowercase asParser) / 
		(#digit asParser)/
		($& asParser)/
		($' asParser) /
		($( asParser) /
		($) asParser) /
   		($+ asParser) /
		 ($, asParser) /
		($- asParser) /
		($. asParser) / 
		($/ asParser)  /
		($: asParser) /
		($; asParser) / 
		($< asParser) /
		($= asParser) /
		($> asParser) /
		($| asParser) /
   		(#space asParser)/
		other_special_character/
		( $\ asParser) /
    		($# asParser) /
		($[ asParser) /
		($] asParser) /
		($_ asParser)  
	) plus, $\ asParser.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> file [
	^ 'file'  asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> for [
	^ 'for' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> function [
	^ 'function'  asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> ge [
	^ '>=' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> generate [
	^ 'generate' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> generic [
	^ 'generic' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> greaterthan [
	^ $> asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> group [
	^ 'group' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> guarded [
	^ 'guarded' asParser trim.
]

{ #category : #grammar }
VHDLBaseLiteralParser >> hexa_based_integer [
	^(('16' asParser), 
		$# asParser, 
		(
			(($f asParser)/ 
			($e asParser)/
			($d asParser)/
			($c asParser)/
			($b asParser)/
			($a asParser)/
			($F asParser)/
			($E asParser)/
			($D asParser)/
			($C asParser)/
			($B asParser)/
			($A asParser)/
			($9 asParser)/
			($8 asParser)/
			($7 asParser)/
			($6 asParser)/
			($5 asParser)/
			($4 asParser)/
			($3 asParser)/
			($2 asParser)/
			($1 asParser)/
			($0 asParser)/
			($_ asParser) )
		plus), 
		($# asParser), 
		(integer optional)) flatten  ==> [:str|
			str asNumber
		]..
]

{ #category : #accessing }
VHDLBaseLiteralParser >> hexdigit [
	^ 	($A asParser)/
		($B asParser)/
		($C asParser)/
		($D asParser)/
		($E asParser)/
		($F asParser)/
		($a asParser)/
		($b asParser)/
		($c asParser)/
		($d asParser)/
		($e asParser)/
		($f asParser).
]

{ #category : #accessing }
VHDLBaseLiteralParser >> if [
	^ 'if'  asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> impure [
	^ 'impure' asParser trim.
]

{ #category : #grammar }
VHDLBaseLiteralParser >> in [
	^ 'in'  asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> inertial [
	^ 'inertial'  asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> inout [
	^ 'inout' asParser trim.
]

{ #category : #grammar }
VHDLBaseLiteralParser >> integer [
	^ (digit, (($_ asParser) / digit ) star) flatten ==>[:str|
		(str copyReplaceAll: '_' with:'') asNumber].
]

{ #category : #accessing }
VHDLBaseLiteralParser >> is [
	^ 'is' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> label [
	^ 'label' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> lbracket [
	^ $[ asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> le [
	^ '<=' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> letter [
	^ #letter asParser.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> library [
	^ 'library' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> limit [
	^ 'limit' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> linkage [
	^ 'linkage' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> literal [
	^ 'literal' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> loop [
	^ 'loop' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> lowerthan [
	^ $< asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> lparen [
	^ $( asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> map [
	^ 'map' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> minus [
	^ $- asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> mod [
	^ 'mod' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> mul [
	^ $* asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> nand [
	^ 'nand' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> nature [
	^ 'nature' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> neq [
	^ '/=' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> new [
	^ 'new' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> newline [
	^ #newline asParser.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> next [
	^ 'next' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> noise [
	^ 'noise' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> nor [
	^ 'nor' asParser trim.
]

{ #category : #grammar }
VHDLBaseLiteralParser >> null [
	^ ('null' asParser trim)==>[:str| nil].
]

{ #category : #grammar }
VHDLBaseLiteralParser >> octal_based_integer [
	^(($8 asParser), 
		$# asParser, 
		((($7 asParser)/ 
		($6 asParser)/
		($5 asParser)/
		($4 asParser)/
		($3 asParser)/
		($2 asParser)/
		($1 asParser)/
		($0 asParser)/
		($_ asParser)) plus), 
		($# asParser), 
		(integer optional)) flatten ==>[:str| str asNumber].
		"this must be implemented"
]

{ #category : #accessing }
VHDLBaseLiteralParser >> of [
	^ 'of' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> on [
	^ 'on' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> open [
	^ 'open' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> or [
	^ 'or' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> other_special_character [
	^	(($! asParser)/ ($$ asParser)/
		($" asParser)/
		($& asParser)/
		($' asParser)/
		($% asParser)/	
		($@ asParser)/
		($? asParser)/
		($^ asParser)/
		($` asParser)/
		(${ asParser)/
		($} asParser)/
		($~ asParser)  /
		(#space asParser))
]

{ #category : #accessing }
VHDLBaseLiteralParser >> others [
	^ 'others' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> out [
	^ 'out' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> package [
	^ 'package' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> port [
	^ 'port' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> postponed [
	^ 'postponed' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> procedural [
	^ 'procedural' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> procedure [
	^ 'procedure' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> process [
	^ 'process' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> pure [
	^ 'pure' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> quantity [
	^ 'quantity' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> range [
	^ 'range' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> rbracket [
	^ $] asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> real_literal [
	^ integer, $. asParser, integer, exponent optional.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> record [
	^ 'record' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> reference [
	^ 'reference' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> register [
	^ 'register' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> reject [
	^ 'reject' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> rem [
	^ 'rem' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> report [
	^ 'report' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> return [
	^ 'return' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> reverse_range [
	^ 'reverse_range' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> rol [
	^ 'rol' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> ror [
	^ 'ror' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> rparen [
	^ $) asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> select [
	^ 'select' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> semi [
	^ $; asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> severity [
	^ 'severity' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> shared [
	^ 'shared' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> signal [
	^ 'signal' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> sla [
	^ 'sla' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> sll [
	^ 'sll' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> space [
	^ #space asParser
]

{ #category : #accessing }
VHDLBaseLiteralParser >> spectrum [
	^ 'spectrum' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> sra [
	^ 'sra' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> srl [
	^ 'srl' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> start [
]

{ #category : #grammar }
VHDLBaseLiteralParser >> string_literal [
	^ ($" asParser,
	 ((((($" asParser) /(#newline asParser )/(Character cr asParser) ) negate) /( '""' asParser) ) star) flatten,
	$" asParser)==>[:nodes|nodes at:2].
]

{ #category : #accessing }
VHDLBaseLiteralParser >> subnature [
	^ 'subnature' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> subtype [
	^ 'subtype' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> tab [
	^ #tab asParser
]

{ #category : #accessing }
VHDLBaseLiteralParser >> terminal [
	^ 'terminal' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> then [
	^ 'then' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> through [
	^ 'through' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> to [
	^ 'to' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> tolerance [
	^ 'tolerance' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> transport [
	^ 'transport' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> type [
	^ 'type' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> unaffected [
	^ 'unaffected' asParser trim.
]

{ #category : #'as yet unclassified' }
VHDLBaseLiteralParser >> unit_name [
	^ ('fs' asParser/
	'ns' asParser/
	'ps' asParser/
	'us' asParser/
	'ms' asParser/
	'sec' asParser/ 
	'min' asParser) trim
]

{ #category : #accessing }
VHDLBaseLiteralParser >> units [
	^ 'units' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> until [
	^ 'until' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> use [
	^ 'use' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> vand [
	^ 'and' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> varasgn [
	^ ':=' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> variable [
	^ 'variable' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> vend [
	^ 'end' asParser trim.
]

{ #category : #grammar }
VHDLBaseLiteralParser >> vnot [
	^ 'not' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> vplus [
	^ $+ asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> wait [
	^ 'wait' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> when [
	^ 'when' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> while [
	^ 'while' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> with [
	^ 'with' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> xnor [
	^ 'xnor' asParser trim.
]

{ #category : #accessing }
VHDLBaseLiteralParser >> xor [
	^ 'xor' asParser trim.
]
