
require_dependency Rails.root.join("app", "models", "verification", "residence").to_s

class Verification::Residence
  clear_validators!

  validates :date_of_birth, presence: true
  validates :terms_of_service, acceptance: { allow_nil: false }

  validate :allowed_age

  private

    def retrieve_census_data
      # Empty method because we don't check against census
    end

    def postal_code_is_allowed
      # Empty method because we don't check against postcode
    end

    def valid_postal_code?
      # Empty method because we don't check against postcode
    end

    def document_number_uniqueness_if_present
      # Empty method because we don't check against document
    end
end