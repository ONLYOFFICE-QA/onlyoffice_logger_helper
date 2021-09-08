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

  it 'Output have code green color if it specified' do
    expect { described_class.green_log('Hello') }
      .to output(/#{described_class::GREEN_COLOR_CODE}/o).to_stdout
  end

  it 'Output have code red color if it specified' do
    expect { described_class.red_log('Hello') }
      .to output(/#{described_class::RED_COLOR_CODE}/o).to_stdout
  end

  it 'Output simple log message with green color' do
    expect { described_class.green_log('Hello') }
      .to output(/Hello/).to_stdout
  end

  it 'Output simple log message with red color' do
    expect { described_class.red_log('Hello') }
      .to output(/Hello/).to_stdout
  end
end
