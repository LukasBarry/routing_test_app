# frozen_string_literal: true

# # Domain Constraint
class DomainConstraint
  def initialize(domain)
    @domains = [domain].flatten
  end

  def matches?(request)
    @domains.include? request.domain
    # @domains.include? request.host
    # might be a better option
  end
end
