create table "public"."feedback" (
    "id" bigint generated by default as identity not null,
    "created_at" timestamp with time zone not null default now(),
    "type" boolean not null,
    "comentario" text not null,
    "estacionamiento" bigint not null
);


alter table "public"."feedback" enable row level security;

create table "public"."parkingLot" (
    "id" bigint generated by default as identity not null,
    "created_at" timestamp with time zone not null default now(),
    "nombre" text not null,
    "puestos" bigint not null,
    "puestos_ocupados" bigint
);


create table "public"."peak" (
    "id" bigint generated by default as identity not null,
    "created_at" timestamp with time zone not null default now(),
    "type" boolean not null,
    "id_parking_lot" bigint not null
);


create table "public"."user" (
    "id" bigint generated by default as identity not null,
    "email" text not null,
    "password" text not null
);


CREATE UNIQUE INDEX estacionamientos_pkey ON public."parkingLot" USING btree (id);

CREATE UNIQUE INDEX feedback_id_key ON public.feedback USING btree (id);

CREATE UNIQUE INDEX feedback_pkey ON public.feedback USING btree (id);

CREATE UNIQUE INDEX "parkingLot_id_key" ON public."parkingLot" USING btree (id);

CREATE UNIQUE INDEX "parkingLot_nombre_key" ON public."parkingLot" USING btree (nombre);

CREATE UNIQUE INDEX peak_id_key ON public.peak USING btree (id);

CREATE UNIQUE INDEX peak_pkey ON public.peak USING btree (id);

CREATE UNIQUE INDEX user_email_key ON public."user" USING btree (email);

CREATE UNIQUE INDEX user_id_key ON public."user" USING btree (id);

CREATE UNIQUE INDEX user_pkey ON public."user" USING btree (id);

alter table "public"."feedback" add constraint "feedback_pkey" PRIMARY KEY using index "feedback_pkey";

alter table "public"."parkingLot" add constraint "estacionamientos_pkey" PRIMARY KEY using index "estacionamientos_pkey";

alter table "public"."peak" add constraint "peak_pkey" PRIMARY KEY using index "peak_pkey";

alter table "public"."user" add constraint "user_pkey" PRIMARY KEY using index "user_pkey";

alter table "public"."feedback" add constraint "feedback_estacionamiento_fkey" FOREIGN KEY (estacionamiento) REFERENCES "parkingLot"(id) not valid;

alter table "public"."feedback" validate constraint "feedback_estacionamiento_fkey";

alter table "public"."feedback" add constraint "feedback_id_key" UNIQUE using index "feedback_id_key";

alter table "public"."parkingLot" add constraint "parkingLot_id_key" UNIQUE using index "parkingLot_id_key";

alter table "public"."parkingLot" add constraint "parkingLot_nombre_key" UNIQUE using index "parkingLot_nombre_key";

alter table "public"."peak" add constraint "peak_id_key" UNIQUE using index "peak_id_key";

alter table "public"."peak" add constraint "peak_id_parking_lot_fkey" FOREIGN KEY (id_parking_lot) REFERENCES "parkingLot"(id) not valid;

alter table "public"."peak" validate constraint "peak_id_parking_lot_fkey";

alter table "public"."user" add constraint "user_email_key" UNIQUE using index "user_email_key";

alter table "public"."user" add constraint "user_id_key" UNIQUE using index "user_id_key";

grant delete on table "public"."feedback" to "anon";

grant insert on table "public"."feedback" to "anon";

grant references on table "public"."feedback" to "anon";

grant select on table "public"."feedback" to "anon";

grant trigger on table "public"."feedback" to "anon";

grant truncate on table "public"."feedback" to "anon";

grant update on table "public"."feedback" to "anon";

grant delete on table "public"."feedback" to "authenticated";

grant insert on table "public"."feedback" to "authenticated";

grant references on table "public"."feedback" to "authenticated";

grant select on table "public"."feedback" to "authenticated";

grant trigger on table "public"."feedback" to "authenticated";

grant truncate on table "public"."feedback" to "authenticated";

grant update on table "public"."feedback" to "authenticated";

grant delete on table "public"."feedback" to "service_role";

grant insert on table "public"."feedback" to "service_role";

grant references on table "public"."feedback" to "service_role";

grant select on table "public"."feedback" to "service_role";

grant trigger on table "public"."feedback" to "service_role";

grant truncate on table "public"."feedback" to "service_role";

grant update on table "public"."feedback" to "service_role";

grant delete on table "public"."parkingLot" to "anon";

grant insert on table "public"."parkingLot" to "anon";

grant references on table "public"."parkingLot" to "anon";

grant select on table "public"."parkingLot" to "anon";

grant trigger on table "public"."parkingLot" to "anon";

grant truncate on table "public"."parkingLot" to "anon";

grant update on table "public"."parkingLot" to "anon";

grant delete on table "public"."parkingLot" to "authenticated";

grant insert on table "public"."parkingLot" to "authenticated";

grant references on table "public"."parkingLot" to "authenticated";

grant select on table "public"."parkingLot" to "authenticated";

grant trigger on table "public"."parkingLot" to "authenticated";

grant truncate on table "public"."parkingLot" to "authenticated";

grant update on table "public"."parkingLot" to "authenticated";

grant delete on table "public"."parkingLot" to "service_role";

grant insert on table "public"."parkingLot" to "service_role";

grant references on table "public"."parkingLot" to "service_role";

grant select on table "public"."parkingLot" to "service_role";

grant trigger on table "public"."parkingLot" to "service_role";

grant truncate on table "public"."parkingLot" to "service_role";

grant update on table "public"."parkingLot" to "service_role";

grant delete on table "public"."peak" to "anon";

grant insert on table "public"."peak" to "anon";

grant references on table "public"."peak" to "anon";

grant select on table "public"."peak" to "anon";

grant trigger on table "public"."peak" to "anon";

grant truncate on table "public"."peak" to "anon";

grant update on table "public"."peak" to "anon";

grant delete on table "public"."peak" to "authenticated";

grant insert on table "public"."peak" to "authenticated";

grant references on table "public"."peak" to "authenticated";

grant select on table "public"."peak" to "authenticated";

grant trigger on table "public"."peak" to "authenticated";

grant truncate on table "public"."peak" to "authenticated";

grant update on table "public"."peak" to "authenticated";

grant delete on table "public"."peak" to "service_role";

grant insert on table "public"."peak" to "service_role";

grant references on table "public"."peak" to "service_role";

grant select on table "public"."peak" to "service_role";

grant trigger on table "public"."peak" to "service_role";

grant truncate on table "public"."peak" to "service_role";

grant update on table "public"."peak" to "service_role";

grant delete on table "public"."user" to "anon";

grant insert on table "public"."user" to "anon";

grant references on table "public"."user" to "anon";

grant select on table "public"."user" to "anon";

grant trigger on table "public"."user" to "anon";

grant truncate on table "public"."user" to "anon";

grant update on table "public"."user" to "anon";

grant delete on table "public"."user" to "authenticated";

grant insert on table "public"."user" to "authenticated";

grant references on table "public"."user" to "authenticated";

grant select on table "public"."user" to "authenticated";

grant trigger on table "public"."user" to "authenticated";

grant truncate on table "public"."user" to "authenticated";

grant update on table "public"."user" to "authenticated";

grant delete on table "public"."user" to "service_role";

grant insert on table "public"."user" to "service_role";

grant references on table "public"."user" to "service_role";

grant select on table "public"."user" to "service_role";

grant trigger on table "public"."user" to "service_role";

grant truncate on table "public"."user" to "service_role";

grant update on table "public"."user" to "service_role";

