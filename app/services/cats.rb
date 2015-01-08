module Cats
  def self.sample
    # Fetch the list
    response = HTTParty.get 'http://edgecats.net/all'

    # Grab relevant links
    links = Nokogiri::HTML(response.body).css('a').reduce [] do |acc, l|
      next unless l[:href] =~ /edgecats.net\/cats/
      acc << l[:href]
    end

    # Pick a random link
    links.sample
  end

  def self.display! source_link
    file_name = source_link.split('/').last

    # Download the picture, if needed
    download_path = Rails.root.join 'public', 'cats', file_name
    unless File.exists? download_path
      Rails.logger.info "Downloading '#{source_link}' => '#{download_path}'"
      File.open download_path, 'wb' do |f|
        f.write HTTParty.get(source_link).parsed_response
      end
    end

    # 'Serve' the picture
    system "open -a Safari #{download_path}"
  end

  def self.execute_with_timeout! command, timeout=5
    # TODO: fix or silence the stderr msgs here
    pipe = IO.popen command, err: :out
    begin
      status = Timeout.timeout timeout do
        Process.waitpid2 pipe.pid
      end
    rescue Timeout::Error
      Process.kill 'KILL', pipe.pid
    end
    pipe.close
  end
end
