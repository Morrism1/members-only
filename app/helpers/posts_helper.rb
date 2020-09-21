module PostsHelper
  def logged_in_links(post)
    return unless current_user &.== post.user

    content_tag :div do
      (link_to 'Show', post, class: 'card-link') +
        (link_to 'Edit', edit_post_path(post), class: 'card-link') +
        (link_to 'Destroy', post, method: :delete, data: { confirm: 'Are you sure?' }, class: 'card-link')
    end
  end

  def post_author(post)
    content_tag(:h6, 'Written by: ' + post.user.name, class: ['card-subtitle mb-2 text-muted']) if logged_in?
  end
end
