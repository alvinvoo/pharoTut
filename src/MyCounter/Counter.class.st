"
`Counter` is a simple concrete class which supports incrementing and
decrementing.
Its API is
- `decrement` and `increment`
- `count`
Its creation message is `startAt:`
"
Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #accessing }
Counter class >> startingAt: anInteger [
	^ self new count: anInteger.
]

{ #category : #'var accessors' }
Counter >> count [
	^ count
]

{ #category : #'var accessors' }
Counter >> count: n [
	count := n
]

{ #category : #accessing }
Counter >> decrement [
	count := count - 1
]

{ #category : #accessing }
Counter >> increment [
	count := count + 1
]

{ #category : #initialization }
Counter >> initialize [ 
	"set initial value of count to 0"
	
	count := 0
]

{ #category : #printing }
Counter >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: ' with value: ', count printString.
	
]
