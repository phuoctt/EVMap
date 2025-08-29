import 'dart:math';

extension ListExtension<T> on List<T>? {
  bool get isNullOrEmpty => this == null || this is! List || this!.isEmpty;

  bool get notNullOrEmpty => this != null && this is List && this!.isNotEmpty;

  int get lastIndex => isNullOrEmpty ? 0 : (this!.length - 1);

  T? getOrNull(int index) {
    if (this == null) {
      return null;
    }
    if (index >= 0 && index < this!.length) {
      return this![index];
    }
    return null;
  }

  List<E> mapNotNull<E>(
    E? Function(T e) block, {
    String tag = 'mapList',
  }) {
    List<E> mapList = [];
    if (this == null) {
      return mapList;
    }
    for (var i = 0; i < this!.length; i++) {
      var e = this![i];
      try {
        if (e != null) {
          var convertedElement = block(e);
          if (convertedElement != null) {
            mapList.add(convertedElement);
          } else {
            print('convert element return null at index $i');
          }
        } else {
          print('skip element at index $i');
        }
      } on Exception catch (e) {
        print('convert element error at index $i ${e.toString()}');
      }
    }
    return mapList;
  }

  T? find(bool Function(T element) block) {
    try {
      return this?.firstWhere((e) {
        try {
          return block(e);
        } catch (_) {
          return false;
        }
      });
    } catch (_) {
      return null;
    }
  }

  T? findLast(bool Function(T) block) {
    try {
      return this?.lastWhere((element) {
        try {
          return block(element);
        } on Exception catch (e) {
          return false;
        }
      });
    } on Exception catch (e) {
      return null;
    }
  }

  bool equal(List<T>? a, {bool Function(T a, T b)? compare}) {
    if (a == null || this == null || a.length != this!.length) {
      return false;
    }
    if (compare != null) {
      for (int i = 0; i < a.length; i++) {
        if (!compare(a[i], this![i])) {
          return false;
        }
      }
    } else {
      for (int i = 0; i < a.length; i++) {
        if (a[i] != this![i]) {
          return false;
        }
      }
    }
    return true;
  }

  List<T> getMax(int maximum) {
    return this?.sublist(0, min(maximum, this!.length)) ?? [];
  }

  String joinText<E>({
    String append = '',
    String separator = ',',
    String overflow = '...',
    int? maxItem,
    int maxLength = 40,
    String Function(T e)? textMap,
  }) {
    var sTextMap = textMap ?? ((T e) => e.toString());
    List<String>? list = this.mapNotNull((e) {
      return "$append${sTextMap(e)}";
    });
    if (list == null || list.isEmpty) {
      return '';
    }
    var sMax = maxItem ?? list.length;
    if (sMax > list.length) {
      sMax = list.length;
    }
    var sb = StringBuffer();
    sb.write(list.sublist(0, sMax).join(separator));
    var rem = list.length - sMax;
    if (rem > 0) {
      sb.write('$overflow+$rem');
    }
    var s = sb.toString();
    if (s.length > maxLength) {
      return joinText(
        append: append,
        separator: separator,
        maxItem: sMax - 1,
        maxLength: maxLength,
        textMap: textMap,
      );
    }
    return s;
  }

  bool isValidIndex(int index) {
    return index >= 0 && index < (this?.length ?? 0);
  }

  List<T> search(String? keyword, {String? Function(T element)? getKeyword}) {
    if (this == null || this!.isEmpty || keyword == null || keyword.isEmpty) {
      return this ?? [];
    }
    var s = keyword.toLowerCase();
    var block = getKeyword ?? (e) => e.toString();
    return this!.where((e) => block(e)?.toLowerCase().contains(s) == true).toList();
  }
  bool hasSameElement(List b) {
    if (this == null) return false;
    var a = this!;
    if (b.length > 100) {
      //better for large lists
      final setA = a.toSet();
      final setB = b.toSet();
      return setA.intersection(setB).isNotEmpty;
    } else {
      return a.any((element) => b.contains(element));
    }
  }


}


extension IterableExtension<T> on Iterable<T>? {
  bool get isNullOrEmpty => this == null || this is! List || this!.isEmpty;

  bool get notNullOrEmpty => this != null && this is List && this!.isNotEmpty;
}