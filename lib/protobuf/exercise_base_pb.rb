# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: exercise_base.proto

require 'google/protobuf'

require 'types_pb'
require 'structures_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("exercise_base.proto", :syntax => :proto2) do
    add_message "polar_data.PbExerciseCounters" do
      optional :sprint_count, :uint32, 1
    end
    add_message "polar_data.PbExerciseBase" do
      required :start, :message, 1, "PbLocalDateTime"
      required :duration, :message, 2, "PbDuration"
      required :sport, :message, 3, "PbSportIdentifier"
      optional :distance, :float, 4
      optional :calories, :uint32, 5
      optional :training_load, :message, 6, "PbTrainingLoad"
      optional :running_index, :message, 9, "PbRunningIndex"
      optional :ascent, :float, 10
      optional :descent, :float, 11
      optional :latitude, :double, 12
      optional :longitude, :double, 13
      optional :place, :string, 14
      optional :exercise_counters, :message, 16, "polar_data.PbExerciseCounters"
      optional :speed_calibration_offset, :float, 17, default: 0
      optional :walking_distance, :float, 18
      optional :walking_duration, :message, 19, "PbDuration"
    end
  end
end

module PolarData
  PbExerciseCounters = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_data.PbExerciseCounters").msgclass
  PbExerciseBase = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("polar_data.PbExerciseBase").msgclass
end