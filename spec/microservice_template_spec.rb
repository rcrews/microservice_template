# frozen_string_literal: true

RSpec.describe MicroserviceTemplate do
  it 'has a version number' do
    expect(MicroserviceTemplate::VERSION).not_to be_nil
  end
end
