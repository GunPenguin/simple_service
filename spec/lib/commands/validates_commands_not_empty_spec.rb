require 'spec_helper'

describe SimpleService::ValidatesCommandsNotEmpty do

  class DummyCommand < SimpleService::Command
    def call; true; end
  end

  context '#call' do

    it 'raises error when commands are not defined' do
      expect {
        SimpleService::ValidatesCommandsNotEmpty.new(provided_commands: nil).call
      }.to raise_error(
        SimpleService::OrganizerCommandsNotDefinedError,
        'This Organizer class does not contain any command definitions'
      )
    end

    it 'does not raise error when commands are defined' do
      expect {
        SimpleService::ValidatesCommandsNotEmpty.new(provided_commands: [DummyCommand]).call
      }.to_not raise_error
    end

  end

end
