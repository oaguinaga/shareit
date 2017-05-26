module UsersHelper
  def are_there_post_for_user?(user)
    return user.posts.empty?  ? "#{user.name} has not submitted any posts yet." : (render partial: 'posts/post', collection: user.posts)
  end
end
