class Store < ActiveRecord::Base
    has_many :receipts
    has_many :items

    validates :user_id, uniqueness: {
        scope: [:name, :unit_or_building, :street_number, :street_name, :suburb, :postcode, :city],
        error: "This store already exists"
    }

    def name_and_suburb
        "#{name}, #{suburb}"
    end

end