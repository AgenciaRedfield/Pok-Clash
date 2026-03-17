create table if not exists public.admin_users (
  id uuid primary key default gen_random_uuid(),
  email text unique not null,
  role text not null default 'admin',
  active boolean not null default true,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists public.game_pokemon (
  id uuid primary key default gen_random_uuid(),
  slug text unique not null,
  name text not null,
  front_sprite text not null,
  back_sprite text,
  cry_url text,
  hp integer not null default 100,
  atk integer not null default 20,
  speed integer not null default 20,
  range integer not null default 30,
  atk_speed integer not null default 1000,
  cost integer not null default 3,
  rarity text not null default 'Comum',
  types text[] not null default '{}',
  splash_radius integer not null default 0,
  sort_order integer not null default 0,
  active boolean not null default true,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists public.game_items (
  id uuid primary key default gen_random_uuid(),
  slug text unique not null,
  name text not null,
  item_kind text not null default 'spell',
  front_sprite text not null,
  effect_sprite text,
  atk integer not null default 0,
  radius integer not null default 0,
  cost integer not null default 0,
  rarity text not null default 'Comum',
  types text[] not null default '{}',
  sort_order integer not null default 0,
  active boolean not null default true,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

alter table public.admin_users enable row level security;
alter table public.game_pokemon enable row level security;
alter table public.game_items enable row level security;

drop policy if exists "admin_users_select_self" on public.admin_users;
create policy "admin_users_select_self"
on public.admin_users
for select
to authenticated
using (email = auth.email());

drop policy if exists "game_pokemon_read_public" on public.game_pokemon;
create policy "game_pokemon_read_public"
on public.game_pokemon
for select
to anon, authenticated
using (active = true);

drop policy if exists "game_items_read_public" on public.game_items;
create policy "game_items_read_public"
on public.game_items
for select
to anon, authenticated
using (active = true);

drop policy if exists "game_pokemon_admin_all" on public.game_pokemon;
create policy "game_pokemon_admin_all"
on public.game_pokemon
for all
to authenticated
using (
  exists (
    select 1
    from public.admin_users admin
    where admin.email = auth.email()
      and admin.active = true
  )
)
with check (
  exists (
    select 1
    from public.admin_users admin
    where admin.email = auth.email()
      and admin.active = true
  )
);

drop policy if exists "game_items_admin_all" on public.game_items;
create policy "game_items_admin_all"
on public.game_items
for all
to authenticated
using (
  exists (
    select 1
    from public.admin_users admin
    where admin.email = auth.email()
      and admin.active = true
  )
)
with check (
  exists (
    select 1
    from public.admin_users admin
    where admin.email = auth.email()
      and admin.active = true
  )
);

insert into public.admin_users (email)
values ('seu-email-admin@exemplo.com')
on conflict (email) do nothing;
