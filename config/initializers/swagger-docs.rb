Swagger::Docs::Config.base_api_controller = ActionController::API
Swagger::Docs::Config.register_apis({
    '1.0' => {:controller_base_path => '', :api_file_path => 'public', :base_path => 'http://104.236.57.121:3000'}
})