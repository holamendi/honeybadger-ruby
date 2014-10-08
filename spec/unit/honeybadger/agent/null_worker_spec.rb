require 'honeybadger/agent/worker'
require 'honeybadger/agent/null_worker'

describe Honeybadger::Agent::NullWorker do
  Honeybadger::Agent::Worker.instance_methods.each do |method|
    it "responds to #{method}" do
      expect(subject).to respond_to(method)
      expect(subject.method(method).arity).to eq Honeybadger::Agent::Worker.instance_method(method).arity
    end
  end
end
