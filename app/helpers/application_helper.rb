module ApplicationHelper
  def current_year
    Time.current.year
  end

  def github_link_html
    link_to 'Project Test Guru', 'https://github.com/Kadina1988/Thinknetica_test',
            target: :_blank,
            rel: { nofollow: true, noopener: true }
  end
end
