Class {
	#name : #DocGeneratorTask,
	#superclass : #Object,
	#instVars : [
		'done',
		'title'
	],
	#category : #DocGenerator
}

{ #category : #accessing }
DocGeneratorTask >> done [

	^ done
]

{ #category : #accessing }
DocGeneratorTask >> done: anObject [

	done := anObject
]

{ #category : #accessing }
DocGeneratorTask >> initialize [

	super initialize.
	self done: false
]

{ #category : #accessing }
DocGeneratorTask >> title [

	^ title
]

{ #category : #accessing }
DocGeneratorTask >> title: anObject [

	title := anObject
]
