class LikesController < ApplicationController
    def create
        tweet = Tweet.find(params[:tweet_id])
        unless tweet.liked?(current_user)
            tweet.like(current_user)
        end
        redirect_to root_path
    end
    
    def destroy
        tweet = Tweet.find(params[:id])
        if tweet.liked?(urrent_user)
            tweet.unlike(current_user)
        end
        redirect_to root_path
    end
end

#create
#user = User.find_by(uid: current_user)
        #logger.debug tweet
        #logger.debug "|" + current_user.to_s + "|"
        #user.like_tweets << tweet
        #tweets_path

#destroy
#user = User.find_by(uid: current_user)
        #tweet.likes.find_by(user_id: user.id).destroy
        #tweets_path