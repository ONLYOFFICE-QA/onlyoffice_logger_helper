# frozen_string_literal: true

require 'spec_helper'

describe OnlyofficeLoggerHelper do
  it 'Output simple log message' do
    expect { described_class.log('Hello') }
      .to output(/Hello/).to_stdout
  end

  it 'Output have file name in message' do
    expect { described_class.log('Hello') }
      .to output(/\[#{File.basename(__FILE__, '.*')}\]/).to_stdout
  end

  it 'Output have color if it specified' do
    expect { described_class.log('Hello', 31) }
      .to output(/31/).to_stdout
  end
end
