require 'zonescan'
require 'awesome_print'

class Scan < ApplicationRecord
# TODO: to return to object the response must be hash
# run = new Zonescan.run(nil,'neti.ee,google.ee,mail.ee,123feil.ee')
# for now lets return response hashes 0 Completed 1 Failed 2 Totaltime
 run = Zonescan.run(nil,'neti.ee,google.ee,mail.ee,123feil.ee')
 puts "jooks: #{run.inspect}"
 ap run
end
