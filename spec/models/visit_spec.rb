# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Visit, type: :model do
  shared_examples 'Raises validation error' do
    it 'will raise validation error' do
      expect { visit }.to raise_error(ActiveRecord::RecordInvalid)
    end
  end

  describe 'visit_factory' do
    let!(:visit) { FactoryBot.create(:visit) }

    it 'should be valid' do
      expect(visit).to be_valid
    end

    it "shouldn't be in the past" do
      expect(visit.date).to be > visit.created_at
    end

    it 'should has master' do
      expect(visit.master).not_to be nil
    end

    it 'should has service' do
      expect(visit.service).not_to be nil
    end

    it 'should has master which has service skill' do
      expect(visit.master.services).to include visit.service
    end

    it 'should contain a record with master & service id' do
      expect(visit.id).to eq(ServiceVisit.find_by(visit_id: visit).visit_id)
    end
  end

  context "visit service doesn't match to the master's service" do
    let(:service) { FactoryBot.create(:service, :coloring) }
    let(:master) { FactoryBot.create(:master, :coloring) }
    let(:service) { FactoryBot.create(:service, :women_haircut) }
    let(:visit) { FactoryBot.create(:visit, service_id: service.id, master: master) }

    # include_examples 'Raises validation error'
    it 'will raise validation error' do
      expect { visit }.to raise_error(ActiveRecord::RecordInvalid)
    end
  end

  context "visit date cann't be in the past" do
    let(:date) { 10.days.ago }
    let(:visit) { FactoryBot.create(:visit, :women_haircut, date: date) }

    include_examples 'Raises validation error'
  end

  context 'edit is possible only when state is sent' do
    let(:visit) { FactoryBot.create(:visit) }

    it 'update will not happen' do
      visit.accepted!      
      expect { visit.update(addition: "") }.not_to change { visit }
    end
  end
end
