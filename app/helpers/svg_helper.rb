module SvgHelper
  def inline_svg(path)
    file = File.open("app/assets/svg/#{path}", "rb")
    raw file.read
  end
end
