require 'spec_helper'

module RoleMaster
	describe Role do
		describe '#initialize' do
			subject { RoleMaster::Role.new('foo') }
			specify { subject.name.should eql('foo') }
			specify { subject.default_permission.should eql(:deny) }
			it { should be_frozen }
		end
		
		describe '#may_by_default?' do
			it "returns true if the default permission is :allow" do
				role = Role.new('foo', default_permission: :allow)
				role.may_by_default?.should be_true
			end
			it "returns false if the default permission is :deny" do
				role = Role.new('foo', default_permission: :deny)
				role.may_by_default?.should be_false
			end
		end
		
		describe '==' do
			it "returns true if the names and permissions match" do
				r1 = Role.new('foo')
				r2 = Role.new('foo')
				(r1 == r2).should be_true
			end
			it "returns false if the names and permissions don't match" do
				r1 = Role.new('foo')
				r2 = Role.new('bar')
				(r1 == r2).should be_false
			end
		end
				
		describe '<=>' do
			it "returns true if the objects have the same name" do
				r1 = Role.new('foo')
				r2 = Role.new('foo')
				(r1 <=> r2).should be_true
			end
			it "returns the order of names if the objects don't have the same name" do
				r1 = Role.new('foo')
				r2 = Role.new('bar')
				(r1 <=> r2).should eql(1)
				(r2 <=> r1).should eql(-1)
			end
		end
		
		describe 'to_s' do
			it "returns a humanized version" do
				r1 = Role.new('active_person')
				r1.to_s.should eql 'Active person'
			end
		end
		
	end
end