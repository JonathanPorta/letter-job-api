class TaskDecorator < Draper::Decorator
  delegate_all

  def content
    template.content
  end
end
