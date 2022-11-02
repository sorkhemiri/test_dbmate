-- migrate:up
ALTER TABLE tenants ADD CONSTRAINT tenant_id_unique UNIQUE (pe_tenant_id);

-- migrate:down
ALTER TABLE tenants DROP CONSTRAINT tenant_id_unique;
