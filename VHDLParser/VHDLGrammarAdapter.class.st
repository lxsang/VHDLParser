Class {
	#name : #VHDLGrammarAdapter,
	#superclass : #VHDLGrammarParser,
	#category : #VHDLParser
}

{ #category : #accessing }
VHDLGrammarAdapter >> aggregate [
	^ super aggregate ==> [ :nodes|
		{ nodes at:2},((nodes at:3) collect:[:each| each at:2])]
]

{ #category : #accessing }
VHDLGrammarAdapter >> allocator [
	^ super allocator ==> [ :nodes| ^self error:'allocator is not support yet' ]
]

{ #category : #accessing }
VHDLGrammarAdapter >> architecture_body [
	^ super architecture_body==>[:nodes|
			VHDLArchitectureNode from:{(nodes at:2). (nodes at:4). (nodes at:6). (nodes at:8)}
	].
]

{ #category : #accessing }
VHDLGrammarAdapter >> architecture_declarative_part [
	^ super architecture_declarative_part==>[:nodes|
		|list|
		list := {  }.
		nodes do:[:each|
			each isArray ifTrue:[list := list,each] ifFalse:[
				list := list,{each}.
			].	
		].
		list.
	]
]

{ #category : #accessing }
VHDLGrammarAdapter >> association_element [
	^ super association_element==>[:nodes|
		(nodes at:1) ifNil: [ nodes at:2 ] ifNotNil:[
			((nodes at:1) at:1) -> (nodes at:2).	
		]. 	
	]
]

{ #category : #accessing }
VHDLGrammarAdapter >> association_list [
	^ super association_list==>[:nodes|
		{nodes at:1},((nodes at:2) collect:[:el| el at:2]).
	].
]

{ #category : #'as yet unclassified' }
VHDLGrammarAdapter >> case_statement [
	^ super case_statement==>[:nodes|
		VHDLCaseNode from:{nodes at:3. nodes at:5}.
	].
]

{ #category : #'as yet unclassified' }
VHDLGrammarAdapter >> case_statement_alternative [
	^ super case_statement_alternative==>[:nodes|
			(nodes at:2)->(nodes at:4).
	].
]

{ #category : #accessing }
VHDLGrammarAdapter >> choices [
	^ super choices ==>[:nodes|
		(nodes at:2) size = 0 ifTrue:[nodes at:1] ifFalse:[{nodes at:1},(nodes at:2)]	
	]
]

{ #category : #accessing }
VHDLGrammarAdapter >> component_instantiation_statement [
	^ super component_instantiation_statement ==> [ :nodes|
		|utype|
		utype := nodes at:2.
		(utype at:1) caseOf: { 
			[ 'entity' ] -> [ 
				VHDLModuleInstantiatedNode from:{
					utype at:2.utype at:3.nodes at:3. nodes at:4.}].
		} otherwise: [ nodes ].
	].
]

{ #category : #accessing }
VHDLGrammarAdapter >> concurrent_signal_assignment_statement [
	^ super concurrent_signal_assignment_statement==>[:nodes|
		nodes at:3	
	].
]

{ #category : #accessing }
VHDLGrammarAdapter >> conditional_signal_assignment [
	^ super conditional_signal_assignment==>[:nodes|
		VHDLConditionalSignalAssignNode from: { (nodes at:1). (nodes at:4) }
	].
]

{ #category : #accessing }
VHDLGrammarAdapter >> conditional_waveforms [
	^ super conditional_waveforms==>[:nodes|
		(nodes at:2) ifNil: [ 
			{nodes at:1}.
		] ifNotNil: [  
			{ ((nodes at:2) at:2) -> (nodes at:1) }, (
				((nodes at:2) at:3) ifNil: [ {  } ] ifNotNil: [ 
					((nodes at:2)	 at:3) at:2.
				]
			).
		].
	].
]

{ #category : #accessing }
VHDLGrammarAdapter >> constant_declaration [
	^ super constant_declaration==>[:nodes|
		(nodes at:2) collect:[:e|
				VHDLConstantDeclarationNode from: { 
				e. 
				(nodes at:4).  
				(nodes at:5) ifNil: [nil] ifNotNil: [(nodes at:5) at:2].
				}
		].
	].
]

{ #category : #accessing }
VHDLGrammarAdapter >> constrained_array_definition [
	^ super constrained_array_definition ==>[ :nodes|
		VHDLConstraintArrayDefinitionNode from:{(nodes at:2). (nodes at:4) }
	].
]

{ #category : #accessing }
VHDLGrammarAdapter >> element_association [
	^ super element_association ==> [ :nodes|	
		(nodes at:1) ifNil: [ nodes at:2 ] ifNotNil: [ 
			((nodes at:1) at:1) -> (nodes at:2)	
		 ]
	 ]
]

{ #category : #accessing }
VHDLGrammarAdapter >> entity_declaration [
	^ super entity_declaration==>[:nodes|
		VHDLEntityNode from:{(nodes at:2).
					(nodes at:4). 
					(nodes at:5). 
					(nodes at:6) ifNil: [ {  } ] ifNotNil:[((nodes at:6) at:2)] }	
	].
]

{ #category : #accessing }
VHDLGrammarAdapter >> entity_declarative_part [
	^ super entity_declarative_part 
]

{ #category : #accessing }
VHDLGrammarAdapter >> entity_header [
	^ super entity_header ==>[:nodes| nodes].
]

{ #category : #accessing }
VHDLGrammarAdapter >> enumeration_type_definition [
	^ super enumeration_type_definition ==> [ :nodes|
		|states|
		states := {nodes at:2}.
		(nodes at:3) do:[:e| states := states,{(e at:2)}].
		VHDLEnumerationDefinitionNode from:(states).
	 ].
]

{ #category : #accessing }
VHDLGrammarAdapter >> explicit_range [
	^ super explicit_range==>[:nodes| VHDLExplicitRangeNode from: nodes]
]

{ #category : #accessing }
VHDLGrammarAdapter >> expression [
	^ super expression ==>[:nodes|
		(nodes at:2) size = 0 ifTrue:[
			nodes  at:1.	
		] ifFalse:[
			|expr|
			expr := nodes at:1.
			(nodes at:2) do:[:el|
				expr := VHDLExpressionNode receiver:expr 
								selector:(el at:1) 
								asSymbol arguments:(el at:2)
			].
			expr.
		]
	]
]

{ #category : #accessing }
VHDLGrammarAdapter >> factor [
	^ super factor ==>[:nodes|
			(nodes at:2) isNil ifTrue:[
				(nodes  at:1).	
			] ifFalse:[
				(nodes at:2) isArray ifTrue:[
					VHDLExpressionNode receiver: (nodes at:1) 
					selector: ((nodes at:2) at:1) asSymbol  
					arguments: ((nodes at:2) at:2)
				] ifFalse:[
					VHDLExpressionNode  receiver: (nodes at:2) 
					selector: (nodes at:1) asSymbol  
					arguments: {  }
				]
			]
		]
]

{ #category : #accessing }
VHDLGrammarAdapter >> formal_part [
	^ super formal_part "==> [ :nodes|
		nodes isArray ifTrue:[
			VHDLFunctionCallNode new name:(nodes at:1);parameters: (nodes at:3);yourself.
		] ifFalse:[nodes].	
	]"
]

{ #category : #accessing }
VHDLGrammarAdapter >> generic_clause [
	^ super generic_clause ==>[:nodes| nodes at:3].
]

{ #category : #accessing }
VHDLGrammarAdapter >> generic_list [
	^ super generic_list ==>[:nodes| 
		(nodes at:2) size = 0 ifTrue:[{(nodes at:1) at:1}] ifFalse:[
			|list|
			list := nodes at:1.
			(nodes at:2) do:[:el|
				list := list, (el at:2).	
			].
			list.
		]. 	
	].
]

{ #category : #accessing }
VHDLGrammarAdapter >> generic_map_aspect [
	^ super generic_map_aspect ==> [ :nodes|
			nodes at:4.
	]
]

{ #category : #accessing }
VHDLGrammarAdapter >> identifier [
	^ super identifier ==> [ :str| str asSymbol ]
]

{ #category : #accessing }
VHDLGrammarAdapter >> identifier_list [
	^ super identifier_list ==> [ :nodes|
		|list|
		list := {nodes at:1}.
		(nodes at:2) do:[:el| list := list, {(el at:2)}].
		list.
	 ]
]

{ #category : #accessing }
VHDLGrammarAdapter >> if_statement [
	^ super if_statement==>[:nodes|
			|list|
			list := {(nodes at:3) -> (nodes at:5)}.
			(nodes at:6) do:[:each| list := list,{(each at:2)->(each at:4)}].
			VHDLIfElseNode from:{list. 
				(nodes at:7) ifNil: [ nil ] ifNotNil: [ (nodes at:7) at:2 ]
			}
	].
]

{ #category : #accessing }
VHDLGrammarAdapter >> index_constraint [
	^ super index_constraint ==> [ :nodes| 
		|ranges|
		ranges := nodes at:2.
		(nodes at:3) do:[:each| ranges := ranges, {each at:2}].
		"{ nodes at:1. ranges. nodes at:4}"
		ranges.
	 ]
]

{ #category : #'as yet unclassified' }
VHDLGrammarAdapter >> instantiated_unit [
	^ super instantiated_unit "==> [ :nodes|
			(nodes at:1) caseOf: { 
				[ 'entity' ] -> [ 
					VHDLModuleInstantiatedNode from:{
						nodes at:2. 
						(nodes at:3) ifNil: [ nil ] ifNotNil:[(nodes at:3) at:2]}]
			} otherwise: [ ^nodes ].
	]"
]

{ #category : #accessing }
VHDLGrammarAdapter >> interface_constant_declaration [
	^ super interface_constant_declaration
		==>[:nodes| 
			|class|
			class := (nodes at:1) ifNil:[VHDLGenericNode ] ifNotNil: [ VHDLConstantNode ].
			(nodes at:2) collect:[:el|
				"FIXME: support only natural number"
				class name: el of: (((nodes at:6) at:2))
			].
		].
		
]

{ #category : #accessing }
VHDLGrammarAdapter >> interface_port_declaration [
	^ super interface_port_declaration ==> [ :nodes| 
		(nodes at:2) collect:[:each|
			VHDLPortDeclarationNode from: { each. (nodes at:4) trim asSymbol. (nodes at:5) }
		].
	]
]

{ #category : #accessing }
VHDLGrammarAdapter >> interface_port_list [
	^ super interface_port_list ==>[:nodes| 
		|list|
		list := nodes at:1.
		(nodes at:2) do:[:each| list := list, (each at:2)].
		list.	
	].
]

{ #category : #accessing }
VHDLGrammarAdapter >> name_function_call_or_indexed_part [
	^ super name_function_call_or_indexed_part==>[:nodes|
			VHDLFunctionCallNode new parameters: ((nodes at:2) ifNil: [ {  } ] ifNotNil:[
				nodes at:2	
			] )
	].
]

{ #category : #accessing }
VHDLGrammarAdapter >> name_part [
	^ super name_part ==> [ :nodes|
		(nodes at:2) isNil ifTrue:[nodes at:1] ifFalse:[
			(nodes at:2) class = VHDLNameSliceNode ifTrue:[(nodes at:2) name:(nodes at:1); yourself]
			ifFalse:[
				((nodes at:2) at:2) size > 0 ifTrue:[self error:'Multiple call not supported yet'.].
				((nodes at:2) at:1) name:(nodes at:1); yourself.
			].
		]
	]
]

{ #category : #accessing }
VHDLGrammarAdapter >> name_slice_part [
	^ super name_slice_part==>[:nodes|
		VHDLNameSliceNode new slices:(
		{ nodes at:2 },((nodes at:3) collect:[:each| each at:2])
		)
	]
]

{ #category : #accessing }
VHDLGrammarAdapter >> port_clause [
	^ super port_clause ==> [ :nodes| nodes at:3 ]
]

{ #category : #accessing }
VHDLGrammarAdapter >> port_map_aspect [
	^ super port_map_aspect ==> [ :nodes|
		nodes at:4.	
	]
]

{ #category : #accessing }
VHDLGrammarAdapter >> primary [
	^ super primary ==> [ :nodes| 	
		nodes isArray ifTrue:[
			((nodes size = 3) and:((nodes at:1 )= $()) ifTrue:[nodes at:2]
			ifFalse:[(nodes size = 1) & ((nodes at:1) class ~= Association) ifTrue:[
				nodes at:1.
			] ifFalse:[nodes ]].
		] ifFalse:[nodes].
	]
]

{ #category : #accessing }
VHDLGrammarAdapter >> process_statement [
	^ super process_statement==> [ :nodes|
		VHDLProcessNode from:{
			(nodes at:4) ifNil: [ {  } ] ifNotNil:[(nodes at:4) at:2] .
			(nodes at:6).
			(nodes at:8)
		}. 
	]
]

{ #category : #accessing }
VHDLGrammarAdapter >> qualified_expression [
	^ super qualified_expression==>[:nodes|
		nodes inspect.
		^self error:'Qualified expression is not supported yet'.	
	]
]

{ #category : #accessing }
VHDLGrammarAdapter >> relation [
	^ super relation ==>[:nodes|
			(nodes at:2) isNil ifTrue:[
				nodes  at:1.	
			] ifFalse:[
				VHDLExpressionNode receiver: (nodes at:1) 
						selector:((nodes at:2) at:1) asSymbol 
						arguments: ((nodes at:2) at:2).
			]
		]
]

{ #category : #accessing }
VHDLGrammarAdapter >> selected_name [
	^ super selected_name==>[:nodes| 
		|list|
		list := { nodes at:1 }, ((nodes at:2) collect:[:e| e at:2]).
		list size = 1 ifTrue:[list at:1] ifFalse:[list].
	].
]

{ #category : #'as yet unclassified' }
VHDLGrammarAdapter >> selected_signal_assignment [
	^ super selected_signal_assignment==>[:nodes|
			VHDLSelectedSignalAssignNode from:{nodes at:4. nodes at:7. nodes at:2}
	].
]

{ #category : #'as yet unclassified' }
VHDLGrammarAdapter >> selected_waveforms [
	^ super selected_waveforms ==> [ :nodes|
		{(nodes at:3)-> (nodes at:1)}, 
				((nodes at:4) collect:[:el| (el at:4)-> (el at:2)]).
	 ].
]

{ #category : #accessing }
VHDLGrammarAdapter >> sensitivity_list [
	^ super sensitivity_list ==> [ :nodes|
		|list|
		list := {nodes at:1}.
		(nodes at:2) do:[:el|
			list := list,{el at:2}	
		].
		list.
	 ]
]

{ #category : #accessing }
VHDLGrammarAdapter >> sequential_statement [
	^ super sequential_statement==>[:nodes|
			nodes isArray ifTrue:[
				nodes size = 3 ifTrue:[
					((nodes at:2) = nil and:(nodes at:3) = $;) ifTrue:[
						nil] ifFalse:[nodes].
				] ifFalse:[nodes]
			] ifFalse:[nodes]].
]

{ #category : #accessing }
VHDLGrammarAdapter >> shift_expression [

	^ super shift_expression ==>[:nodes|
			(nodes at:2) isNil ifTrue:[
				nodes  at:1.	
			] ifFalse:[
				VHDLExpressionNode receiver: (nodes at:1) 
					selector:(( (nodes at:2) at:1 ),':') asSymbol  
					arguments: ((nodes at:2) at:2)
			]
		]
]

{ #category : #accessing }
VHDLGrammarAdapter >> signal_assignment_statement [
	^ super signal_assignment_statement==>[:nodes|
		VHDLSignalAssignmentNode from:{(nodes at:2). (nodes at:5)}
	].
]

{ #category : #accessing }
VHDLGrammarAdapter >> signal_declaration [
	^ super signal_declaration==> [ :nodes|
		(nodes at:2) collect:[:each|
			VHDLSignalDeclarationNode from:{each. (nodes at:4).
			(nodes at:6) ifNil: [ nil ] ifNotNil: [ (nodes at:6) at:2 ]
			  }	
		]
	]
]

{ #category : #accessing }
VHDLGrammarAdapter >> simple_expression [
	^ super simple_expression ==> [ :nodes|
		"FIXME:Nodes at 1 is + or -, not yet supported in the meta model"
		(nodes at:3)	size = 0 ifTrue:[
			nodes at:2.	
		] ifFalse:[
			|expr|
			expr := (nodes at:2).
			(nodes at:3) do:[:el|
				"|class|
				class := (el at:1) = '&' ifTrue:[HDLConcat] ifFalse:[HDLArithmetic]."
				expr:= VHDLExpressionNode receiver: expr 
					selector:(el at:1) asSymbol
					arguments: (el at:2)
			].
			expr.
		].
	]
]

{ #category : #accessing }
VHDLGrammarAdapter >> subtype_indication [
	^ super subtype_indication==>[:nodes| |rg|
		rg := (nodes at:3) isArray ifTrue:[(nodes at:3) at:2] ifFalse:[nodes at:3].
		VHDLSubtypeIndicationNode from:{(nodes at:1). rg.}
	]
]

{ #category : #accessing }
VHDLGrammarAdapter >> term [
	^ super term ==>[:nodes|
			(nodes at:2) size = 0 ifTrue:[
				nodes  at:1.	
			] ifFalse:[
				|expr|
				expr := nodes at:1.
				(nodes at:2) do:[:el|
					expr := VHDLExpressionNode  receiver: expr 
							selector:  (el at:1) asSymbol   
							arguments: (el at:2)
				].
				expr
			]
		]
]

{ #category : #accessing }
VHDLGrammarAdapter >> type_declaration [
	^ super type_declaration ==> [:nodes| VHDLTypeDeclarationNode from:{
		(nodes at:2). (nodes at:3) ifNil: [ nil ] ifNotNil:[(nodes at:3) at:2]}].
]

{ #category : #'as yet unclassified' }
VHDLGrammarAdapter >> variable_assignment_statement [
	^ super variable_assignment_statement ==>[:nodes|
		VHDLVariableAssignmentNode from:{(nodes at:1). (nodes at:3)}
	].
]

{ #category : #accessing }
VHDLGrammarAdapter >> variable_declaration [
	^ super variable_declaration ==> [ :nodes|
		(nodes at:3) collect:[:each|
			VHDLVariableDeclarationNode from:{each. (nodes at:5).
			(nodes at:6) ifNil: [ nil ] ifNotNil: [ (nodes at:6) at:2 ]
			  }	
		]
	]
]

{ #category : #accessing }
VHDLGrammarAdapter >> vname [
	^ super vname==>[:nodes|
		nodes size = 2 ifTrue:[
			|list|
			list := { nodes at:1 }, ((nodes at:2) collect:[:e| e at:2]).
			list size = 1 ifTrue:[list at:1] ifFalse:[list].
		] ifFalse:[nodes].
	].
]

{ #category : #accessing }
VHDLGrammarAdapter >> waveform [
	^ super waveform==>[:nodes|
			nodes isArray ifTrue:[
					(nodes at:2) size = 0 ifTrue:[
						nodes at:1.	
					] ifFalse:[
						{(nodes at:1) },((nodes at:2) )
					].
			] ifFalse:[
				nodes at:1.
			].
	].
]

{ #category : #accessing }
VHDLGrammarAdapter >> waveform_element [
	^ super waveform_element==>[:nodes|
		(nodes at:2) ifNil: [ nodes at:1 ] ifNotNil:[
			^self error:'Time expression is not supported yet'.	
		]. 
	].
]
