@[Link(ldflags: "#{__DIR__}/uname.so")]

lib UnameLib
  fun uname_sysname() : LibC::Char*
  fun uname_nodename(): LibC::Char*
  fun uname_release() : LibC::Char*
  fun uname_machine() : LibC::Char*
  fun uname_version() : LibC::Char*
end

class Uname
  VERSION = "1.0.2"

  def self.sysname
    String.new(UnameLib.uname_sysname)
  end

  def self.nodename
    String.new(UnameLib.uname_nodename)
  end

  def self.release
    String.new(UnameLib.uname_release)
  end

  def self.machine
    String.new(UnameLib.uname_machine)
  end

  def self.version
    String.new(UnameLib.uname_version)
  end
end

