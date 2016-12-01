Deface::Override.new(
  virtual_path: 'spree/admin/products/_form',
  name: 'add_video_to_products_form',
  insert_before: "div[data-hook='admin_product_form_additional_fields']",
  text: '
    <div data-hook="admin_product_form_video_url">
      <%= f.field_container :video_url do %>
        <%= f.label :video_url, Spree.t(:video_url) %>
        <%= f.text_field :video_url, :class => "fullwidth" %>
      <% end %>
    </div>
  '
)
