<template>
  <div class="app">
    <h1>Pokémon List</h1>

    <label for="type">Filter by Type:</label>
    <select v-model="selectedType" id="type">
      <option value="">All</option>
      <option v-for="type in types" :key="type" :value="type">
        {{ type }}
      </option>
    </select>

    <ul>
     <transition-group name="fade" tag="ul">
      <li v-for="pokemon in filteredPokemon" :key="pokemon.name">
        <img :src="pokemonIcon(pokemon.name)" class="poke-icon" />
        {{ pokemon.name }} <small>({{ pokemon.type }})</small>
        <img :src="typeIcon(pokemon.type)" class="type-icon" />
      </li>
    </transition-group>
    </ul>
  </div>
</template>

<script lang="ts" setup>
import { ref, computed } from 'vue';

interface Pokemon {
  name: string;
  type: string;
}

const pokemonList = ref<Pokemon[]>([
  { name: 'Bulbasaur', type: 'Grass' },
  { name: 'Charmander', type: 'Fire' },
  { name: 'Squirtle', type: 'Water' },
  { name: 'Pikachu', type: 'Electric' },
  { name: 'Oddish', type: 'Grass' },
  { name: 'Vulpix', type: 'Fire' },
]);

const selectedType = ref('');

const types = computed(() => {
  return [...new Set(pokemonList.value.map(p => p.type))];
});

const filteredPokemon = computed(() => {
  if (!selectedType.value) return pokemonList.value;
  return pokemonList.value.filter(p => p.type === selectedType.value);
});

function pokemonIcon(name: string) {
  return `https://img.pokemondb.net/sprites/home/normal/${name.toLowerCase()}.png`;
}

function typeIcon(type: string) {
  return `/types/${type.toLowerCase()}.svg`;
}
</script>

<style scoped>
.app {
  max-width: 600px;
  margin: 2rem auto;
  font-family: sans-serif;
}
select {
  margin: 1rem 0;
}
</style>