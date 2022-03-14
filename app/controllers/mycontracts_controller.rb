class MycontractsController < ApplicationController

    def index
        puts('**************MycontractsController#index***************************')
        if(session[:contact_id] != nil)
            puts('session contact id:'+session[:contact_id].to_s)
            
            c = Contact.find_by(id:session[:contact_id])
            puts('nb de contrats: '+Contract.where(accountid:c.accountid).size.to_s)
            @mycontracts = Contract.where(accountid:c.accountid)
            #@mycontracts = Contract.all
        end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_contract
      @contract = Contract.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contract_params
      params.require(:contract).permit(:sfid, :contractnumber, :accountid, :status, :contractterm, :startdate)
    end

end
