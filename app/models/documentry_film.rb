class DocumentryFilm < ApplicationRecord
    validates :name, presence: true, length: {minimum: 6, maximun: 100} 
    validates :synopsis, presence: true, length: {minimum: 10, maximun: 500} 
    validates :director, presence: true, length: {minimum: 6, maximun: 100} 
end