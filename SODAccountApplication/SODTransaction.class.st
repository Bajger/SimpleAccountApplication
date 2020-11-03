Class {
	#name : #SODTransaction,
	#superclass : #Object,
	#instVars : [
		'amount',
		'logTime'
	],
	#category : #SODAccountApplication
}

{ #category : #'instance creation' }
SODTransaction class >> newAmount: anAmount atTime: aDateTime [

	^ self new
		amount: anAmount;
		logTime: aDateTime;
		yourself 
]

{ #category : #api }
SODTransaction >> <= anotherTransaction [

	^ self logTime <= anotherTransaction logTime
	
]

{ #category : #accessing }
SODTransaction >> amount [
	^ amount
]

{ #category : #accessing }
SODTransaction >> amount: anObject [
	amount := anObject
]

{ #category : #accessing }
SODTransaction >> logTime [
	^ logTime
]

{ #category : #accessing }
SODTransaction >> logTime: anObject [
	logTime := anObject
]
