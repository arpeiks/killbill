alter table invoice_tracking_ids add column is_active boolean default true after record_date;
alter table invoice_tracking_ids add column updated_by varchar(50) NOT NULL after created_date;
alter table invoice_tracking_ids add column updated_date datetime NOT NULL after updated_by;
create index invoice_tracking_invoice_id_idx on invoice_tracking_ids(tenant_record_id, invoice_id);
