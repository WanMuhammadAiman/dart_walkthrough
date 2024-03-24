class Addition<T> {
  T? first;
  T? second;

  Addition(T f, T s) {
    first = f;
    second = s;
  }

  T get add {
    if (first is int || first is double) {
      return (first as dynamic) + (second as dynamic);
    } else if (first is String) {
      return (first as dynamic) + (second as dynamic);
    } else {
      throw Exception('Addition not supported for type $T');
    }
  }
}

void main() {
  var i = Addition<int>(1, 2);
  var s = Addition<String>('Hello', 'World');

  print(i.add);
  print(s.add);
}
