# == Schema Information
#
# Table name: companies
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  url        :string
#  address    :string
#  logo       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Company < ApplicationRecord
  validates :name, presence: true

  validates :url,
            allow_blank: true,
            format: /\A#{URI.regexp(%w[http https])}\z/
end
