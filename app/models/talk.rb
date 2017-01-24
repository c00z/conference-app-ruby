class Talk < ApplicationRecord
  validates :start_time, presence: true
  validates :topic, length: { in: 3..100 }


  def add_default_values (top = 'TBD', dur = 30)
    @topic = top
    @duration = dur
  end

  after_initialize do
    add_default_values (:topic, :duration)
  end

end
