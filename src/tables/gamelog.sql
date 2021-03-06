create table gamelog(
    id                     serial   primary key,
    game_id                text     not null,
    game_date              date     not null,
    season                 text     not null,
    goalie_id              int      references goalies(id),
    time_on_ice_in_seconds int      not null,
    goals_against          int      not null,
    goalie_team            int      references teams(id),
    opponent               int      references teams(id),
    even_strength_shots    int      not null,
    even_strength_saves    int      not null,
    short_shots            int      not null,
    short_saves            int      not null,
    power_shots            int      not null,
    power_saves            int      not null,
    is_home_game           boolean  not null,
    is_overtime_game       boolean  not null,
    overtimes              smallint not null,
    is_won_game            boolean  not null
);
