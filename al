[1mdiff --git a/app/controllers/items_controller.rb b/app/controllers/items_controller.rb[m
[1mindex 7a6206d..390afbe 100644[m
[1m--- a/app/controllers/items_controller.rb[m
[1m+++ b/app/controllers/items_controller.rb[m
[36m@@ -40,15 +40,19 @@[m [mclass ItemsController < ApplicationController[m
 [m
   def update[m
     @item = Item.find(params[:id])[m
[31m-[m
     if @item.update(item_params)[m
[31m-[m
       redirect_to item_path(@item)[m
     else[m
       render "new", status: :unprocessable_entity[m
     end[m
   end[m
 [m
[32m+[m[32m  def archive[m
[32m+[m[32m    @item = Item.find(params[:id])[m
[32m+[m[32m    @item.update(archived: true)[m
[32m+[m[32m    redirect_to item_path(@item)[m
[32m+[m[32m  end[m
[32m+[m
 [m
   #not working[m
   # def delete_image_attachment[m
[36m@@ -61,7 +65,7 @@[m [mclass ItemsController < ApplicationController[m
   private[m
 [m
   def item_params[m
[31m-    params.require(:item).permit(:size, :colour, :occasion, :category, :brand, :description, :condition, photos: [])[m
[32m+[m[32m    params.require(:item).permit(:size, :colour, :occasion, :category, :brand, :description, :condition, :archived, photos: [])[m
   end[m
 [m
 end[m
[1mdiff --git a/app/controllers/requests_controller.rb b/app/controllers/requests_controller.rb[m
[1mindex cece574..2f707c2 100644[m
[1m--- a/app/controllers/requests_controller.rb[m
[1m+++ b/app/controllers/requests_controller.rb[m
[36m@@ -44,7 +44,7 @@[m [mclass RequestsController < ApplicationController[m
   def create[m
     @request = Request.new(request_params)[m
     @request.user_id = current_user.id[m
[31m-    if @request.save && params[:request][:item_id][m
[32m+[m[32m    if @request.save && params[:request][:item_id].nil?[m
       @item = Item.find(params[:request][:item_id])[m
       @request.item = @item[m
       redirect_to request_path(@request)[m
[1mdiff --git a/app/models/chatroom.rb b/app/models/chatroom.rb[m
[1mindex 61edbe7..191f06c 100644[m
[1m--- a/app/models/chatroom.rb[m
[1m+++ b/app/models/chatroom.rb[m
[36m@@ -1,4 +1,4 @@[m
 class Chatroom < ApplicationRecord[m
   belongs_to :request[m
[31m-  has_many :messages[m
[32m+[m[32m  has_many :messages, dependent: :destroy[m
 end[m
[1mdiff --git a/app/views/items/show.html.erb b/app/views/items/show.html.erb[m
[1mindex 9893094..02a4dda 100644[m
[1m--- a/app/views/items/show.html.erb[m
[1m+++ b/app/views/items/show.html.erb[m
[36m@@ -59,7 +59,8 @@[m
   <%= link_to "Edit", edit_item_path(@item), class: "item-btn" %>[m
   <%= link_to "Return to search", items_path, class: "text-decoration-none item-btn" %>[m
 <% else %>[m
[31m-  <p> Cannot be deleted requests attached (add archive button?) </p>[m
[32m+[m
[32m+[m[32m  <%= link_to "Archive", archive_item_path(@item), class: "item-btn" %>[m
   <%= link_to "View your requests", requests_path, class: "item-btn" %>[m
   <%= link_to "Edit", edit_item_path(@item), class: "item-btn" %>[m
   <%= link_to "Return to search", items_path, class: "text-decoration-none item-btn" %>[m
[36m@@ -68,7 +69,6 @@[m
     </div>[m
   </div>[m
 </div>[m
[31m-[m
 <style>[m
 [m
 *{[m
[36m@@ -161,5 +161,8 @@[m
   color: #fff;[m
 }[m
 [m
[31m-[m
[32m+[m[32m.carousel-item{[m
[32m+[m[32m    float:none;[m
[32m+[m[32m    transition: 0.15s !important;[m
[32m+[m[32m}[m
 </style>[m
[1mdiff --git a/app/views/requests/_received_requests.html.erb b/app/views/requests/_received_requests.html.erb[m
[1mindex a8b428a..619143c 100644[m
[1m--- a/app/views/requests/_received_requests.html.erb[m
[1m+++ b/app/views/requests/_received_requests.html.erb[m
[36m@@ -21,14 +21,16 @@[m
           <p class="text-secondary">(<%= request.status %>)</p>[m
           <p><em><%= request.start_date.strftime("%b %d, %Y")%>-<%= request.end_date.strftime("%b %d, %Y")%></p></em>[m
           <p><%= request.description%><p>[m
[31m-          <div class="frame-4" style="text-decoration: none;">[m
[31m-            <%= link_to "View Item", item_path(Item.find(request.item_id)), class: "btn"  %>[m
[31m-          </div>[m
[31m-          <div class="frame-4" style="text-decoration: none;">[m
[31m-            <%= link_to "View Request", request_path(request), class: "btn" %>[m
[31m-          </div>[m
[31m-          <div class="frame-4" style="text-decoration: none;">[m
[31m-            <%= link_to "Edit Request", edit_request_path(request), class: "btn" %>[m
[32m+[m[32m          <div>[m
[32m+[m[32m            <div class="frame-4" style="text-decoration: none;">[m
[32m+[m[32m              <%= link_to "View Item", item_path(Item.find(request.item_id)), class: "btn"  %>[m
[32m+[m[32m            </div>[m
[32m+[m[32m            <div class="frame-4" style="text-decoration: none;">[m
[32m+[m[32m              <%= link_to "View Request", request_path(request), class: "btn" %>[m
[32m+[m[32m            </div>[m
[32m+[m[32m            <div class="frame-4" style="text-decoration: none;">[m
[32m+[m[32m              <%= link_to "Edit Request", edit_request_path(request), class: "btn" %>[m
[32m+[m[32m            </div>[m
           </div>[m
         </div>[m
       </div>[m
[1mdiff --git a/app/views/requests/show.html.erb b/app/views/requests/show.html.erb[m
[1mindex 6d88864..aa80a3e 100644[m
[1m--- a/app/views/requests/show.html.erb[m
[1m+++ b/app/views/requests/show.html.erb[m
[36m@@ -19,7 +19,7 @@[m
   <%= link_to "Make a suggestion", new_request_suggestion_path(@request), class: "btn btn-dark black-button" %>[m
 [m
 <% elsif @request.user_id == current_user.id && @request.status == "Open" %>[m
[31m-  <%= link_to "Cancel Request", request_path(@request), data: {turbo_method: :delete}, class: "btn"  %>[m
[32m+[m[32m  <%= link_to "Cancel Request", request_path(@request), data: {turbo_method: :delete, turbo_confirm: "Are you sure?"}, class: "btn"  %>[m
 <%# everyone%>[m
     <%# Chatroom placeholder %>[m
   <h2 class="chatbox-title">What do you think?</h2>[m
[36m@@ -45,6 +45,7 @@[m
 <%# does not work because of choice variable%>[m
 <% elsif @request.status == "Item Requested" && @request.user_id == current_user.id %>[m
   <% choice = Item.find(@request.item_id) %>[m
[32m+[m[32m  <%= link_to "Cancel Request", request_path(@request), data: {turbo_method: :delete, turbo_confirm: "Are you sure?"}, class: "btn"  %>[m
   <div>[m
     You have sent a Bclothes request to <%=User.find(choice.user_id)[:first_name]%> for:[m
     <%= cl_image_tag choice.photos.first.key, height: 300, width: 400, crop: :fill %>[m
[36m@@ -53,7 +54,7 @@[m
   </div>[m
   <%= link_to "View", item_path(choice), class: "btn" %>[m
   <%= link_to "Edit Request", edit_request_path(@request), class: "btn" %>[m
[31m-  <%= link_to "Cancel Request", request_path(@request), data: {turbo_method: :delete}, class: "btn"  %>[m
[32m+[m
 [m
 <%# request owner%>[m
 <% elsif @request.status == "Item Requested" && User.find(Item.find(@request.item_id).user_id).id == current_user.id %>[m
[1mdiff --git a/config/routes.rb b/config/routes.rb[m
[1mindex 80b1d2a..1986ae9 100644[m
[1m--- a/config/routes.rb[m
[1m+++ b/config/routes.rb[m
[36m@@ -14,6 +14,7 @@[m [mRails.application.routes.draw do[m
   get "requests", to: "requests#index", as: :all_requests[m
   post "items/:id/requests", to: "requests#create", as: :item_requests[m
   get "items/requests/:id", to: "requests#assign_item", as: :assign_item[m
[32m+[m[32m  get "items/:id/archive", to: "items#archive", as: :archive_item[m
 [m
   resources :requests, only: [:show, :new, :create, :edit, :update, :destroy] do[m
     collection do[m
[1mdiff --git a/db/migrate/20230328001354_add_archive_to_items.rb b/db/migrate/20230328001354_add_archive_to_items.rb[m
[1mnew file mode 100644[m
[1mindex 0000000..b669d29[m
[1m--- /dev/null[m
[1m+++ b/db/migrate/20230328001354_add_archive_to_items.rb[m
[36m@@ -0,0 +1,5 @@[m
[32m+[m[32mclass AddArchiveToItems < ActiveRecord::Migration[7.0][m
[32m+[m[32m  def change[m
[32m+[m[32m    add_column :items, :archived, :boolean[m
[32m+[m[32m  end[m
[32m+[m[32mend[m
[1mdiff --git a/db/schema.rb b/db/schema.rb[m
[1mindex 6d3832f..1c26f1b 100644[m
[1m--- a/db/schema.rb[m
[1m+++ b/db/schema.rb[m
[36m@@ -10,7 +10,7 @@[m
 #[m
 # It's strongly recommended that you check this file into your version control system.[m
 [m
[31m-ActiveRecord::Schema[7.0].define(version: 2023_03_21_203644) do[m
[32m+[m[32mActiveRecord::Schema[7.0].define(version: 2023_03_28_001354) do[m
   # These are extensions that must be enabled in order to support this database[m
   enable_extension "plpgsql"[m
 [m
[36m@@ -60,6 +60,7 @@[m [mActiveRecord::Schema[7.0].define(version: 2023_03_21_203644) do[m
     t.bigint "user_id", null: false[m
     t.datetime "created_at", null: false[m
     t.datetime "updated_at", null: false[m
[32m+[m[32m    t.boolean "archived"[m
     t.index ["user_id"], name: "index_items_on_user_id"[m
   end[m
 [m
