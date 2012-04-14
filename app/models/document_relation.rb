class DocumentRelation < ActiveRecord::Base
  belongs_to :document
  belongs_to :doc_identity

  validates :document_id, presence: true
  validates :doc_identity, presence: true
  validates :doc_identity_id, uniqueness: { scope: :document_id }

  def readonly?
    !new_record?
  end
end
