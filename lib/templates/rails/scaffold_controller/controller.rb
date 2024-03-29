# frozen_string_literal: true

<% module_namespacing do -%>
class <%= controller_class_name %>Controller < ApplicationController
  # POST <%= route_url %>
  def create
    @<%= singular_table_name %> = <%= orm_class.build(class_name, "#{singular_table_name}_params") %>

    if @<%= orm_instance.save %>
      flash[:success] = I18n.translate(".success")
      redirect_to @<%= singular_table_name %>
    else
      render :new
    end
  end

  # DELETE <%= route_url %>/1
  def destroy
    @<%= singular_table_name %> = find_<%= singular_table_name %>
    @<%= orm_instance.destroy %>
    flash[:success] = I18n.translate(".success")
    redirect_to <%= index_helper %>_url
  end

  # GET <%= route_url %>/1/edit
  def edit
    @<%= singular_table_name %> = find_<%= singular_table_name %>
  end

  # GET <%= route_url %>
  def index
    @<%= plural_table_name %> = <%= orm_class.all(class_name) %>
  end

  # GET <%= route_url %>/new
  def new
    @<%= singular_table_name %> = <%= orm_class.build(class_name) %>
  end

  # GET <%= route_url %>/1
  def show
    @<%= singular_table_name %> = find_<%= singular_table_name %>
  end

  # PATCH/PUT <%= route_url %>/1
  def update
    @<%= singular_table_name %> = find_<%= singular_table_name %>

    if @<%= orm_instance.update("#{singular_table_name}_params") %>
      flash[:success] = I18n.translate(".success")
      redirect_to @<%= singular_table_name %>
    else
      render :edit
    end
  end

  private

  def find_<%= singular_table_name %>
    <%= orm_class.find(class_name, "params[:id]") %>
  end

  # Only allow trusted parameters through.
  def <%= "#{singular_table_name}_params" %>
    <%- if attributes_names.empty? -%>
    params.fetch(:<%= singular_table_name %>, {})
    <%- else -%>
    params.
      require(:<%= singular_table_name %>).
      permit(<%= attributes_names.map { |name| ":#{name}" }.join(', ') %>)
    <%- end -%>
  end
end
<% end -%>
