class ContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :birthday

  belongs_to :kind do
    link(:related) {contact_kind_url(object.id)}
  end
  has_many :phones do
    link(:related) {contact_phones_url(object.id)}
  end
  has_one :address do
    link(:related) {contact_address_url(object.id)}
  end

  link(:self) {contact_url(object.id)}
  

  def attributes(*args)
    h = super(*args)
    h[:birthday] = (I18n.l(object.birthday) unless object.birthday.blank?)
    h
  end

  meta do
    {
      author: 'Marcela'
    }
  end
end
