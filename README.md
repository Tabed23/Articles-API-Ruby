# to run the app
```
rails server
```

* bundle lock --add-platform x86-mingw32 x86-mswin32 x64-mingw32 java

* bundle install

# Create Endpoints
* rails g controller api/v1/articles index show create update destroy

# Create Models
* rails g model atricle title:string body:string author:string

# Create Database in sqlite database
* rake db:create
# Migration of database
* rake db:migrate

# Make Routes endpoints
```
 namespace :api do
    namespace :v1 do
      resources :articles, only: [:index, :show, :create, :update, :destroy]
    end
  end
```
