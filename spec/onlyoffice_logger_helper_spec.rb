# frozen_string_literal: true

require 'spec_helper'

describe OnlyofficeLoggerHelper do
  let(:simple_string) { 'Hello' }

  it 'Output simple log message' do
    expect { described_class.log(simple_string) }
      .to output(/#{simple_string}/).to_stdout
  end

  it 'Output have file name in message' do
    expect { described_class.log(simple_string) }
      .to output(/\[#{File.basename(__FILE__, '.*')}\]/).to_stdout
  end

  it 'Output have color if it specified' do
    expect { described_class.log(simple_string, 31) }
      .to output(/31/).to_stdout
  end

  it 'Output have code green color if it specified' do
    expect { described_class.green_log(simple_string) }
      .to output(/#{described_class::GREEN_COLOR_CODE}/o).to_stdout
  end

  it 'Output have code red color if it specified' do
    expect { described_class.red_log(simple_string) }
      .to output(/#{described_class::RED_COLOR_CODE}/o).to_stdout
  end

  it 'Output simple log message with green color' do
    expect { described_class.green_log(simple_string) }
      .to output(/#{simple_string}/).to_stdout
  end

  it 'Output simple log message with red color' do
    expect { described_class.red_log(simple_string) }
      .to output(/#{simple_string}/).to_stdout
  end
end
