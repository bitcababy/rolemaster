module RoleMaster
	class Role
		attr_accessor :name, :default_permission
		
	  def initialize(name, options={})
	    @name = name
      @default_permission = options[:default_permission] == :allow ? :allow : :deny
			freeze
		end
		
		def may_by_default?
		  @default_permission == :allow
    end

		def ==(other)
			name == other.name && default_permission == other.default_permission
		end

	  def <=>(other)
      self.name <=> other.name
    end

		def to_s
			name.to_s.humanize
		end
 
	end
end
