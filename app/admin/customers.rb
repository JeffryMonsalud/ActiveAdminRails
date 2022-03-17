ActiveAdmin.register Customer do

  permit_params :full_name, :phone_number, :email_address, :notes, :image
  
  # DSL - Domain Specific Langauge - Easy way to implement something using code like syntax without writing code
  form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs          # builds an input field for every attribute
    f.actions         # adds the 'Submit' and 'Cancel' buttons

    f.inputs do
      f.input :image, as: :file 
    end
  end
end
