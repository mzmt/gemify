module ApplicationHelper
  def default_meta_tags
    {
      title: 'gemify.me',
      reverse: true,
      charset: 'utf-8',
      description: 'gemify.meでゲームの予定を公開しましょう',
      keywords: 'game calender',
      canonical: request.original_url,
      icon: [
        { href: @user&.icon_url || image_url('logo/icon.png') }
        # { href: image_url('logo/icon.png'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/png' }
      ],
      og: {
        site_name: 'gemify.me',
        title: 'gemify.me',
        description: @user&.name || 'gemify.meでゲームの予定を公開しましょう',
        type: 'website',
        url: request.original_url,
        image: @user&.icon_url || image_url('logo/icon.png'),
        locale: 'ja_JP'
      },
      twitter: {
        card: 'summary'
      }
    }
  end
end
