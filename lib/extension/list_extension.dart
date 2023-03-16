extension ListExtension<T> on List<T> {
 
  bool containsWhere(bool Function(T element) predicate) {
    for (T element in this) {
      if (predicate(element)) return true;
    }
    return false;
  }
}