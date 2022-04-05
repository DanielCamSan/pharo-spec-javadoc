Class {
	#name : #DocGeneratorPresenter,
	#superclass : #SpPresenter,
	#instVars : [
		'docGeneratorPresenter'
	],
	#category : #DocGenerator
}

{ #category : #initialization }
DocGeneratorPresenter >> initializePresenters [

	docGeneratorPresenter := self newTable
		                         addColumn:
			                         (SpStringTableColumn
				                          title: 'Title'
				                          evaluated: [ :task | task ]);
		                         yourself;
		                         addColumn:
			                         (SpStringTableColumn
				                          title: 'Classes'
				                          evaluated: [ :task | task ]);
		                         yourself;
		                         addColumn:
			                         (SpStringTableColumn
				                          title: 'Methods'
				                          evaluated: [ :task | task ]);
		                         yourself.

	self layout: (SpBoxLayout newVertical
			 add: docGeneratorPresenter;
			 yourself)
]

{ #category : #initialization }
DocGeneratorPresenter >> initializeWindow:  aWindowPresenter [
	aWindowPresenter 
		title: 'JavaDoc';
		initialExtent: 500@500
]

{ #category : #initialization }
DocGeneratorPresenter >> updatePresenter [ 
	docGeneratorPresenter  items: RPackage organizer packages
]
