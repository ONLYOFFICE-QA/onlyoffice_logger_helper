# frozen_string_literal: true

require 'spec_helper'

describe OnlyofficeLoggerHelper, '.sleep_and_log' do
  let(:reason) { 'Test startup' }
  let(:sleep_and_log_call) { described_class.sleep_and_log(reason, 1) }

  it 'Calling .sleep_and_log will output start of sleep message' do
    expect { sleep_and_log_call }
      .to output(/Start sleeping for/).to_stdout
  end

  it 'Calling .sleep_and_log will output end of sleep message' do
    expect { sleep_and_log_call }
      .to output(/Stopped sleeping for/).to_stdout
  end

  it 'Calling .sleep_and_log will output reason' do
    expect { sleep_and_log_call }
      .to output(/#{reason}/).to_stdout
  end
end
