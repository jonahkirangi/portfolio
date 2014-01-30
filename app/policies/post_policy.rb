class PostPolicy
  attr_accessor :user, :post

  def initialize(user, post)
    @user = user
    @post = post
  end

  def publish?
    @user.editor?
  end

  def create?
    @user.role == "editor"
  end

  def update?
    if user.present?
      return true if user.editor?
      user.id == post.author_id
    end
  end

  def destroy?
    if user.present?
    return true if user.editor?
    user.id == post.author_id
    end
  end
end
