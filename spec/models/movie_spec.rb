require 'rails_helper'

RSpec.describe Movie, type: :model do
  it { should belong_to(:category) } # espera que tenga una relacion con categorias
  it { should validate_presence_of :name }
  it { should validate_presence_of :year }
end
