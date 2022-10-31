[1mdiff --git a/app/views/devise/sessions/new.html.erb b/app/views/devise/sessions/new.html.erb[m
[1mindex 9c989f6..3bfeb28 100644[m
[1m--- a/app/views/devise/sessions/new.html.erb[m
[1m+++ b/app/views/devise/sessions/new.html.erb[m
[36m@@ -1,27 +1,29 @@[m
[31m-<h2>Log in</h2>[m
[32m+[m[32m<div class="container">[m
[32m+[m[32m  <div class="row no-gutters">[m
[32m+[m[32m    <div class="col-md-5 col-sm-10 mx-2 mx-sm-auto text-center shadow-lg rounded px-0 my-5">[m
[32m+[m[32m      <h5 class="text-dark bg-light py-4 mb-0">ユーザーログイン</h5>[m
[32m+[m[32m      <div class="form-body p-4">[m
 [m
[31m-<%= form_with model: @user, url: user_session_path do |f| %>[m
[32m+[m[32m        <div class="mx-auto text-center">[m
[32m+[m[32m          <p>ユーザー名と<br>パスワードを入力してください。</p>[m
[32m+[m[32m        </div>[m
 [m
[31m-  <div class="field">[m
[31m-    <%= f.label :email %><br />[m
[31m-    <%= f.email_field :email, autofocus: true, autocomplete: "email" %>[m
[31m-  </div>[m
[31m-[m
[31m-  <div class="field">[m
[31m-    <%= f.label :password %><br />[m
[31m-    <%= f.password_field :password, autocomplete: "current-password" %>[m
[31m-  </div>[m
[31m-[m
[31m-  <% if devise_mapping.rememberable? %>[m
[31m-    <div class="field">[m
[31m-      <%= f.check_box :remember_me %>[m
[31m-      <%= f.label :remember_me %>[m
[32m+[m[32m        <%= form_with model: @user, url: user_session_path, local: true do |f| %>[m
[32m+[m[32m          <div class="input-group mb-3">[m
[32m+[m[32m            <div class="input-group-prepend">[m
[32m+[m[32m              <span class="input-group-text" aria-hidden="true"><i class="fas fa-user"></i></span>[m
[32m+[m[32m            </div>[m
[32m+[m[32m            <%= f.text_field :name, autofocus: true, placeholder:"ユーザー名" %>[m
[32m+[m[32m          </div>[m
[32m+[m[32m          <div class="input-group mb-3">[m
[32m+[m[32m            <div class="input-group-prepend">[m
[32m+[m[32m              <span class="input-group-text" aria-hidden="true"><i class="fas fa-lock"></i></span>[m
[32m+[m[32m            </div>[m
[32m+[m[32m            <%= f.password_field :password, autocomplete: "off", class:"form-control", id:"inputPassword", placeholder:"パスワード" %>[m
[32m+[m[32m          </div>[m
[32m+[m[32m          <%= f.submit "サインイン", class:"btn btn-lg btn-block btn-info mt-5" %>[m
[32m+[m[32m        <% end %>[m
[32m+[m[32m      </div>[m
     </div>[m
[31m-  <% end %>[m
[31m-[m
[31m-  <div class="actions">[m
[31m-    <%= f.submit "Log in" %>[m
   </div>[m
[31m-<% end %>[m
[31m-[m
[31m-<%= render "devise/shared/links" %>[m
[32m+[m[32m</div>[m
\ No newline at end of file[m
[1mdiff --git a/config/initializers/devise.rb b/config/initializers/devise.rb[m
[1mindex 5c70b5f..475d139 100644[m
[1m--- a/config/initializers/devise.rb[m
[1m+++ b/config/initializers/devise.rb[m
[36m@@ -46,7 +46,7 @@[m [mDevise.setup do |config|[m
   # session. If you need permissions, you should implement that in a before filter.[m
   # You can also supply a hash where the value is a boolean determining whether[m
   # or not authentication should be aborted when the value is not present.[m
[31m-  # config.authentication_keys = [:email][m
[32m+[m[32m  config.authentication_keys = [:name][m
 [m
   # Configure parameters from the request object used for authentication. Each entry[m
   # given should be a request method and it will automatically be passed to the[m
