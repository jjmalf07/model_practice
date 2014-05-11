class QuestionsController < ApplicationController
  def question_1
    # What is the most recent movie on the list that the second actor appeared in?

    # Your Ruby goes here.

    @most_recent_movie_for_second_actor = Actor.second.movies.order("year DESC").first.title
  end

  def question_2
    # Who directed the longest movie on the list?

    # Your Ruby goes here.

    @director_of_longest_movie = Movie.order("duration DESC").first.director.name
  end

  def question_3
    # Which director has the most movies on the list?

    # Your Ruby goes here.
    director_with_most = Director.new

    Director.all.each do |direct|
      if direct.movies.count > director_with_most.movies.count
        director_with_most = direct
      end
    end

    @director_with_the_most_movies = director_with_most.name
  end

  def question_4
    # Which actor has been in the most movies on the list?
    # (If there's a tie, any one of them is fine)

    # Your Ruby goes here.
    actor_with_most = Actor.new

    Actor.all.each do |act|
      if act.movies.count > actor_with_most.movies.count
        actor_with_most = act
      end
    end

    @actor_with_the_most_movies = actor_with_most.name
  end

  def question_5
    # This one is hard. Work on it after all your other review is complete.

    # Which actor/director pair has the most movies on the list?
    # (If there's a tie, any pair of them is fine)

    # Your Ruby goes here.

    # @actor = ???
    # @director = ???
    # @movies_together = ???
  end
end
