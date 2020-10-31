Class {
	#name : #SODAccount,
	#superclass : #Object,
	#instVars : [
		'log'
	],
	#category : #SODAccountApplication
}

{ #category : #api }
SODAccount >> getBalance [
	^ self log balance
]

{ #category : #initialize }
SODAccount >> initialize [ 
	super initialize.
	self log: SODTransactionLog new.
	
]

{ #category : #private }
SODAccount >> log [
	^ log
]

{ #category : #accessing }
SODAccount >> log: anObject [
	log := anObject
]
