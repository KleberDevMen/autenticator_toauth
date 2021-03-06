# == Schema Information
#
# Table name: request_questions
#
#  id              :bigint(8)        not null, primary key
#  desc            :string
#  value           :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  question_id     :bigint(8)
#  user_request_id :bigint(8)
#
# Indexes
#
#  index_request_questions_on_question_id      (question_id)
#  index_request_questions_on_user_request_id  (user_request_id)
#
# Foreign Keys
#
#  fk_rails_...  (question_id => questions.id)
#  fk_rails_...  (user_request_id => user_requests.id)
#

require 'test_helper'

class RequestQuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
