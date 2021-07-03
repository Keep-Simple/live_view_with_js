defmodule LiveViewWithJsWeb.PageLive.PoolDropZoneComponent do
  use Phoenix.LiveComponent

  @impl true
  def render(assigns) do
    ~L"""
    <div class="dropzone grid gap-3" id="pool">
      <%= for %{text: text, id: id} <- @pool do %>
        <div draggable="true" id="<%= id %>" class="draggable p-4 bg-blue-700 text-white"><%= text %></div>
      <% end %>
    </div>
    """
  end
end
