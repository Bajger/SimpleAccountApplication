Class {
	#name : #SODTransactionLog,
	#superclass : #Object,
	#instVars : [
		'transactions',
		'sortBlock'
	],
	#category : #SODAccountApplication
}

{ #category : #api }
SODTransactionLog >> balance [ 
	^ self transactions sumNumbers: #amount
]

{ #category : #initialize }
SODTransactionLog >> initialize [ 
	super initialize.
	self transactions: SortedCollection new.
	self sortBlock: [:t1 :t2 | t1 <= t2 ]
	
]

{ #category : #accessing }
SODTransactionLog >> sortBlock [
	^ sortBlock
]

{ #category : #accessing }
SODTransactionLog >> sortBlock: aBlock [
	sortBlock := aBlock
]

{ #category : #accessing }
SODTransactionLog >> transactions [
	^ transactions
]

{ #category : #accessing }
SODTransactionLog >> transactions: aCollection [
	transactions := aCollection
]
