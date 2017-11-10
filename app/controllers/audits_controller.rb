class AuditsController < ApplicationController
	layout 'template'
	def index
		@audits = Audit.all
	end
end
