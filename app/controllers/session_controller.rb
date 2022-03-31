class SessionController < ApplicationController

    def index
        puts("index*******************************************************************************************")

        if (session[:contact_id] != nil)
            puts(session[:contact_id])
            puts('success session')
            reset_session
            puts('session reset')
        else
            puts('no session')
        end
    end

    def create
        puts("create*******************************************************************************************")
        reset_session
        puts(params[:email])
        puts(params[:mdp])        

        c = Contact.find_by(email:params[:email])


        if (c != nil && params[:mdp] != nil && c.active__c == true)
            puts('not nil')
            puts(c.password__c+params[:mdp])

            if (c.password__c == params[:mdp])
                puts('++++++++++password success')
                session[:contact_id] = c.id
                redirect_to "/contacts/"+session[:contact_id].to_s
            else
                puts('-----------password incorrect')
                redirect_to "/session"
            end 

        else
            puts('nil')
            redirect_to "/session"
        end

    end

end
