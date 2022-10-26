// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.list_backups_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListBackupsInput extends ListBackupsInput {
  @override
  final _i3.BackupTypeFilter? backupType;
  @override
  final String? exclusiveStartBackupArn;
  @override
  final int? limit;
  @override
  final String? tableName;
  @override
  final DateTime? timeRangeLowerBound;
  @override
  final DateTime? timeRangeUpperBound;

  factory _$ListBackupsInput(
          [void Function(ListBackupsInputBuilder)? updates]) =>
      (new ListBackupsInputBuilder()..update(updates))._build();

  _$ListBackupsInput._(
      {this.backupType,
      this.exclusiveStartBackupArn,
      this.limit,
      this.tableName,
      this.timeRangeLowerBound,
      this.timeRangeUpperBound})
      : super._();

  @override
  ListBackupsInput rebuild(void Function(ListBackupsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListBackupsInputBuilder toBuilder() =>
      new ListBackupsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListBackupsInput &&
        backupType == other.backupType &&
        exclusiveStartBackupArn == other.exclusiveStartBackupArn &&
        limit == other.limit &&
        tableName == other.tableName &&
        timeRangeLowerBound == other.timeRangeLowerBound &&
        timeRangeUpperBound == other.timeRangeUpperBound;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc(0, backupType.hashCode),
                        exclusiveStartBackupArn.hashCode),
                    limit.hashCode),
                tableName.hashCode),
            timeRangeLowerBound.hashCode),
        timeRangeUpperBound.hashCode));
  }
}

class ListBackupsInputBuilder
    implements Builder<ListBackupsInput, ListBackupsInputBuilder> {
  _$ListBackupsInput? _$v;

  _i3.BackupTypeFilter? _backupType;
  _i3.BackupTypeFilter? get backupType => _$this._backupType;
  set backupType(_i3.BackupTypeFilter? backupType) =>
      _$this._backupType = backupType;

  String? _exclusiveStartBackupArn;
  String? get exclusiveStartBackupArn => _$this._exclusiveStartBackupArn;
  set exclusiveStartBackupArn(String? exclusiveStartBackupArn) =>
      _$this._exclusiveStartBackupArn = exclusiveStartBackupArn;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  DateTime? _timeRangeLowerBound;
  DateTime? get timeRangeLowerBound => _$this._timeRangeLowerBound;
  set timeRangeLowerBound(DateTime? timeRangeLowerBound) =>
      _$this._timeRangeLowerBound = timeRangeLowerBound;

  DateTime? _timeRangeUpperBound;
  DateTime? get timeRangeUpperBound => _$this._timeRangeUpperBound;
  set timeRangeUpperBound(DateTime? timeRangeUpperBound) =>
      _$this._timeRangeUpperBound = timeRangeUpperBound;

  ListBackupsInputBuilder() {
    ListBackupsInput._init(this);
  }

  ListBackupsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _backupType = $v.backupType;
      _exclusiveStartBackupArn = $v.exclusiveStartBackupArn;
      _limit = $v.limit;
      _tableName = $v.tableName;
      _timeRangeLowerBound = $v.timeRangeLowerBound;
      _timeRangeUpperBound = $v.timeRangeUpperBound;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListBackupsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListBackupsInput;
  }

  @override
  void update(void Function(ListBackupsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListBackupsInput build() => _build();

  _$ListBackupsInput _build() {
    final _$result = _$v ??
        new _$ListBackupsInput._(
            backupType: backupType,
            exclusiveStartBackupArn: exclusiveStartBackupArn,
            limit: limit,
            tableName: tableName,
            timeRangeLowerBound: timeRangeLowerBound,
            timeRangeUpperBound: timeRangeUpperBound);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas