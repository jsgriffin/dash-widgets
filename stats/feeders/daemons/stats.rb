class Stats
  class StatsDaemon < Dash::Feeder 
  
    def run
      loop {
        top = `top -l 1 | head -3`
        lines = top.split(/\n/)
        load_avg = lines[2].gsub(/Load Avg: /, '')

        self.send({:load_average => load_avg})
        sleep 1
      }
    end
  
  end
end