class Contact < ApplicationRecord
	belongs_to :kind
  has_many :phones
  has_one :address

  accepts_nested_attributes_for :phones, allow_destroy: true
  accepts_nested_attributes_for :address, update_only: true 

	# def author
	# 	"Marcela Moura"
	# end

  def to_br
    {
     name: self.name,
     email: self.email,
     birthday: self.birthday
    } 
  end



 #  def kind_description
 #    self.kind.description
 #  end

 #  def as_json(options={})
 #    super(root: true,
 #          methods: [:author, :kind_description]
 #          # include: {kind: {only: :description}}
 #          )
 #  end
end
