# frozen_string_literal: true

class AddChildRefToNames < ActiveRecord::Migration[5.2]
  def change
    add_reference :names, :child, foreign_key: true
  end
end
