defmodule WabanexWeb.Schema.Types.User do
  use Absinthe.Schema.Notation



  @desc "Logic user representation"
  object :user do
    field :id, non_null(:uuid4)
    field :name, non_null(:string)
    field :email, non_null(:string)
    field :weight, non_null(:float)
    field :height, non_null(:float)
    field :fat_index, non_null(:string)
    field :muscle_index, non_null(:string)
    field :trainings, list_of(:training)
  end

  input_object :create_user_input do
    field :name, non_null(:string), description: "User name"
    field :email, non_null(:string), description: "User email"
    field :password, non_null(:string), description: "User password"
    field :weight, non_null(:float), description: "User weight"
    field :height, non_null(:float), description: "User height"
    field :fat_index, non_null(:string), description: "User fat index"
    field :muscle_index, non_null(:string), description: "User muscle index"
  end
end
