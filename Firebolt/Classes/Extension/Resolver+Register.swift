
import Foundation

extension Resolver {

  @discardableResult
  public func register<T>(
    _ scope: Scope = .factory,
    expect object: T.Type = T.self,
    closure: @escaping BoxClosureNoArg<T>
  ) -> Self {
    let boxKey = getBoxKey(object.self).clean()
    boxes[boxKey] = Box<T, Void, Void, Void, Void>(
      resolver: self,
      scope: scope,
      closure: .noargs(closure)
    )
    logger(.info, "registered \(boxKey)")
    return self
  }
  
  @discardableResult
  public func register<T, A>(
    _ scope: Scope = .factory,
    expect object: T.Type = T.self,
    arg1: A.Type,
    closure: @escaping BoxClosure1Arg<T, A>
  ) -> Self {
    let boxKey = getBoxKey(object.self).clean()
    boxes[boxKey] = Box<T?, A, Void, Void, Void>(
      resolver: self,
      scope: scope,
      closure: .arg1(closure)
    )
    logger(.info, "registered \(boxKey) with expected argument \(arg1)")
    return self
  }
  
  @discardableResult
  public func register<T, A, B>(
    scope: Scope = .factory,
    expect object: T.Type = T.self,
    arg1: A.Type,
    arg2: B.Type,
    closure: @escaping BoxClosure2Arg<T, A, B>
  ) -> Self {
    let boxKey = getBoxKey(object.self).clean()
    let box = Box<T?, A, B, Void, Void>(
      resolver: self,
      scope: scope,
      closure: .args2(closure)
    )
    boxes[boxKey] = box
    logger(.info, "registered \(boxKey) with expected args \(box.stringArgs)")
    return self
  }
  
  @discardableResult
  public func register<T, A, B, C>(
    scope: Scope = .factory,
    expect object: T.Type = T.self,
    arg1: A.Type,
    arg2: B.Type,
    arg3: C.Type,
    closure: @escaping BoxClosure3Arg<T, A, B, C>
  ) -> Self {
    let boxKey = getBoxKey(object.self).clean()
    boxes[boxKey] = Box<T, A, B, C, Void>(
      resolver: self,
      scope: scope,
      closure: .args3(closure)
    )
    logger(.info, "registered \(boxKey) with expected argument \(arg1)")
    return self
  }
  
  @discardableResult
  public func register<T, A, B, C, D>(
    scope: Scope = .factory,
    expect object: T.Type = T.self,
    arg1: A.Type,
    arg2: B.Type,
    arg3: C.Type,
    arg4: D.Type,
    closure: @escaping BoxClosure4Arg<T, A, B, C, D>
  ) -> Self {
    let boxKey = getBoxKey(object.self).clean()
    boxes[boxKey] = Box<T, A, B, C, D>(
      resolver: self,
      scope: scope,
      closure: .args4(closure)
    )
    logger(.info, "registered \(boxKey) with expected argument \(arg1)")
    return self
  }
}

extension Resolver {
  @discardableResult
  public func register<T>(
    _ scope: Scope = .factory,
    expect object: T.Type = T.self,
    closure: @escaping BoxClosureNoArgR<T>
  ) -> Self {
    let boxKey = getBoxKey(object.self).clean()
    boxes[boxKey] = Box<T, Void, Void, Void, Void>(
      resolver: self,
      scope: scope,
      closure: .noargsR(closure)
    )
    logger(.info, "registered \(boxKey)")
    return self
  }
  
  @discardableResult
  public func register<T, A>(
    _ scope: Scope = .factory,
    expect object: T.Type = T.self,
    arg1: A.Type,
    closure: @escaping BoxClosure1ArgR<T, A>
  ) -> Self {
    let boxKey = getBoxKey(object.self).clean()
    boxes[boxKey] = Box<T?, A, Void, Void, Void>(
      resolver: self,
      scope: scope,
      closure: .arg1R(closure)
    )
    logger(.info, "registered \(boxKey) with expected argument \(arg1)")
    return self
  }
  
  @discardableResult
  public func register<T, A, B>(
    scope: Scope = .factory,
    expect object: T.Type = T.self,
    arg1: A.Type,
    arg2: B.Type,
    closure: @escaping BoxClosure2ArgR<T, A, B>
  ) -> Self {
    let boxKey = getBoxKey(object.self).clean()
    let box = Box<T?, A, B, Void, Void>(
      resolver: self,
      scope: scope,
      closure: .args2R(closure)
    )
    boxes[boxKey] = box
    logger(.info, "registered \(boxKey) with expected args \(box.stringArgs)")
    return self
  }
  
  @discardableResult
  public func register<T, A, B, C>(
    scope: Scope = .factory,
    expect object: T.Type = T.self,
    arg1: A.Type,
    arg2: B.Type,
    arg3: C.Type,
    closure: @escaping BoxClosure3ArgR<T, A, B, C>
  ) -> Self {
    let boxKey = getBoxKey(object.self).clean()
    boxes[boxKey] = Box<T, A, B, C, Void>(
      resolver: self,
      scope: scope,
      closure: .args3R(closure)
    )
    logger(.info, "registered \(boxKey) with expected argument \(arg1)")
    return self
  }
  
  @discardableResult
  public func register<T, A, B, C, D>(
    scope: Scope = .factory,
    expect object: T.Type = T.self,
    arg1: A.Type,
    arg2: B.Type,
    arg3: C.Type,
    arg4: D.Type,
    closure: @escaping BoxClosure4ArgR<T, A, B, C, D>
  ) -> Self {
    let boxKey = getBoxKey(object.self).clean()
    boxes[boxKey] = Box<T, A, B, C, D>(
      resolver: self,
      scope: scope,
      closure: .args4R(closure)
    )
    logger(.info, "registered \(boxKey) with expected argument \(arg1)")
    return self
  }
}
