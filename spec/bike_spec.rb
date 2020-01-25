require 'bike'

describe Bike do
    it 'responds to the method working?' do
        is_expected.to respond_to(:working?)
    end

    it 'allows the user to report when broken' do
        subject.report_broken
        expect(subject.status).to eq "broken"
    end

    it 'tells the bike is not working when broken' do
        subject.report_broken
        expect(subject.working?).to eq false
    end
end