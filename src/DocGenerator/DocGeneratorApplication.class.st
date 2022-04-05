Class {
	#name : #DocGeneratorApplication,
	#superclass : #SpApplication,
	#category : #DocGenerator
}

{ #category : #examples }
DocGeneratorApplication class >> openDocGeneratorApplication [

	<example>
	DocGeneratorPresenter new open
]

{ #category : #accessing }
DocGeneratorApplication >> start [ 
	(DocGeneratorPresenter  newApplication: self) openWithSpec
]
