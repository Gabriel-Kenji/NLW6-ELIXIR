defmodule Wabanex.Users.Delete do
  alias Wabanex.{Repo, User}

  def call(id) do
    
    Repo.delete(Repo.get!(User,id))
  end
end
