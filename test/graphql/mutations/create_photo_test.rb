require 'test_helper'

class Mutations::CreatePhotoTest < ActiveSupport::TestCase
  def perform(user: nil, **args)
    Mutations::CreatePhoto.new(object: nil, field: nil, context: {current_user: user}).resolve(args)
  end

  test 'create a new photo' do
    user = create :user

    photo = perform(
      user: user,
      width: 100,
      height: 200,
      urls: {
          regular: 'regular',
          small: 'small'
      }.as_json
    )

    assert photo.persisted?
    assert_equal photo.width, 100
    assert_equal photo.height, 200
    assert_equal photo.regularUrl, 'regular'
    assert_equal photo.smallUrl, 'small'
  end
end
