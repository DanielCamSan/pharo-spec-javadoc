Class {
	#name : #DocGeneratorPresenter,
	#superclass : #SpPresenter,
	#instVars : [
		'docGeneratorPresenter',
		'packagesList',
		'classesList',
		'methodsList',
		'codeSpace'
	],
	#category : #DocGenerator
}

{ #category : #initialization }
DocGeneratorPresenter >> initialize [
	super initialize.
	
]

{ #category : #initialization }
DocGeneratorPresenter >> initializePresenters [

	packagesList := self newList.
	classesList := self newList.
	methodsList := self newList.
	codeSpace := self newCode.
	packagesList display: [ :package | package name ].
	classesList display: [ :class | class name ].
	methodsList display: [ :method | method selector ].


	self layout: (SpBoxLayout newTopToBottom
			 add: (SpBoxLayout newLeftToRight
					  spacing: 5;
					  add: packagesList;
					  add: classesList;
					  add: methodsList;
					  yourself);
			 spacing: 5;
			 add: codeSpace;
			 yourself).


	packagesList transmitDo: [ :package | 
		package ifNotNil: [ 
			classesList items: package classes asOrderedCollection ] ].
	classesList transmitDo: [ :class | 
		class ifNotNil: [ 
			methodsList items: class allMethods asOrderedCollection ] ].
	methodsList transmitDo: [ :method | 
		method ifNotNil: [ codeSpace text: method sourceCode ] ]
]

{ #category : #initialization }
DocGeneratorPresenter >> initializeWindow:  aWindowPresenter [
	aWindowPresenter 
		title: 'JavaDoc';
		initialExtent: 500@500
]

{ #category : #initialization }
DocGeneratorPresenter >> updatePresenter [ 
	packagesList items: RPackage organizer packages
]
