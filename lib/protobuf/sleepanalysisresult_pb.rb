# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: sleepanalysisresult.proto

require 'google/protobuf'

require 'types_pb'
require 'structures_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("sleepanalysisresult.proto", :syntax => :proto2) do
    add_message "polar_data.PbSleepWakePhase" do
      required :seconds_from_sleep_start, :uint32, 1
      required :sleepwake_state, :enum, 2, "polar_data.PbSleepWakeState"
    end
    add_message "polar_data.PbSleepAnalysisResult" do
      required :sleep_start_time, :message, 1, "PbLocalDateTime"
      required :sleep_end_time, :message, 2, "PbLocalDateTime"
      required :last_modified, :message, 3, "PbSystemDateTime"
      required :sleep_goal_minutes, :uint32, 4
      repeated :sleepwake_phases, :message, 5, "polar_data.PbSleepWakePhase"
      repeated :snooze_time, :message, 6, "PbLocalDateTime"
      optional :alarm_time, :message, 7, "PbLocalDateTime"
      optional :sleep_start_offset_seconds, :int32, 8, default: 0
      optional :sleep_end_offset_seconds, :int32, 9, default: 0
      optional :user_sleep_rating, :enum, 10, "polar_data.PbSleepUserRating"
      optional :recording_device, :message, 11, "PbDeviceId"
      optional :battery_ran_out, :bool, 12, default: false
    end
    add_enum "polar_data.PbSleepWakeState" do
      value :PB_WAKE, -2
      value :PB_REM, -3
      value :PB_NONREM1, -4
      value :PB_NONREM2, -5
      value :PB_NONREM3, -6
    end
    add_enum "polar_data.PbSleepUserRating" do
      value :PB_SLEPT_UNDEFINED, -1
      value :PB_SLEPT_POORLY, 0
      value :PB_SLEPT_SOMEWHAT_POORLY, 1
      value :PB_SLEPT_NEITHER_POORLY_NOR_WELL, 2
      value :PB_SLEPT_SOMEWHAT_WELL, 3
      value :PB_SLEPT_WELL, 4
    end
  end
end

module PolarData
  PbSleepWakePhase = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_data.PbSleepWakePhase").msgclass
  PbSleepAnalysisResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_data.PbSleepAnalysisResult").msgclass
  PbSleepWakeState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_data.PbSleepWakeState").enummodule
  PbSleepUserRating = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_data.PbSleepUserRating").enummodule
end
