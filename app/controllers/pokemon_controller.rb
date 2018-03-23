class PokemonController < ApplicationController
  def capture
    #@pokemon belongs_to @current_trainer #Will this add the mon to the trainers?  Also, param>
    #@trainer_id = Trainer.find(param[:id])
    @pokemon = Pokemon.find(params[:id])
    @trainer = current_trainer
    @pokemon.trainer = @trainer
    @pokemon.save
    #@trainer.pokemons = @pokemon
    #redirect to home index
    redirect_to root_path
    #redirect_to "root"
  end

  def damage
    pokemon = Pokemon.find(params[:id])
    pokemon.health = pokemon.health - 10
    pokemon.save
    if pokemon.health <= 0
      pokemon.destroy
    end
    redirect_to current_path   #wadahakisdis
  end

  def new
    @pokemon = Pokemon.find(params[:name])
    @pokemon.health = 1
    @pokemon.level = 1
    @trainer_id = current_trainer
    redirect_to current_trainer
  end
end
