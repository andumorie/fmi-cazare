class Document < ActiveRecord::Base
  belongs_to :accomodation
  before_destroy :delete_files, prepend: true

  private

  def delete_files
    File.delete(File.join('uploads', self.accomodation.user.uid.to_s, self.name)) if File.exist?(File.join('uploads', self.accomodation.user.uid.to_s, self.name))
  end
end
