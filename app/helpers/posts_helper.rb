module PostsHelper
  def post_author(post)
    content_tag(:h6, 'Written by: ' + post.user.name, class: ['card-subtitle mb-2 text-muted']) if logged_in?
  end
end
