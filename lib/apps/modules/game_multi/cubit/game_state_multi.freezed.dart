// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_state_multi.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GameStateMulti {
  List<List<String>> get board => throw _privateConstructorUsedError;
  String get currentPlayer => throw _privateConstructorUsedError;
  String get winner => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameStateMultiCopyWith<GameStateMulti> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateMultiCopyWith<$Res> {
  factory $GameStateMultiCopyWith(
          GameStateMulti value, $Res Function(GameStateMulti) then) =
      _$GameStateMultiCopyWithImpl<$Res, GameStateMulti>;
  @useResult
  $Res call({List<List<String>> board, String currentPlayer, String winner});
}

/// @nodoc
class _$GameStateMultiCopyWithImpl<$Res, $Val extends GameStateMulti>
    implements $GameStateMultiCopyWith<$Res> {
  _$GameStateMultiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? board = null,
    Object? currentPlayer = null,
    Object? winner = null,
  }) {
    return _then(_value.copyWith(
      board: null == board
          ? _value.board
          : board // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
      currentPlayer: null == currentPlayer
          ? _value.currentPlayer
          : currentPlayer // ignore: cast_nullable_to_non_nullable
              as String,
      winner: null == winner
          ? _value.winner
          : winner // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GameStateMultiCopyWith<$Res>
    implements $GameStateMultiCopyWith<$Res> {
  factory _$$_GameStateMultiCopyWith(
          _$_GameStateMulti value, $Res Function(_$_GameStateMulti) then) =
      __$$_GameStateMultiCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<List<String>> board, String currentPlayer, String winner});
}

/// @nodoc
class __$$_GameStateMultiCopyWithImpl<$Res>
    extends _$GameStateMultiCopyWithImpl<$Res, _$_GameStateMulti>
    implements _$$_GameStateMultiCopyWith<$Res> {
  __$$_GameStateMultiCopyWithImpl(
      _$_GameStateMulti _value, $Res Function(_$_GameStateMulti) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? board = null,
    Object? currentPlayer = null,
    Object? winner = null,
  }) {
    return _then(_$_GameStateMulti(
      board: null == board
          ? _value._board
          : board // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
      currentPlayer: null == currentPlayer
          ? _value.currentPlayer
          : currentPlayer // ignore: cast_nullable_to_non_nullable
              as String,
      winner: null == winner
          ? _value.winner
          : winner // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GameStateMulti extends _GameStateMulti {
  _$_GameStateMulti(
      {final List<List<String>> board = const [
        ['', '', ''],
        ['', '', ''],
        ['', '', '']
      ],
      this.currentPlayer = 'X',
      this.winner = ''})
      : _board = board,
        super._();

  final List<List<String>> _board;
  @override
  @JsonKey()
  List<List<String>> get board {
    if (_board is EqualUnmodifiableListView) return _board;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_board);
  }

  @override
  @JsonKey()
  final String currentPlayer;
  @override
  @JsonKey()
  final String winner;

  @override
  String toString() {
    return 'GameStateMulti(board: $board, currentPlayer: $currentPlayer, winner: $winner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameStateMulti &&
            const DeepCollectionEquality().equals(other._board, _board) &&
            (identical(other.currentPlayer, currentPlayer) ||
                other.currentPlayer == currentPlayer) &&
            (identical(other.winner, winner) || other.winner == winner));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_board), currentPlayer, winner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GameStateMultiCopyWith<_$_GameStateMulti> get copyWith =>
      __$$_GameStateMultiCopyWithImpl<_$_GameStateMulti>(this, _$identity);
}

abstract class _GameStateMulti extends GameStateMulti {
  factory _GameStateMulti(
      {final List<List<String>> board,
      final String currentPlayer,
      final String winner}) = _$_GameStateMulti;
  _GameStateMulti._() : super._();

  @override
  List<List<String>> get board;
  @override
  String get currentPlayer;
  @override
  String get winner;
  @override
  @JsonKey(ignore: true)
  _$$_GameStateMultiCopyWith<_$_GameStateMulti> get copyWith =>
      throw _privateConstructorUsedError;
}
