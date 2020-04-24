defmodule RtfEditorWeb.FeedbackLive do
  use Phoenix.LiveView
  require Logger

  def mount(_, _, sock) do
    {:ok, sock |> assign(:feedback, "")}
  end
  
  def render(assigns) do
    Phoenix.View.render RtfEditorWeb.FeedbackView, "index.html", assigns
  end
  
end
