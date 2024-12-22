class HealthRecord {
  final int heartRate;
  final int stepCount;
  final DateTime timestamp;

  HealthRecord({required this.heartRate, required this.stepCount, required this.timestamp});

  Map<String, dynamic> toMap() {
    return {
      'heartRate': heartRate,
      'stepCount': stepCount,
      'timestamp': timestamp.toIso8601String(),
    };
  }

  factory HealthRecord.fromMap(Map<String, dynamic> map) {
    return HealthRecord(
      heartRate: map['heartRate'],
      stepCount: map['stepCount'],
      timestamp: DateTime.parse(map['timestamp']),
    );
  }
}