# -*- coding: utf-8 -*-
FactoryGirl.define do
  factory :transaction do
    purchaser_name 'João do teste'
    item_description 'Equipamento de teste'
    item_price '2.0'
    purchase_count '2'
    merchant_address 'Endereço de teste'
    merchant_name 'Quem paga o testador'
  end
end
