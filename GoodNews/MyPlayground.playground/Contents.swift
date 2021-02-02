import UIKit
import RxSwift
import RxCocoa


var str = "Hello, playground"
var disposeBag = DisposeBag()

//let value = Observable.of(2,3,4)
//
//let observable = value.startWith(1)

//observable.subscribe(onNext: {
//    print($0)
//}).disposed(by: disposeBag)
//
//
//let value1 = Observable.of(2,3,4)
//let value2 = Observable.of(12,13,14)
//
//Observable.concat([value1,value2]).subscribe(onNext: {
//    print($0)
//}).disposed(by: disposeBag)


//
//let left = PublishSubject<Int>()
//let right = PublishSubject<Int>()


//let source = Observable.of(left.asObservable(), right.asObservable())
//
//let observable = source.merge()
//
//observable.subscribe(onNext: {
//    print($0)
//}).disposed(by: disposeBag)
//
//
//left.onNext(1)
//left.onNext(2)
//left.onNext(3)
//
//
//right.onNext(11)
//right.onNext(12)
//left.onNext(33)




//let left = PublishSubject<Int>()
//let right = PublishSubject<Int>()
//
//
//let observable = Observable.combineLatest(left,right, resultSelector:{
//    lastLeft, lastRight in
//    "\(lastLeft) \(lastRight)"
//})
//
//
//let disposable = observable.subscribe(onNext: { value in
//    print(value)
//}).disposed(by: disposeBag)
//
//left.onNext(45)
//right.onNext(1)
//left.onNext(30)
//right.onNext(99)
//right.onNext(2)


//let button = PublishSubject<Void>()
//let textField = PublishSubject<String>()
//
//
//let observable = button.withLatestFrom(textField)
//let disposable = observable.subscribe(onNext: {
//    print($0)
//}).disposed(by: disposeBag)
//
//textField.onNext("Sw")
//textField.onNext("Swif")
//textField.onNext("Swift")
//
//
//button.onNext(())
//button.onNext(())


let source = Observable.of(1,2,3,4)
//source.reduce(0, accumulator: +).subscribe(onNext: {
//    print($0)
//}).disposed(by: disposeBag)
//
//
//source.reduce(0, accumulator: {
//    summery, newValue in
//
//    return summery + newValue
//}).subscribe(onNext: {
//    print($0)
//}).disposed(by: disposeBag)


source.scan(0, accumulator: +).subscribe(onNext: {
    print($0) //13610
}).disposed(by: disposeBag)
