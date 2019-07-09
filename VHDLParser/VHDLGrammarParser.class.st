Class {
	#name : #VHDLGrammarParser,
	#superclass : #PPCompositeParser,
	#instVars : [
		'abstract_literal',
		'access_type_definition',
		'across_aspect',
		'actual_designator',
		'actual_parameter_part',
		'actual_part',
		'adding_operator',
		'aggregate',
		'alias_declaration',
		'alias_designator',
		'alias_indication',
		'allocator',
		'architecture_declarative_part',
		'architecture_statement',
		'architecture_statement_part',
		'array_nature_definition',
		'array_type_definition',
		'assertion',
		'assertion_statement',
		'association_element',
		'association_list',
		'attribute_declaration',
		'attribute_designator',
		'attribute_specification',
		'base_unit_declaration',
		'binding_indication',
		'block_configuration',
		'block_declarative_item',
		'block_declarative_part',
		'block_header',
		'block_specification',
		'block_statement',
		'block_statement_part',
		'branch_quantity_declaration',
		'break_element',
		'break_list',
		'break_selector_clause',
		'break_statement',
		'case_statement',
		'case_statement_alternative',
		'choice',
		'choices',
		'component_configuration',
		'component_declaration',
		'component_instantiation_statement',
		'component_specification',
		'composite_nature_definition',
		'composite_type_definition',
		'concurrent_assertion_statement',
		'concurrent_break_statement',
		'concurrent_procedure_call_statement',
		'concurrent_signal_assignment_statement',
		'condition',
		'condition_clause',
		'conditional_signal_assignment',
		'conditional_waveforms',
		'configuration_declarative_item',
		'configuration_declarative_part',
		'configuration_item',
		'configuration_specification',
		'constant_declaration',
		'constrained_array_definition',
		'constrained_nature_definition',
		'constraint',
		'delay_mechanism',
		'designator',
		'direction',
		'disconnection_specification',
		'discrete_range',
		'element_association',
		'element_declaration',
		'element_subnature_definition',
		'element_subtype_definition',
		'entity_aspect',
		'entity_class',
		'entity_class_entry',
		'entity_class_entry_list',
		'entity_declarative_item',
		'entity_declarative_part',
		'entity_designator',
		'entity_header',
		'entity_name_list',
		'entity_specification',
		'entity_statement',
		'entity_statement_part',
		'entity_tag',
		'enumeration_literal',
		'enumeration_type_definition',
		'exit_statement',
		'expression',
		'factor',
		'file_declaration',
		'file_logical_name',
		'file_open_information',
		'file_type_definition',
		'formal_parameter_list',
		'formal_part',
		'free_quantity_declaration',
		'generate_statement',
		'generation_scheme',
		'generic_clause',
		'generic_list',
		'generic_map_aspect',
		'group_constituent',
		'group_constituent_list',
		'group_declaration',
		'group_template_declaration',
		'guarded_signal_specification',
		'identifier',
		'identifier_list',
		'if_statement',
		'index_constraint',
		'index_specification',
		'index_subtype_definition',
		'instantiated_unit',
		'instantiation_list',
		'interface_constant_declaration',
		'interface_declaration',
		'interface_element',
		'interface_file_declaration',
		'interface_signal_list',
		'interface_port_list',
		'interface_list',
		'interface_quantity_declaration',
		'interface_port_declaration',
		'interface_signal_declaration',
		'interface_terminal_declaration',
		'interface_variable_declaration',
		'iteration_scheme',
		'label_colon',
		'literal',
		'logical_name',
		'logical_name_list',
		'logical_operator',
		'loop_statement',
		'signal_mode',
		'multiplying_operator',
		'name_part',
		'name_attribute_part',
		'name_function_call_or_indexed_part',
		'name_slice_part',
		'selected_name',
		'nature_declaration',
		'nature_definition',
		'nature_element_declaration',
		'next_statement',
		'numeric_literal',
		'object_declaration',
		'opts',
		'package_body_declarative_item',
		'package_body_declarative_part',
		'package_declarative_item',
		'package_declarative_part',
		'parameter_specification',
		'physical_literal',
		'physical_type_definition',
		'port_clause',
		'port_list',
		'port_map_aspect',
		'primary',
		'procedural_declarative_item',
		'procedural_declarative_part',
		'procedural_statement_part',
		'procedure_call',
		'procedure_call_statement',
		'process_declarative_item',
		'process_declarative_part',
		'process_statement',
		'process_statement_part',
		'qualified_expression',
		'quantity_declaration',
		'quantity_list',
		'quantity_specification',
		'range',
		'explicit_range',
		'range_constraint',
		'record_nature_definition',
		'record_type_definition',
		'relation',
		'relational_operator',
		'report_statement',
		'return_statement',
		'scalar_nature_definition',
		'scalar_type_definition',
		'secondary_unit_declaration',
		'selected_signal_assignment',
		'selected_waveforms',
		'sensitivity_clause',
		'sensitivity_list',
		'sequence_of_statements',
		'sequential_statement',
		'shift_expression',
		'shift_operator',
		'signal_assignment_statement',
		'signal_declaration',
		'signal_kind',
		'signal_list',
		'signature',
		'simple_expression',
		'simple_simultaneous_statement',
		'simultaneous_alternative',
		'simultaneous_case_statement',
		'simultaneous_if_statement',
		'simultaneous_procedural_statement',
		'simultaneous_statement',
		'simultaneous_statement_part',
		'source_aspect',
		'source_quantity_declaration',
		'step_limit_specification',
		'subnature_declaration',
		'subnature_indication',
		'subprogram_body',
		'subprogram_declaration',
		'subprogram_declarative_item',
		'subprogram_declarative_part',
		'subprogram_kind',
		'subprogram_specification',
		'procedure_specification',
		'function_specification',
		'subprogram_statement_part',
		'subtype_declaration',
		'subtype_indication',
		'suffix',
		'target',
		'term',
		'terminal_aspect',
		'terminal_declaration',
		'through_aspect',
		'timeout_clause',
		'tolerance_aspect',
		'type_declaration',
		'type_definition',
		'unconstrained_array_definition',
		'unconstrained_nature_definition',
		'variable_assignment_statement',
		'variable_declaration',
		'wait_statement',
		'waveform',
		'waveform_element',
		'use_clause',
		'configuration_declaration',
		'entity_declaration',
		'vname',
		'package_body',
		'library_clause',
		'package_declaration'
	],
	#category : #VHDLParser
}

{ #category : #accessing }
VHDLGrammarParser class >> dependencies [
	^ {VHDLBaseLiteralParser}
]

{ #category : #accessing }
VHDLGrammarParser >> abstract_literal [
	^ ((self dep real_literal)/ (self dep base_literal)/(self dep integer))
]

{ #category : #accessing }
VHDLGrammarParser >> access_type_definition [
	^ self dep access, subtype_indication 
]

{ #category : #accessing }
VHDLGrammarParser >> across_aspect [
	^ identifier_list , tolerance_aspect optional, ((self dep varasgn) , expression ) optional, (self dep across )
]

{ #category : #accessing }
VHDLGrammarParser >> actual_designator [
	^ expression / (self dep open)
]

{ #category : #accessing }
VHDLGrammarParser >> actual_parameter_part [
	^ association_list 
]

{ #category : #accessing }
VHDLGrammarParser >> actual_part [
	^ 	(vname, self dep lparen, actual_designator , self dep rparen)/
		actual_designator 
]

{ #category : #accessing }
VHDLGrammarParser >> adding_operator [
	^  (self dep vplus)/ (self dep minus )/ (self dep ampersand).
]

{ #category : #accessing }
VHDLGrammarParser >> aggregate [
	^ self dep lparen , element_association , (self dep comma, element_association ) star, self dep rparen .
]

{ #category : #accessing }
VHDLGrammarParser >> alias_declaration [
	^	 self dep alias, alias_designator, (self dep colon, alias_indication ) optional, self dep is,
		vname, signature optional, self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> alias_designator [
	^ identifier / (self dep character_literal )/ (self dep string_literal )
]

{ #category : #accessing }
VHDLGrammarParser >> alias_indication [
	^ subnature_indication / subtype_indication 
]

{ #category : #accessing }
VHDLGrammarParser >> allocator [
	^ ('new' asParser), self dep space plus, (qualified_expression / subtype_indication )
]

{ #category : #accessing }
VHDLGrammarParser >> architecture_body [
	^ self dep architecture, identifier , self dep of, identifier , self dep is,
	architecture_declarative_part ,
	self dep begin,
	architecture_statement_part ,
	self dep vend, (self dep architecture optional),
	identifier optional,
	self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> architecture_declarative_part [
	^ block_declarative_item star.
]

{ #category : #accessing }
VHDLGrammarParser >> architecture_statement [
	^ block_statement /
	process_statement /
	(label_colon optional, concurrent_procedure_call_statement) /
	(label_colon optional, concurrent_assertion_statement) /
	concurrent_signal_assignment_statement /
	"(label_colon optional, self dep postponed optional, concurrent_signal_assignment_statement )/"
	component_instantiation_statement /
	generate_statement /
	concurrent_break_statement /
	simple_simultaneous_statement 
]

{ #category : #accessing }
VHDLGrammarParser >> architecture_statement_part [
	^ architecture_statement star.
]

{ #category : #accessing }
VHDLGrammarParser >> array_nature_definition [
	^ unconstrained_nature_definition  / constrained_nature_definition  
]

{ #category : #accessing }
VHDLGrammarParser >> array_type_definition [
	^ unconstrained_array_definition / constrained_array_definition 
]

{ #category : #accessing }
VHDLGrammarParser >> assertion [
	^ self dep assert, condition trim, (self dep report, expression ) optional, (self dep severity , expression ) optional
]

{ #category : #accessing }
VHDLGrammarParser >> assertion_statement [
	^ label_colon optional, assertion , self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> association_element [
	^ (formal_part , self dep arrow ) optional, actual_part 
]

{ #category : #accessing }
VHDLGrammarParser >> association_list [
	^ association_element , (self dep comma, association_element ) star.
]

{ #category : #accessing }
VHDLGrammarParser >> attribute_declaration [
	^ self dep attribute, label_colon , vname, self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> attribute_designator [
	^ identifier /
	(self dep range )/
	(self dep reverse_range )/
	(self dep across )/
	(self dep through )/
	(self dep reference)/
	(self dep tolerance )
]

{ #category : #accessing }
VHDLGrammarParser >> attribute_specification [
	^ self dep attribute, attribute_designator , self dep of, entity_specification, self dep is, expression , self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> base_unit_declaration [
	^ identifier, self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> binding_indication [
	^ (self dep use, entity_aspect ) optional, generic_map_aspect optional, port_map_aspect optional.
]

{ #category : #accessing }
VHDLGrammarParser >> block_configuration [
	^ self dep for, block_specification,
	use_clause star,
	configuration_item star,
	self dep vend, self dep for, self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> block_declarative_item [
	^ 
	subprogram_declaration /
	subprogram_body /
	type_declaration /
	subtype_declaration /
	constant_declaration /
	signal_declaration /
	variable_declaration /
	file_declaration /
	alias_declaration /
	component_declaration /
	attribute_declaration /
	attribute_specification /
	configuration_specification /
	disconnection_specification /
	step_limit_specification /
	use_clause /
	group_template_declaration /
	group_declaration /
	nature_declaration /
	subnature_declaration /
	quantity_declaration /
	terminal_declaration .
]

{ #category : #accessing }
VHDLGrammarParser >> block_declarative_part [
	^ block_declarative_item star.
]

{ #category : #accessing }
VHDLGrammarParser >> block_header [
	^ (generic_clause, (generic_map_aspect, self dep semi) optional ) optional,
	( port_clause ,(port_map_aspect , self dep semi) optional ) optional.
]

{ #category : #accessing }
VHDLGrammarParser >> block_specification [
	^( identifier , (self dep lparen , index_specification , self dep rparen ) optional) /
		vname.
]

{ #category : #accessing }
VHDLGrammarParser >> block_statement [
	^ label_colon, self dep block, (self dep lparen , expression , self dep rparen ) optional, (self dep is optional),
	block_header ,
	block_declarative_part , self dep begin,
	block_statement_part ,
	self dep vend, self dep block, identifier optional, self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> block_statement_part [
	^  architecture_statement star.
]

{ #category : #accessing }
VHDLGrammarParser >> branch_quantity_declaration [
	^ self dep quantity, across_aspect optional, through_aspect optional, terminal_aspect , self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> break_element [
	^ break_selector_clause optional, vname, self dep arrow , expression .
]

{ #category : #accessing }
VHDLGrammarParser >> break_list [
	^ break_element , (self dep comma, break_element ) star.
]

{ #category : #accessing }
VHDLGrammarParser >> break_selector_clause [
	^ self dep for, vname, self dep use.
]

{ #category : #accessing }
VHDLGrammarParser >> break_statement [
	^ label_colon optional, self dep break, break_list optional, (self dep when, condition ) optional, self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> case_statement [
	^ label_colon optional, self dep case, expression , self dep is,
		case_statement_alternative plus,
		self dep vend, self dep case, identifier optional, self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> case_statement_alternative [
	^ self dep when, choices , self dep arrow, sequence_of_statements 
]

{ #category : #accessing }
VHDLGrammarParser >> choice [
	^  self vliteral/discrete_range/simple_expression/ identifier  / (self dep others) 
]

{ #category : #accessing }
VHDLGrammarParser >> choices [
	^ choice, (self dep bar, choice) star.
]

{ #category : #accessing }
VHDLGrammarParser >> component_configuration [
	^ self dep for, component_specification ,
	(binding_indication , self dep semi) optional,
	block_configuration optional,
	self dep vend, self dep for, self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> component_declaration [
	^ self dep component , identifier , self dep is optional,
	generic_clause optional,
	port_clause optional,
	self dep vend, self dep component , identifier optional, self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> component_instantiation_statement [
	^ label_colon, instantiated_unit ,
	generic_map_aspect optional,
	port_map_aspect optional,
	self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> component_specification [
	^ instantiation_list , self dep colon, vname.
]

{ #category : #accessing }
VHDLGrammarParser >> composite_nature_definition [
	^ array_nature_definition / record_nature_definition 
]

{ #category : #accessing }
VHDLGrammarParser >> composite_type_definition [
	^ array_type_definition /
	record_type_definition .
]

{ #category : #accessing }
VHDLGrammarParser >> concurrent_assertion_statement [
	^ label_colon optional, self dep postponed optional, assertion , self dep semi
]

{ #category : #accessing }
VHDLGrammarParser >> concurrent_break_statement [
	^ label_colon optional, self dep break, break_list optional, 
		sensitivity_clause optional, (self dep when, condition ) optional, self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> concurrent_procedure_call_statement [
	^ label_colon optional, self dep postponed optional, procedure_call, self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> concurrent_signal_assignment_statement [
	^ label_colon optional, self dep postponed optional, (conditional_signal_assignment / selected_signal_assignment )
]

{ #category : #accessing }
VHDLGrammarParser >> condition [
	^ expression trim.
]

{ #category : #accessing }
VHDLGrammarParser >> condition_clause [
	^ self dep until , condition 
]

{ #category : #accessing }
VHDLGrammarParser >> conditional_signal_assignment [
	^ target , self dep le, opts , conditional_waveforms, self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> conditional_waveforms [
	^ waveform , (self dep when, condition , (self dep else, conditional_waveforms )optional ) optional
]

{ #category : #accessing }
VHDLGrammarParser >> configuration_declaration [
	^ self dep configuration , identifier , self dep of, vname, self dep is,
		configuration_declarative_part ,
		block_configuration ,
		self dep vend, self dep configuration optional, identifier optional, self dep semi. 
]

{ #category : #accessing }
VHDLGrammarParser >> configuration_declarative_item [
	^ use_clause / attribute_specification / group_declaration 
]

{ #category : #accessing }
VHDLGrammarParser >> configuration_declarative_part [
	^ configuration_declarative_item star.
]

{ #category : #accessing }
VHDLGrammarParser >> configuration_item [
	^ block_configuration / component_configuration 
]

{ #category : #accessing }
VHDLGrammarParser >> configuration_specification [
	^ self dep for, component_specification, binding_indication , self dep semi.
	
]

{ #category : #accessing }
VHDLGrammarParser >> constant_declaration [
	^ self dep constant , identifier_list , self dep colon, subtype_indication ,
		(self dep varasgn , expression ) optional, self dep semi.
]

{ #category : #grammar }
VHDLGrammarParser >> constrained_array_definition [
	^ self dep array, index_constraint , self dep of, subtype_indication .
]

{ #category : #accessing }
VHDLGrammarParser >> constrained_nature_definition [
	^ self dep array, index_constraint , self dep of, subnature_indication  .
]

{ #category : #accessing }
VHDLGrammarParser >> constraint [
	^ range_constraint / index_constraint 
]

{ #category : #accessing }
VHDLGrammarParser >> delay_mechanism [
	^ self dep transport / ( (self dep reject , expression ) optional, self dep inertial  )
]

{ #category : #accessing }
VHDLGrammarParser >> dep [
	^self dependencyAt: VHDLBaseLiteralParser.
]

{ #category : #accessing }
VHDLGrammarParser >> designator [
	^ identifier / (self dep string_literal )
]

{ #category : #accessing }
VHDLGrammarParser >> direction [
	^ (self dep to)/ (self dep downto)
]

{ #category : #accessing }
VHDLGrammarParser >> disconnection_specification [
	^ self dep disconnect , guarded_signal_specification , self dep after, expression , self dep semi.
]

{ #category : #grammar }
VHDLGrammarParser >> discrete_range [
	^ range /subtype_indication
]

{ #category : #accessing }
VHDLGrammarParser >> element_association [
	^ (choices , self dep arrow) optional, expression 
]

{ #category : #accessing }
VHDLGrammarParser >> element_declaration [
	^ identifier_list , self dep colon, element_subnature_definition , self dep semi.
	
]

{ #category : #accessing }
VHDLGrammarParser >> element_subnature_definition [
	^ subnature_indication 
]

{ #category : #accessing }
VHDLGrammarParser >> element_subtype_definition [
	^ subtype_indication 
]

{ #category : #accessing }
VHDLGrammarParser >> entity_aspect [
	^ (self dep entity, vname, (self dep lparen , identifier , self dep rparen ) optional)/
		(self dep configuration, vname)/
		(self dep open)
]

{ #category : #accessing }
VHDLGrammarParser >> entity_class [
^ (self dep entity)
  / (self dep architecture)
  / (self dep configuration)
  / (self dep procedure)
  / (self dep function)
  / (self dep package)
  / (self dep type)
  / (self dep subtype)
  / (self dep constant)
  / (self dep signal)
  / (self dep variable)
  / (self dep component)
  / (self dep label)
  / (self dep literal)
  / (self dep units)
  / (self dep group)
  / (self dep file)
  / (self dep nature)
  / (self dep subnature)
  / (self dep quantity)
  / (self dep terminal)
]

{ #category : #accessing }
VHDLGrammarParser >> entity_class_entry [
	^ entity_class , self dep box optional
]

{ #category : #accessing }
VHDLGrammarParser >> entity_class_entry_list [
	^ entity_class_entry , (self dep comma, entity_class_entry ) star.
]

{ #category : #accessing }
VHDLGrammarParser >> entity_declaration [
	^ self dep entity, identifier , self dep is, entity_header ,
		entity_declarative_part ,
		(self dep begin, entity_statement_part ) optional,
		self dep vend, self dep entity optional, identifier optional, self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> entity_declarative_item [
	^ subprogram_declaration
  	/ subprogram_body
  	/ type_declaration
  	/ subtype_declaration
  	/ constant_declaration
  	/ signal_declaration
  	/ variable_declaration
  	/ file_declaration
  	/ alias_declaration
  	/ attribute_declaration
  	/ attribute_specification
  	/ disconnection_specification
  	/ step_limit_specification
  	/ use_clause
  	/ group_template_declaration
  	/ group_declaration
  	/ nature_declaration
  	/ subnature_declaration
  	/ quantity_declaration
  	/ terminal_declaration
]

{ #category : #accessing }
VHDLGrammarParser >> entity_declarative_part [
	^ entity_declarative_item star.
]

{ #category : #accessing }
VHDLGrammarParser >> entity_designator [
	^ entity_tag , signature optional.
]

{ #category : #accessing }
VHDLGrammarParser >> entity_header [
	^ generic_clause optional, port_clause optional.
]

{ #category : #accessing }
VHDLGrammarParser >> entity_name_list [
	^ (entity_designator ,(self dep comma, entity_designator ) star )/ (self dep others)/ (self dep all)
]

{ #category : #accessing }
VHDLGrammarParser >> entity_specification [
	^ entity_name_list , self dep colon, entity_class 
]

{ #category : #accessing }
VHDLGrammarParser >> entity_statement [
	^  concurrent_assertion_statement
  		/  process_statement
  		/ concurrent_procedure_call_statement
]

{ #category : #accessing }
VHDLGrammarParser >> entity_statement_part [
	^  ( entity_statement trim ) star
]

{ #category : #accessing }
VHDLGrammarParser >> entity_tag [
	^ identifier /
	(self dep character_literal )/ (self dep string_literal )
]

{ #category : #accessing }
VHDLGrammarParser >> enumeration_literal [
	^ identifier / (self dep character_literal )
]

{ #category : #accessing }
VHDLGrammarParser >> enumeration_type_definition [
	^ self dep lparen , enumeration_literal , (self dep comma, enumeration_literal ) star, self dep rparen .
]

{ #category : #accessing }
VHDLGrammarParser >> exit_statement [
	^ label_colon optional, self dep exit, ((self dep when not) and,identifier) optional, (self dep when, condition) optional, self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> explicit_range [
	^ simple_expression , direction , simple_expression 
]

{ #category : #accessing }
VHDLGrammarParser >> expression [
	^ relation , (logical_operator , relation ) star.
]

{ #category : #accessing }
VHDLGrammarParser >> factor [
	^ 
	(self dep abs, primary )/
	(self dep vnot , primary )/
	(primary , (self dep doublestar , primary) optional)
]

{ #category : #accessing }
VHDLGrammarParser >> file_declaration [
	^ self dep file, identifier_list , self dep colon, subtype_indication ,
	file_open_information optional, self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> file_logical_name [
	^ expression 
]

{ #category : #accessing }
VHDLGrammarParser >> file_open_information [
	^ (self dep open, expression ) optional, self dep is, file_logical_name 
]

{ #category : #accessing }
VHDLGrammarParser >> file_type_definition [
	^ self dep file, self dep of, subtype_indication 
]

{ #category : #accessing }
VHDLGrammarParser >> formal_parameter_list [
	^ interface_list 
]

{ #category : #accessing }
VHDLGrammarParser >> formal_part [
	^ (identifier , self dep lparen , explicit_range , self dep rparen )/
	vname /
	identifier
	
]

{ #category : #accessing }
VHDLGrammarParser >> free_quantity_declaration [
	^ self dep quantity , identifier_list , self dep colon, subtype_indication ,
		(self dep varasgn , expression ) optional, self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> function_specification [
	^ ((self dep pure)/(self dep impure)) optional, self dep function, designator ,
		(self dep lparen , formal_parameter_list ,self dep rparen ) optional, self dep return, subtype_indication 
]

{ #category : #accessing }
VHDLGrammarParser >> generate_statement [
	^ label_colon , generation_scheme ,
	self dep generate , (block_declarative_item star, self dep begin) optional,
	architecture_statement star,
	self dep vend, self dep generate , identifier optional, self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> generation_scheme [
	^( self dep for, parameter_specification ) / (self dep if, condition )
]

{ #category : #accessing }
VHDLGrammarParser >> generic_clause [
	^ self dep generic, self dep lparen , generic_list , self dep rparen , self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> generic_list [
	^ interface_constant_declaration , (self dep semi, interface_constant_declaration ) star.
]

{ #category : #accessing }
VHDLGrammarParser >> generic_map_aspect [
	^ self dep generic, self dep map, self dep lparen , association_list , self dep rparen .
]

{ #category : #accessing }
VHDLGrammarParser >> group_constituent [
	^ vname / (self dep character_literal )
]

{ #category : #accessing }
VHDLGrammarParser >> group_constituent_list [
	^ group_constituent , (self dep comma, group_constituent ) star.
]

{ #category : #accessing }
VHDLGrammarParser >> group_declaration [
	^ self dep group, label_colon , vname,
	self dep lparen , group_constituent_list , self dep rparen , self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> group_template_declaration [
	^ self dep group, identifier ,self dep is, self dep lparen , entity_class_entry_list, self dep rparen , self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> guarded_signal_specification [
	^ signal_list , self dep colon, vname
]

{ #category : #accessing }
VHDLGrammarParser >> identifier [
	^ ((self dep basic_identifier  ) / (self dep extended_identifier  )) flatten.
]

{ #category : #accessing }
VHDLGrammarParser >> identifier_list [
	^ identifier, (self dep comma, identifier ) star
]

{ #category : #accessing }
VHDLGrammarParser >> if_statement [
	^ label_colon optional, self dep if, condition , self dep then,
	sequence_of_statements ,
	(self dep elsif , condition , self dep then, sequence_of_statements ) star,
	(self dep else, sequence_of_statements ) optional,
	self dep vend, self dep if, identifier optional, self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> ignorable [
	^ (self dep comment) / (self dep space)
]

{ #category : #accessing }
VHDLGrammarParser >> index_constraint [
	^ (self dep lparen , discrete_range , (self dep comma, discrete_range ) star, self dep rparen)/
	(self dep lparen , subtype_indication , (self dep comma, subtype_indication ) star, self dep rparen).
]

{ #category : #accessing }
VHDLGrammarParser >> index_specification [
	^ discrete_range / expression 
]

{ #category : #accessing }
VHDLGrammarParser >> index_subtype_definition [
	^ vname, self dep range, self dep box.
]

{ #category : #accessing }
VHDLGrammarParser >> instantiated_unit [
	^(self dep entity, vname,(self dep lparen , identifier , self dep rparen ) optional )/
		(self dep configuration , vname)/
		( self dep component optional, vname).
]

{ #category : #accessing }
VHDLGrammarParser >> instantiation_list [
	^ (identifier ,(self dep comma, identifier ) star)/
	(self dep others)/
	(self dep all)
]

{ #category : #grammar }
VHDLGrammarParser >> interface_constant_declaration [
	^ (self dep constant optional, identifier_list , self dep colon, self dep in optional, subtype_indication ,
	(self dep varasgn , expression ) optional)
	
]

{ #category : #accessing }
VHDLGrammarParser >> interface_declaration [
	^  
  	  interface_signal_declaration
  	/ interface_variable_declaration
 	 / interface_file_declaration
 	 / interface_terminal_declaration
 	 / interface_quantity_declaration
	/ interface_constant_declaration 
]

{ #category : #accessing }
VHDLGrammarParser >> interface_element [
	^ interface_declaration 
]

{ #category : #accessing }
VHDLGrammarParser >> interface_file_declaration [
	^ self dep file, identifier_list , self dep colon, subtype_indication 
]

{ #category : #accessing }
VHDLGrammarParser >> interface_list [
	^ interface_element, (self dep semi, interface_element ) star.
]

{ #category : #accessing }
VHDLGrammarParser >> interface_port_declaration [
	^ (self dep signal optional),identifier_list , self dep colon, signal_mode optional, subtype_indication ,
	self dep bus optional, (self dep varasgn , expression ) optional.
]

{ #category : #accessing }
VHDLGrammarParser >> interface_port_list [
	^ interface_port_declaration , (self dep semi, interface_port_declaration ) star.
]

{ #category : #accessing }
VHDLGrammarParser >> interface_quantity_declaration [
	^ self dep quantity, identifier_list , self dep colon, ((self dep in)/ (self dep out)) optional,
		subtype_indication , (self dep varasgn, expression ) optional
]

{ #category : #accessing }
VHDLGrammarParser >> interface_signal_declaration [
	^ self dep signal, identifier_list , self dep colon,signal_mode optional , subtype_indication ,
	self dep bus optional, (self dep varasgn , expression ) optional.
]

{ #category : #accessing }
VHDLGrammarParser >> interface_signal_list [
	^ interface_signal_declaration , (self dep semi, interface_signal_declaration ) star.
]

{ #category : #accessing }
VHDLGrammarParser >> interface_terminal_declaration [
	^ self dep terminal , identifier_list , self dep colon, subnature_indication 
]

{ #category : #accessing }
VHDLGrammarParser >> interface_variable_declaration [
	^ self dep variable optional, identifier_list ,self dep colon,
	signal_mode optional, subtype_indication , (self dep varasgn , expression ) optional.
]

{ #category : #accessing }
VHDLGrammarParser >> iteration_scheme [
	^ (self dep while, condition )/
	(self dep for, parameter_specification )
]

{ #category : #accessing }
VHDLGrammarParser >> label_colon [
	^ identifier , self dep colon
]

{ #category : #accessing }
VHDLGrammarParser >> library_clause [
	^self dep library , logical_name_list , self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> literal [
	^ (self dep null)/
	(self dep bit_string_literal )/
	(self dep string_literal )/
	(self dep character_literal ) /
	numeric_literal 
]

{ #category : #accessing }
VHDLGrammarParser >> logical_name [
	^ identifier 
]

{ #category : #accessing }
VHDLGrammarParser >> logical_name_list [
	^ logical_name , (self dep comma, logical_name) star.
]

{ #category : #accessing }
VHDLGrammarParser >> logical_operator [
	^ (self dep vand)/
	(self dep or)/
	(self dep nand)/
	(self dep nor)/
	(self dep xor)/
	(self dep xnor)
]

{ #category : #accessing }
VHDLGrammarParser >> loop_statement [
	^ label_colon optional, iteration_scheme optional,
	self dep loop,
	sequence_of_statements ,
	self dep vend, self dep loop, identifier optional, self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> multiplying_operator [
	^ (self dep mul)/
	(self dep mod)/
	(self dep div)/
	(self dep rem)
]

{ #category : #accessing }
VHDLGrammarParser >> name_attribute_part [
	^ self dep apostrophe , attribute_designator , (expression ,(self dep comma, expression ) star ) optional.
]

{ #category : #accessing }
VHDLGrammarParser >> name_function_call_or_indexed_part [
	^ (self dep lparen , actual_parameter_part optional, self dep rparen)  
]

{ #category : #accessing }
VHDLGrammarParser >> name_part [
	^  selected_name, 
	(name_attribute_part / 
	(name_function_call_or_indexed_part,
		((name_attribute_part/name_function_call_or_indexed_part/
			(self dep lparen,explicit_range, self dep rparen)) star)
	) / 
	name_slice_part) optional
]

{ #category : #accessing }
VHDLGrammarParser >> name_slice_part [
	^ self dep lparen , explicit_range , (self dep comma, explicit_range ) star, self dep rparen 
]

{ #category : #accessing }
VHDLGrammarParser >> nature_declaration [
	^ self dep nature, identifier , self dep is, nature_definition , self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> nature_definition [
	^ scalar_nature_definition / composite_nature_definition 
]

{ #category : #accessing }
VHDLGrammarParser >> nature_element_declaration [
	^ identifier_list , self dep colon, element_subnature_definition 
]

{ #category : #accessing }
VHDLGrammarParser >> next_statement [
	^ label_colon optional, self dep next, (self dep when not and,identifier) optional, (self dep when, condition ) optional, self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> numeric_literal [
	^ physical_literal/abstract_literal
]

{ #category : #accessing }
VHDLGrammarParser >> object_declaration [
	^ constant_declaration
 	/ signal_declaration
  	/ variable_declaration
  	/ file_declaration
  	/ terminal_declaration
  	/ quantity_declaration
]

{ #category : #accessing }
VHDLGrammarParser >> opts [
	^ self dep guarded optional, delay_mechanism optional.
]

{ #category : #accessing }
VHDLGrammarParser >> package_body [
	^self dep package, self dep body, identifier, self dep is,
	package_body_declarative_part ,
	self dep vend, (self dep package, self dep body) optional, identifier optional, self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> package_body_declarative_item [
	^
	subprogram_body 
  /subprogram_declaration
  / type_declaration
  / subtype_declaration
  / constant_declaration
  / variable_declaration
  / file_declaration
  / alias_declaration
  / use_clause
  / group_template_declaration
  / group_declaration
]

{ #category : #accessing }
VHDLGrammarParser >> package_body_declarative_part [
	^ package_body_declarative_item star.
]

{ #category : #accessing }
VHDLGrammarParser >> package_declaration [
	^self dep package, identifier , self dep is,
	package_declarative_part ,
	self dep vend, self dep package optional, identifier optional, self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> package_declarative_item [
	^ subprogram_declaration
  / type_declaration
  / subtype_declaration
  / constant_declaration
  / signal_declaration
  / variable_declaration
  / file_declaration
  / alias_declaration
  / component_declaration
  / attribute_declaration
  / attribute_specification
  / disconnection_specification
  / use_clause
  / group_template_declaration
  / group_declaration
  / nature_declaration
  / subnature_declaration
  / terminal_declaration
]

{ #category : #accessing }
VHDLGrammarParser >> package_declarative_part [
	^ package_declarative_item star.
]

{ #category : #accessing }
VHDLGrammarParser >> parameter_specification [
	^ identifier , self dep in, discrete_range 
]

{ #category : #accessing }
VHDLGrammarParser >> physical_literal [
	^ abstract_literal trim,self dep unit_name"identifier" 
]

{ #category : #accessing }
VHDLGrammarParser >> physical_type_definition [
	^ range_constraint , self dep units, base_unit_declaration ,
	secondary_unit_declaration star,
	self dep vend, self dep units, identifier optional.
]

{ #category : #accessing }
VHDLGrammarParser >> port_clause [
	^ self dep port, self dep lparen , port_list , self dep rparen , self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> port_list [
	^ interface_port_list 
]

{ #category : #accessing }
VHDLGrammarParser >> port_map_aspect [
	^ self dep port, self dep map, self dep lparen , association_list , self dep rparen .
]

{ #category : #accessing }
VHDLGrammarParser >> primary [
	^ self vliteral 
		/qualified_expression
		/ aggregate
  		/ (self dep lparen , expression, self dep rparen )
 		 / allocator
  		/ vname
]

{ #category : #accessing }
VHDLGrammarParser >> procedural_declarative_item [
	^ subprogram_declaration
  / subprogram_body
  / type_declaration
  / subtype_declaration
  / constant_declaration
  / variable_declaration
  / alias_declaration
  / attribute_declaration
  / attribute_specification
  / use_clause
  / group_template_declaration
  / group_declaration
]

{ #category : #accessing }
VHDLGrammarParser >> procedural_declarative_part [
	^ procedural_declarative_item star
]

{ #category : #accessing }
VHDLGrammarParser >> procedural_statement_part [
	^ sequential_statement star.
]

{ #category : #accessing }
VHDLGrammarParser >> procedure_call [
	^ (self dep vend not),selected_name , (self dep lparen , actual_parameter_part , self dep rparen ) optional.
]

{ #category : #accessing }
VHDLGrammarParser >> procedure_call_statement [
	^ label_colon optional, procedure_call , self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> procedure_specification [
	^ self dep procedure, designator , (self dep lparen , formal_parameter_list , self dep rparen ) optional
]

{ #category : #accessing }
VHDLGrammarParser >> process_declarative_item [
	^ subprogram_declaration
  / subprogram_body
  / type_declaration
  / subtype_declaration
  / constant_declaration
  / variable_declaration
  / file_declaration
  / alias_declaration
  / attribute_declaration
  / attribute_specification
  / use_clause
  / group_template_declaration
  / group_declaration
]

{ #category : #accessing }
VHDLGrammarParser >> process_declarative_part [
	^ process_declarative_item star.
]

{ #category : #accessing }
VHDLGrammarParser >> process_statement [
	^ (label_colon optional, self dep postponed optional, self dep process ,
	(self dep lparen , sensitivity_list , self dep rparen ) optional, self dep is optional,
	process_declarative_part  ,
	self dep begin,
	process_statement_part ,
	self dep vend, self dep postponed optional, self dep process, identifier optional, self dep semi) trim.
]

{ #category : #accessing }
VHDLGrammarParser >> process_statement_part [
	^ sequential_statement star.
]

{ #category : #accessing }
VHDLGrammarParser >> qualified_expression [
	^ subtype_indication , self dep apostrophe , (aggregate / (self dep lparen , expression , self dep rparen ))
]

{ #category : #accessing }
VHDLGrammarParser >> quantity_declaration [
	^ free_quantity_declaration
  / branch_quantity_declaration
  / source_quantity_declaration
]

{ #category : #accessing }
VHDLGrammarParser >> quantity_list [
	^( vname, (self dep comma, vname) star)/
	(self dep others)/
	(self dep all)
]

{ #category : #accessing }
VHDLGrammarParser >> quantity_specification [
	^ quantity_list , self dep colon, vname 
]

{ #category : #accessing }
VHDLGrammarParser >> range [
	^ explicit_range / vname
]

{ #category : #accessing }
VHDLGrammarParser >> range_constraint [
	^ self dep range, range
]

{ #category : #accessing }
VHDLGrammarParser >> record_nature_definition [
	^ self dep record, nature_element_declaration plus,
	self dep vend, self dep record, identifier optional
]

{ #category : #accessing }
VHDLGrammarParser >> record_type_definition [
	^ self dep record, element_declaration  plus,
	self dep vend, self dep record, identifier optional
]

{ #category : #accessing }
VHDLGrammarParser >> relation [
	^ shift_expression , (relational_operator, shift_expression ) optional.
]

{ #category : #accessing }
VHDLGrammarParser >> relational_operator [
	^ (self dep le)/
	(self dep ge)/
	(self dep neq)/
	(self dep eq)/
	(self dep lowerthan )/
	(self dep greaterthan )
	
]

{ #category : #accessing }
VHDLGrammarParser >> report_statement [
	^ label_colon optional, self dep report, expression , (self dep severity , expression ) optional, self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> return_statement [
	^ label_colon optional, self dep return , expression optional, self dep semi
]

{ #category : #accessing }
VHDLGrammarParser >> scalar_nature_definition [
	^ vname, self dep across , vname, self dep through , vname, self dep reference.
]

{ #category : #accessing }
VHDLGrammarParser >> scalar_type_definition [
	^ physical_type_definition
  /enumeration_type_definition
  / range_constraint
]

{ #category : #accessing }
VHDLGrammarParser >> secondary_unit_declaration [
	^ identifier , self dep eq, physical_literal , self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> selected_name [
	^ identifier , (self dep dot, suffix ) star.
]

{ #category : #accessing }
VHDLGrammarParser >> selected_signal_assignment [
	^ self dep with, expression , self dep select, target , self dep le, opts, selected_waveforms , self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> selected_waveforms [
	^ waveform , self dep when, choices , (self dep comma, waveform , self dep when, choices) star.
]

{ #category : #accessing }
VHDLGrammarParser >> sensitivity_clause [
	^ self dep on, sensitivity_list 
]

{ #category : #accessing }
VHDLGrammarParser >> sensitivity_list [
	^ vname, (self dep comma, vname) star
]

{ #category : #accessing }
VHDLGrammarParser >> sequence_of_statements [
	^ sequential_statement star.
]

{ #category : #accessing }
VHDLGrammarParser >> sequential_statement [
	^ wait_statement
  / assertion_statement
  / report_statement
  / signal_assignment_statement
  / variable_assignment_statement
  / if_statement
  / case_statement
  / loop_statement
  / next_statement
  / exit_statement
  / return_statement
  / ( label_colon optional, self dep null, self dep semi)
  / break_statement
  / procedure_call_statement
]

{ #category : #accessing }
VHDLGrammarParser >> shift_expression [
	^ simple_expression , (shift_operator, simple_expression ) optional
]

{ #category : #accessing }
VHDLGrammarParser >> shift_operator [
	^ (self dep sll)/
		(self dep srl)/
		(self dep sra)/
		(self dep sla)/
		(self dep rol)/
		(self dep ror)
]

{ #category : #accessing }
VHDLGrammarParser >> signal_assignment_statement [
	^ label_colon optional, target, self dep le, delay_mechanism optional, waveform , self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> signal_declaration [
	^ self dep signal, identifier_list , self dep colon, subtype_indication , signal_kind optional, (self dep varasgn , expression ) optional , self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> signal_kind [
	^ (self dep register)/
	(self dep bus)
]

{ #category : #accessing }
VHDLGrammarParser >> signal_list [
	^ (vname, (self dep comma, vname) star)/
	(self dep others) /
	(self dep all).
]

{ #category : #accessing }
VHDLGrammarParser >> signal_mode [
	^ 
	(self dep inout)/
	(self dep in)/
	(self dep out)/
	(self dep buffer)/
	(self dep linkage )
]

{ #category : #accessing }
VHDLGrammarParser >> signature [
	^ self dep lbracket , (vname, (self dep comma, vname) star) optional,
		(self dep return, vname) optional, self dep rbracket 
]

{ #category : #accessing }
VHDLGrammarParser >> simple_expression [
	^ ((self dep vplus)/(self dep minus ) ) optional, term, (adding_operator , term) star.
]

{ #category : #accessing }
VHDLGrammarParser >> simple_simultaneous_statement [
	^ label_colon optional, simple_expression , self dep assign , simple_expression , tolerance_aspect optional, self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> simultaneous_alternative [
	^ self dep when, choices, self dep arrow , simultaneous_statement_part 
]

{ #category : #accessing }
VHDLGrammarParser >> simultaneous_case_statement [
	^ label_colon optional, self dep case, expression , self dep use,
	simultaneous_alternative plus,
	self dep vend, self dep case, identifier optional, self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> simultaneous_if_statement [
	^ label_colon optional, self dep if, condition , self dep use,
	simultaneous_statement_part ,
	(self dep elsif, condition , self dep use, simultaneous_statement_part ) star,
	(self dep else, simultaneous_statement_part ) optional,
	self dep vend, self dep use, identifier optional, self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> simultaneous_procedural_statement [
	^ label_colon optional, self dep procedural , self dep is optional,
	procedural_declarative_part , self dep begin,
	procedural_statement_part ,
	self dep vend, self dep procedural, identifier optional, self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> simultaneous_statement [
	^ simple_simultaneous_statement
  / simultaneous_if_statement
  / simultaneous_case_statement
  / simultaneous_procedural_statement
  / ( label_colon optional, self dep null, self dep semi)
]

{ #category : #accessing }
VHDLGrammarParser >> simultaneous_statement_part [
	^ simultaneous_statement star.
]

{ #category : #accessing }
VHDLGrammarParser >> source_aspect [
	^( self dep spectrum , simple_expression , self dep comma, simple_expression )/
	(self dep noise, simple_expression )
]

{ #category : #accessing }
VHDLGrammarParser >> source_quantity_declaration [
	^ self dep quantity, identifier_list , self dep colon, subtype_indication , source_aspect, self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> start [

]

{ #category : #accessing }
VHDLGrammarParser >> step_limit_specification [
	^ self dep limit, quantity_specification , self dep with, expression, self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> subnature_declaration [
	^ self dep subnature , identifier , self dep is, subnature_indication ,self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> subnature_indication [
	^ vname, "index_"constraint optional, (self dep tolerance , expression , self dep across , expression , self dep through) optional
]

{ #category : #accessing }
VHDLGrammarParser >> subprogram_body [
	^ subprogram_specification, self dep is,
	subprogram_declarative_part ,
	self dep begin,
	subprogram_statement_part ,
	self dep vend, subprogram_kind optional, designator optional, self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> subprogram_declaration [
	^ subprogram_specification , self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> subprogram_declarative_item [
	^ subprogram_declaration
  / subprogram_body
  / type_declaration
  / subtype_declaration
  / constant_declaration
  / variable_declaration
  / file_declaration
  / alias_declaration
  / attribute_declaration
  / attribute_specification
  / use_clause
  / group_template_declaration
  / group_declaration
]

{ #category : #accessing }
VHDLGrammarParser >> subprogram_declarative_part [
	^ subprogram_declarative_item  star
]

{ #category : #accessing }
VHDLGrammarParser >> subprogram_kind [
	^ (self dep procedure)/
	(self dep function)
]

{ #category : #accessing }
VHDLGrammarParser >> subprogram_specification [
	^ procedure_specification
  / function_specification
]

{ #category : #accessing }
VHDLGrammarParser >> subprogram_statement_part [
	^ sequential_statement star
]

{ #category : #grammar }
VHDLGrammarParser >> subtype_declaration [
	^ (self dep subtype, identifier , self dep is, subtype_indication , self dep semi)/
	(self dep subtype, identifier , self dep is, 
		(selected_name trim ,(self dep range not and,selected_name) optional, 
		constraint optional, 
		tolerance_aspect optional) , self dep semi).
]

{ #category : #accessing }
VHDLGrammarParser >> subtype_indication [
	^ 
	(selected_name ,selected_name optional, constraint optional, tolerance_aspect optional).
]

{ #category : #accessing }
VHDLGrammarParser >> suffix [
	^ identifier / (self dep character_literal )/ (self dep string_literal )/(self dep all).
]

{ #category : #accessing }
VHDLGrammarParser >> target [
	^ vname/aggregate 
]

{ #category : #accessing }
VHDLGrammarParser >> term [
	^ factor, (multiplying_operator , factor) star.
]

{ #category : #accessing }
VHDLGrammarParser >> terminal_aspect [
	^ vname, (self dep to, vname) star.
]

{ #category : #accessing }
VHDLGrammarParser >> terminal_declaration [
	^ self dep terminal, identifier_list , self dep colon, subnature_indication , self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> through_aspect [
	^ identifier_list , tolerance_aspect optional, (self dep varasgn , expression ) optional, self dep through 
]

{ #category : #accessing }
VHDLGrammarParser >> timeout_clause [
	^ self dep for, expression 
]

{ #category : #accessing }
VHDLGrammarParser >> tolerance_aspect [
	^ self dep tolerance, expression 
]

{ #category : #accessing }
VHDLGrammarParser >> type_declaration [
	^ self dep type, identifier , (self dep is, type_definition ) optional, self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> type_definition [
	^ scalar_type_definition
  / composite_type_definition
  / access_type_definition
  / file_type_definition
]

{ #category : #accessing }
VHDLGrammarParser >> unconstrained_array_definition [
	^ self dep array, self dep lparen , index_subtype_definition , (self dep comma, index_subtype_definition ) star,
	self dep rparen , self dep of, subtype_indication .
]

{ #category : #accessing }
VHDLGrammarParser >> unconstrained_nature_definition [
	^ self dep array, self dep lparen , index_subtype_definition , (self dep comma, index_subtype_definition ) star,
	self dep rparen , self dep of, subnature_indication  .
]

{ #category : #accessing }
VHDLGrammarParser >> use_clause [
	^ self dep use, selected_name , (self dep comma, selected_name ) star, self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> variable_assignment_statement [
	^ "label_colon optional, "target , self dep varasgn , expression , self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> variable_declaration [
	^ self dep shared optional, self dep variable, identifier_list , self dep colon, subtype_indication ,
	(self dep varasgn , (physical_literal /expression) ) optional, self dep semi.
]

{ #category : #'as yet unclassified' }
VHDLGrammarParser >> vliteral [
	^ "self dep null/"
		self dep bit_string_literal/
		self dep string_literal/
		self dep character_literal /
		numeric_literal.
]

{ #category : #accessing }
VHDLGrammarParser >> vname [
	^  (name_part ,(self dep dot, name_part ) star)/ selected_name  
]

{ #category : #accessing }
VHDLGrammarParser >> wait_statement [
	^ label_colon optional, self dep wait, sensitivity_clause optional, condition_clause optional, timeout_clause optional, self dep semi.
]

{ #category : #accessing }
VHDLGrammarParser >> waveform [
	^( waveform_element , (self dep comma, waveform_element ) star)/ (self dep unaffected ).
]

{ #category : #accessing }
VHDLGrammarParser >> waveform_element [
	^ expression , (self dep after, expression ) optional.
]
