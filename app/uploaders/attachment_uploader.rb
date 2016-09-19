# encoding: utf-8

class AttachmentUploader < CarrierWave::Uploader::Base
  # Choose what kind of storage to use for this uploader:
  storage :file if Rails.env.development?
  # storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_white_list
    %w(pdf)
  end
end
