class PingPongScoreSerializer < ActiveModel::Serializer
  
  # Allowing all 3 attributes to be displayed at API endpoint
  attributes :id, :email, :high_score
  
end
