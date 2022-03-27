class Contract < ApplicationRecord
    #self.table_name = 'salesforce.contract'

    def accountname
        if(Account.find_by(sfid:accountid).name != nil)
            return Account.find_by(sfid:accountid).name
        else
            return 'pas de compte'
        end
    end
    
end




