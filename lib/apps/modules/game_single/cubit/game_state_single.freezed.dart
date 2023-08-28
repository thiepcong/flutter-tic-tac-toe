// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_state_single.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GameStateSingle {
  List<List<String>> get board => throw _privateConstructorUsedError;
  String get currentPlayer => throw _privateConstructorUsedError;
  String get winner => throw _privateConstructorUsedError;
  bool get checkWinner => throw _privateConstructorUsedError;
  bool get checkDraw => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameStateSingleCopyWith<GameStateSingle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateSingleCopyWith<$Res> {
  factory $GameStateSingleCopyWith(
          GameStateSingle value, $Res Function(GameStateSingle) then) =
      _$GameStateSingleCopyWithImpl<$Res, GameStateSingle>;
  @useResult
  $Res call(
      {List<List<String>> board,
      String currentPlayer,
      String winner,
      bool checkWinner,
      bool checkDraw});
}

/// @nodoc
class _$GameStateSingleCopyWithImpl<$Res, $Val extends GameStateSingle>
    implements $GameStateSingleCopyWith<$Res> {
  _$GameStateSingleCopyWithImpl(this._value, this._then);

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
    Object? checkWinner = null,
    Object? checkDraw = null,
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
      checkWinner: null == checkWinner
          ? _value.checkWinner
          : checkWinner // ignore: cast_nullable_to_non_nullable
              as bool,
      checkDraw: null == checkDraw
          ? _value.checkDraw
          : checkDraw // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GameStateSingleCopyWith<$Res>
    implements $GameStateSingleCopyWith<$Res> {
  factory _$$_GameStateSingleCopyWith(
          _$_GameStateSingle value, $Res Function(_$_GameStateSingle) then) =
      __$$_GameStateSingleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<List<String>> board,
      String currentPlayer,
      String winner,
      bool checkWinner,
      bool checkDraw});
}

/// @nodoc
class __$$_GameStateSingleCopyWithImpl<$Res>
    extends _$GameStateSingleCopyWithImpl<$Res, _$_GameStateSingle>
    implements _$$_GameStateSingleCopyWith<$Res> {
  __$$_GameStateSingleCopyWithImpl(
      _$_GameStateSingle _value, $Res Function(_$_GameStateSingle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? board = null,
    Object? currentPlayer = null,
    Object? winner = null,
    Object? checkWinner = null,
    Object? checkDraw = null,
  }) {
    return _then(_$_GameStateSingle(
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
      checkWinner: null == checkWinner
          ? _value.checkWinner
          : checkWinner // ignore: cast_nullable_to_non_nullable
              as bool,
      checkDraw: null == checkDraw
          ? _value.checkDraw
          : checkDraw // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_GameStateSingle extends _GameStateSingle {
  _$_GameStateSingle(
      {final List<List<String>> board = const [
        ['', '', ''],
        ['', '', ''],
        ['', '', '']
      ],
      this.currentPlayer = 'X',
      this.winner = '',
      this.checkWinner = false,
      this.checkDraw = false})
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
  @JsonKey()
  final bool checkWinner;
  @override
  @JsonKey()
  final bool checkDraw;

  @override
  String toString() {
    return 'GameStateSingle(board: $board, currentPlayer: $currentPlayer, winner: $winner, checkWinner: $checkWinner, checkDraw: $checkDraw)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameStateSingle &&
            const DeepCollectionEquality().equals(other._board, _board) &&
            (identical(other.currentPlayer, currentPlayer) ||
                other.currentPlayer == currentPlayer) &&
            (identical(other.winner, winner) || other.winner == winner) &&
            (identical(other.checkWinner, checkWinner) ||
                other.checkWinner == checkWinner) &&
            (identical(other.checkDraw, checkDraw) ||
                other.checkDraw == checkDraw));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_board),
      currentPlayer,
      winner,
      checkWinner,
      checkDraw);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GameStateSingleCopyWith<_$_GameStateSingle> get copyWith =>
      __$$_GameStateSingleCopyWithImpl<_$_GameStateSingle>(this, _$identity);
}

abstract class _GameStateSingle extends GameStateSingle {
  factory _GameStateSingle(
      {final List<List<String>> board,
      final String currentPlayer,
      final String winner,
      final bool checkWinner,
      final bool checkDraw}) = _$_GameStateSingle;
  _GameStateSingle._() : super._();

  @override
  List<List<String>> get board;
  @override
  String get currentPlayer;
  @override
  String get winner;
  @override
  bool get checkWinner;
  @override
  bool get checkDraw;
  @override
  @JsonKey(ignore: true)
  _$$_GameStateSingleCopyWith<_$_GameStateSingle> get copyWith =>
      throw _privateConstructorUsedError;
}
