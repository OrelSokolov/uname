require "./spec_helper"
require "spec2"

Spec2.describe Uname do
  it "machine" do
    expect(Uname.machine.empty?).to be_false
  end

  it "release" do
    expect(Uname.release.empty?).to be_false
  end

  it "version" do
    expect(Uname.version.empty?).to be_false
  end

  it "sysname" do
    expect(Uname.sysname.empty?).to be_false
  end

  it "nodename" do
    expect(Uname.nodename.empty?).to be_false
  end
end
