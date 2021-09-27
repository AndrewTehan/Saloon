# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Master, type: :model do
  describe "valid master factory" do
    let(:master) { FactoryBot.create(:master) }

    context "is valid" do
      it "with valid attributes" do
        expect(master).to be_valid
      end 

      it 'when has any skills' do
        expect(FactoryBot.create(:master).services).not_to be_empty
      end
    end
  end

  it 'is unvalid without service' do
    expect{ FactoryBot.create(:master, service_id: nil) }.to raise_error(ActiveRecord::RecordInvalid)
  end
end
