# To play nice with EmberJS Data
# Following recommendations from this guide:
# http://wyeworks.com/blog/2015/6/30/how-to-build-a-rails-5-api-only-and-ember-application
# ActiveModel::Serializer.config.adapter = :json
ActiveModel::Serializer.config.adapter = ActiveModel::Serializer::Adapter::JsonApi