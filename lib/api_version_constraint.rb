class ApiVersionConstraint
    def initialize(options) #construtor
        @version = options[:version]
        @default = options[:defaul]
    end

    def matches?(req) # o ? retorna true ou false
        @default || req.headers['Accept'].include?("application/vnd.taskmanager.v#{@version}")
    end
end 