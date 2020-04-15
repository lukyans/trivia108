module ApplicationHelper
  def flash_class(level)
    case level
      when 'info' then "alert alert-info"
      when 'success' then "alert alert-success"
      when 'error' then "alert alert-danger"
      when 'alert' then "alert alert-warning"
      when 'notice' then "alert alert-info"
      when 'email' then "alert alert-warning"
      when 'password' then "alert alert-warning"
    end
  end
end
