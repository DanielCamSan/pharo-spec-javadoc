Class {
	#name : #DocGeneratorTaskPresenter,
	#superclass : #SpPresenter,
	#instVars : [
		'task',
		'titlePresenter'
	],
	#category : #DocGenerator
}

{ #category : #accessing }
DocGeneratorTaskPresenter >> task [

	^ task
]

{ #category : #accessing }
DocGeneratorTaskPresenter >> task: anObject [

	task := anObject.
	self updatePresenter
]
