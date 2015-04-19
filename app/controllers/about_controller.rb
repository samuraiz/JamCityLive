class AboutController < ApplicationController
  require 'google/api_client';
  client = Google::APIClient.new

  def show

  end

  #sample codes for google drive
  def print_file(client, file_id)
    drive = client.discovered_api('drive', 'v2')
    result = client.execute(
        :api_method => @drive.files.get,
        :parameters => { 'fileId' => file_id })
    if result.status == 200
      file = result.data
      puts "Title: #{file.title}"
      puts "Description: #{file.description}"
      puts "MIME type: #{file.mime_type}"
    else
      puts "An error occurred: #{result.data['error']['message']}"
    end
  end

  def download_file(client, file)
    if file.download_url
      result = client.execute(:uri => file.download_url)
      if result.status == 200
        return result.body
      else
        puts "An error occurred: #{result.data['error']['message']}"
        return nil
      end
    else
      # The file doesn't have any content stored on Drive.
      return nil
    end
  end

end