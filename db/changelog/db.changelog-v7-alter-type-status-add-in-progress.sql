--liquibase formatted sql

--changeset pkorobeinikov:7 runInTransaction:false

alter type status add value 'in progress' after 'confirmed';

-- there is no rollback: drop value is not supported for enums
--rollback select 1
