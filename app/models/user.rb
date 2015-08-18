require 'byebug'
class User < ActiveRecord::Base
  validates :email, :password_digest, :session_token, presence: true
  validates :email, :session_token, uniqueness: true
  validates :password, length: { minimum: 6, allow_nil: true }
  after_initialize :ensure_session_token
  has_many :exercise_completions, dependent: :destroy
  attr_reader :password

  def self.find_by_credentials(email, password)
    user = self.find_by(email: email)
    (user && user.is_password?(password)) ? user : nil
  end

  def ensure_session_token
    self.session_token ||= generate_session_token
  end

  def generate_session_token
    SecureRandom.urlsafe_base64
  end

  def reset_session_token!
    self.session_token = generate_session_token
    self.save!
    self.session_token
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def add_completions(exercise)
    topic = Topic
              .includes(exercises: [:exercise_completions])
              .find(exercise.topic_id)
    course = Course
              .includes(exercises: [:exercise_completions])
              .find(exercise.course.id)
    debugger

    add_exercise_completion(exercise)
    add_topic_completion(topic) if topic_complete?(topic)
    add_course_completion(course) if course_complete?(course)
  end

  def topic_complete?(topic)
    topic.exercises.all? do |exercise|
      exercise.exercise_completions.any? do |completion|
        completion.user_id = self.id
      end
    end
  end

  def course_complete?(course)
    course.exercises.all? do |exercise|
      exercise.exercise_completions.any? do |completion|
        completion.user_id = self.id
      end
    end
  end

  def add_exercise_completion(exercise)
    ex_comp = ExerciseCompletion.new(user: self, exercise: exercise)
    ex_comp.destroy unless ex_comp.save
  end

  def add_topic_completion(topic)
    t_comp = TopicCompletion.new(user: self, topic: topic)
    t_comp.destroy unless t_comp.save
  end

  def add_course_completion(course)
    c_comp = TopicCompletion.new(user: self, course: course)
    c_comp.destroy unless c_comp.save
  end
end
