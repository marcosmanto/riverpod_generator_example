// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$labelHash() => r'8b8e7f3c732c7a1ed9b6bb6222196fe942d20897';

/// See also [label].
@ProviderFor(label)
final labelProvider = AutoDisposeProvider<String>.internal(
  label,
  name: r'labelProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$labelHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef LabelRef = AutoDisposeProviderRef<String>;
String _$fetchItemsHash() => r'c5dfe5a574bebb0a2c73615bc5572ac7aec9f942';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [fetchItems].
@ProviderFor(fetchItems)
const fetchItemsProvider = FetchItemsFamily();

/// See also [fetchItems].
class FetchItemsFamily extends Family<AsyncValue<List<String>>> {
  /// See also [fetchItems].
  const FetchItemsFamily();

  /// See also [fetchItems].
  FetchItemsProvider call({
    required int page,
  }) {
    return FetchItemsProvider(
      page: page,
    );
  }

  @override
  FetchItemsProvider getProviderOverride(
    covariant FetchItemsProvider provider,
  ) {
    return call(
      page: provider.page,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'fetchItemsProvider';
}

/// See also [fetchItems].
class FetchItemsProvider extends AutoDisposeFutureProvider<List<String>> {
  /// See also [fetchItems].
  FetchItemsProvider({
    required int page,
  }) : this._internal(
          (ref) => fetchItems(
            ref as FetchItemsRef,
            page: page,
          ),
          from: fetchItemsProvider,
          name: r'fetchItemsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchItemsHash,
          dependencies: FetchItemsFamily._dependencies,
          allTransitiveDependencies:
              FetchItemsFamily._allTransitiveDependencies,
          page: page,
        );

  FetchItemsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
  }) : super.internal();

  final int page;

  @override
  Override overrideWith(
    FutureOr<List<String>> Function(FetchItemsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchItemsProvider._internal(
        (ref) => create(ref as FetchItemsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<String>> createElement() {
    return _FetchItemsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchItemsProvider && other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchItemsRef on AutoDisposeFutureProviderRef<List<String>> {
  /// The parameter `page` of this provider.
  int get page;
}

class _FetchItemsProviderElement
    extends AutoDisposeFutureProviderElement<List<String>> with FetchItemsRef {
  _FetchItemsProviderElement(super.provider);

  @override
  int get page => (origin as FetchItemsProvider).page;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
