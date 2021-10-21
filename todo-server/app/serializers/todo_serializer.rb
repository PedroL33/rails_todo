class TodoSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :priority, :completed, :user_id

end
