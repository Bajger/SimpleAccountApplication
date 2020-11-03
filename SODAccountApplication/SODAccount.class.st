Class {
	#name : #SODAccount,
	#superclass : #Object,
	#instVars : [
		'log'
	],
	#category : #SODAccountApplication
}

{ #category : #'instance creation' }
SODAccount class >> newBalance: aBalance [

	|initialTransaction| 
	initialTransaction := SODTransaction newAmount: aBalance atTime: DateAndTime now.
	^ self new 
		handleTransaction: initialTransaction;
		yourself 
		
]

{ #category : #api }
SODAccount >> getBalance [
	^ self log balance
]

{ #category : #api }
SODAccount >> handleTransaction: aTransaction [

	self log add: aTransaction 
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
