require 'zonescan'
require 'awesome_print'

class Scan < ApplicationRecord
  has_many :results
  has_many :domains

# TODO: to return to object the response must be hash
# run = new Zonescan.run(nil,'neti.ee,google.ee,mail.ee,123feil.ee')
# for now lets return response hashes 0 Completed 1 Failed 2 Totaltime

 #  run = Zonescan.run(nil,'neti.ee,google.ee,mail.ee,123feil.ee')
 # puts "jooks: #{run.inspect}"
 # ap run

  def self.process_results(run,sid)
    ap run
    puts "protsessime"
    @totaltime = run[2]
    @scanresult = run[3]
    @completed = run[0]
    @failed = run[1]

    @completed.each do |entry|
      entry[:runid] = sid
      entry[:status] = "OK"
      pp entry
      Result.add(entry)
    end

    @failed.each do |entry|
      entry[:runid] = sid
      entry[:status] = "OK"
      pp entry
      Result.add(entry)
    end
  end
  end
