require 'spec_helper'

describe Post do
  it { should have_many :comments }
  it { should have_many :votes }
end

describe '.votes_total' do

	let(:vote) {double :vote} 

	it 'should correctly calculate positive votes count' do
		post = Post.create(title: 'Hello world')
		post.stub upvotes: [vote, vote]
		post.stub downvotes: [vote]
		expect(post.votes_total).to eq 1
	end

	it 'should correctly calculate positive votes count' do
		post = Post.create(title: 'Hello world')
		post.stub upvotes: [vote]
		post.stub downvotes: [vote, vote]
		expect(post.votes_total).to eq -1
	end

	it 'should return nil if there are no votes' do
		post = Post.create(title: 'Hello world')
	  post.stub upvotes: []
		post.stub downvotes: []
		expect(post.votes_total).to be_nil
	end

end
