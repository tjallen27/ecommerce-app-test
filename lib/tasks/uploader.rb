class Uploader

  def self.split_base64(string)
    if string.present? && string.match(%r{^data:(.*?);(.*?),(.*)$})
      return { type: $1, encoding: $2, data: $3, extension: $1.split('/')[1] }
    else
      return nil
    end
  end

  def self.upload(params)

    audio_data = split_base64(params[:base64])

    if audio_data
      base64_data = audio_data[:data]
      audio = Base64.decode64(base64_data)

      temp_img_file = Tempfile.new("")
      temp_img_file.binmode
      temp_img_file << audio
      temp_img_file.rewind

      img_params = {
        filename: "#{SecureRandom.hex}.#{audio_data[:extension]}",
        type: audio_data[:type],
        tempfile: temp_img_file
      }

      uploaded_file = ActionDispatch::Http::UploadedFile.new(img_params)
      params[:audio] = uploaded_file
      params.delete(:base64)
    end
    return params
  end

end
