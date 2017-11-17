# frozen_string_literal: true

# # Domain Constraint
class DomainConstraint
  def initialize(domain)
    @domain = domain
  end

  def matches?(request)
    @domain == request.host
    # @domains.include? request.host
    # might be a better option
  end
end
