module TasksHelper
    def due_date_close?(due_date)
        due_date <= Date.today + 3.days
    end
end      
