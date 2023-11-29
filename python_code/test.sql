update study_model.activities set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'activities' AND column_name = 'created_by');
update study_model.activities set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'activities' AND column_name = 'created_by');
ALTER TABLE study_model.activities ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.activities ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.activities ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.activities ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.activities_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'activities_audit' AND column_name = 'created_by');
update study_model.activities_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'activities_audit' AND column_name = 'created_by');
ALTER TABLE study_model.activities_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.activities_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.activities_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.activities_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.attribute set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'attribute' AND column_name = 'created_by');
update study_model.attribute set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'attribute' AND column_name = 'created_by');
ALTER TABLE study_model.attribute ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.attribute ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.attribute ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.attribute ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.attribute_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'attribute_audit' AND column_name = 'created_by');
update study_model.attribute_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'attribute_audit' AND column_name = 'created_by');
ALTER TABLE study_model.attribute_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.attribute_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.attribute_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.attribute_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.attribute_value set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'attribute_value' AND column_name = 'created_by');
update study_model.attribute_value set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'attribute_value' AND column_name = 'created_by');
ALTER TABLE study_model.attribute_value ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.attribute_value ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.attribute_value ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.attribute_value ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.attribute_value_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'attribute_value_audit' AND column_name = 'created_by');
update study_model.attribute_value_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'attribute_value_audit' AND column_name = 'created_by');
ALTER TABLE study_model.attribute_value_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.attribute_value_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.attribute_value_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.attribute_value_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.cohort set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'cohort' AND column_name = 'created_by');
update study_model.cohort set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'cohort' AND column_name = 'created_by');
ALTER TABLE study_model.cohort ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.cohort ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.cohort ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.cohort ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.cohort_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'cohort_audit' AND column_name = 'created_by');
update study_model.cohort_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'cohort_audit' AND column_name = 'created_by');
ALTER TABLE study_model.cohort_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.cohort_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.cohort_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.cohort_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.consent set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'consent' AND column_name = 'created_by');
update study_model.consent set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'consent' AND column_name = 'created_by');
ALTER TABLE study_model.consent ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.consent ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.consent ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.consent ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.consent_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'consent_audit' AND column_name = 'created_by');
update study_model.consent_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'consent_audit' AND column_name = 'created_by');
ALTER TABLE study_model.consent_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.consent_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.consent_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.consent_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.consent_group set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'consent_group' AND column_name = 'created_by');
update study_model.consent_group set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'consent_group' AND column_name = 'created_by');
ALTER TABLE study_model.consent_group ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.consent_group ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.consent_group ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.consent_group ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.consent_group_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'consent_group_audit' AND column_name = 'created_by');
update study_model.consent_group_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'consent_group_audit' AND column_name = 'created_by');
ALTER TABLE study_model.consent_group_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.consent_group_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.consent_group_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.consent_group_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.consent_group_consent set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'consent_group_consent' AND column_name = 'created_by');
update study_model.consent_group_consent set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'consent_group_consent' AND column_name = 'created_by');
ALTER TABLE study_model.consent_group_consent ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.consent_group_consent ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.consent_group_consent ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.consent_group_consent ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.consent_group_consent_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'consent_group_consent_audit' AND column_name = 'created_by');
update study_model.consent_group_consent_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'consent_group_consent_audit' AND column_name = 'created_by');
ALTER TABLE study_model.consent_group_consent_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.consent_group_consent_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.consent_group_consent_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.consent_group_consent_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.consent_group_study_version set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'consent_group_study_version' AND column_name = 'created_by');
update study_model.consent_group_study_version set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'consent_group_study_version' AND column_name = 'created_by');
ALTER TABLE study_model.consent_group_study_version ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.consent_group_study_version ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.consent_group_study_version ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.consent_group_study_version ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.consent_group_study_version_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'consent_group_study_version_audit' AND column_name = 'created_by');
update study_model.consent_group_study_version_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'consent_group_study_version_audit' AND column_name = 'created_by');
ALTER TABLE study_model.consent_group_study_version_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.consent_group_study_version_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.consent_group_study_version_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.consent_group_study_version_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.consent_version set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'consent_version' AND column_name = 'created_by');
update study_model.consent_version set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'consent_version' AND column_name = 'created_by');
ALTER TABLE study_model.consent_version ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.consent_version ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.consent_version ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.consent_version ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.consent_version_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'consent_version_audit' AND column_name = 'created_by');
update study_model.consent_version_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'consent_version_audit' AND column_name = 'created_by');
ALTER TABLE study_model.consent_version_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.consent_version_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.consent_version_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.consent_version_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.cycle set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'cycle' AND column_name = 'created_by');
update study_model.cycle set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'cycle' AND column_name = 'created_by');
ALTER TABLE study_model.cycle ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.cycle ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.cycle ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.cycle ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.cycle_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'cycle_audit' AND column_name = 'created_by');
update study_model.cycle_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'cycle_audit' AND column_name = 'created_by');
ALTER TABLE study_model.cycle_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.cycle_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.cycle_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.cycle_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.device set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'device' AND column_name = 'created_by');
update study_model.device set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'device' AND column_name = 'created_by');
ALTER TABLE study_model.device ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.device ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.device ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.device ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.device_attribute set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'device_attribute' AND column_name = 'created_by');
update study_model.device_attribute set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'device_attribute' AND column_name = 'created_by');
ALTER TABLE study_model.device_attribute ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.device_attribute ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.device_attribute ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.device_attribute ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.device_attribute_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'device_attribute_audit' AND column_name = 'created_by');
update study_model.device_attribute_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'device_attribute_audit' AND column_name = 'created_by');
ALTER TABLE study_model.device_attribute_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.device_attribute_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.device_attribute_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.device_attribute_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.device_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'device_audit' AND column_name = 'created_by');
update study_model.device_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'device_audit' AND column_name = 'created_by');
ALTER TABLE study_model.device_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.device_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.device_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.device_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.documents set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'documents' AND column_name = 'created_by');
update study_model.documents set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'documents' AND column_name = 'created_by');
ALTER TABLE study_model.documents ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.documents ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.documents ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.documents ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.documents_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'documents_audit' AND column_name = 'created_by');
update study_model.documents_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'documents_audit' AND column_name = 'created_by');
ALTER TABLE study_model.documents_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.documents_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.documents_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.documents_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.event set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'event' AND column_name = 'created_by');
update study_model.event set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'event' AND column_name = 'created_by');
ALTER TABLE study_model.event ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.event ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.event ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.event ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.event_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'event_audit' AND column_name = 'created_by');
update study_model.event_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'event_audit' AND column_name = 'created_by');
ALTER TABLE study_model.event_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.event_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.event_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.event_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.event_notification set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'event_notification' AND column_name = 'created_by');
update study_model.event_notification set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'event_notification' AND column_name = 'created_by');
ALTER TABLE study_model.event_notification ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.event_notification ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.event_notification ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.event_notification ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.event_notification_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'event_notification_audit' AND column_name = 'created_by');
update study_model.event_notification_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'event_notification_audit' AND column_name = 'created_by');
ALTER TABLE study_model.event_notification_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.event_notification_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.event_notification_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.event_notification_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.event_type set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'event_type' AND column_name = 'created_by');
update study_model.event_type set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'event_type' AND column_name = 'created_by');
ALTER TABLE study_model.event_type ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.event_type ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.event_type ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.event_type ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.event_type_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'event_type_audit' AND column_name = 'created_by');
update study_model.event_type_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'event_type_audit' AND column_name = 'created_by');
ALTER TABLE study_model.event_type_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.event_type_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.event_type_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.event_type_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.failed_jobs set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'failed_jobs' AND column_name = 'created_by');
update study_model.failed_jobs set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'failed_jobs' AND column_name = 'created_by');
ALTER TABLE study_model.failed_jobs ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.failed_jobs ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.failed_jobs ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.failed_jobs ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.failed_jobs_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'failed_jobs_audit' AND column_name = 'created_by');
update study_model.failed_jobs_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'failed_jobs_audit' AND column_name = 'created_by');
ALTER TABLE study_model.failed_jobs_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.failed_jobs_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.failed_jobs_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.failed_jobs_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.feature_flags set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'feature_flags' AND column_name = 'created_by');
update study_model.feature_flags set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'feature_flags' AND column_name = 'created_by');
ALTER TABLE study_model.feature_flags ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.feature_flags ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.feature_flags ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.feature_flags ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.feature_flags_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'feature_flags_audit' AND column_name = 'created_by');
update study_model.feature_flags_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'feature_flags_audit' AND column_name = 'created_by');
ALTER TABLE study_model.feature_flags_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.feature_flags_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.feature_flags_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.feature_flags_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.game set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'game' AND column_name = 'created_by');
update study_model.game set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'game' AND column_name = 'created_by');
ALTER TABLE study_model.game ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.game ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.game ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.game ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.game_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'game_audit' AND column_name = 'created_by');
update study_model.game_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'game_audit' AND column_name = 'created_by');
ALTER TABLE study_model.game_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.game_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.game_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.game_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.game_person set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'game_person' AND column_name = 'created_by');
update study_model.game_person set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'game_person' AND column_name = 'created_by');
ALTER TABLE study_model.game_person ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.game_person ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.game_person ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.game_person ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.game_person_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'game_person_audit' AND column_name = 'created_by');
update study_model.game_person_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'game_person_audit' AND column_name = 'created_by');
ALTER TABLE study_model.game_person_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.game_person_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.game_person_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.game_person_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.goal set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'goal' AND column_name = 'created_by');
update study_model.goal set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'goal' AND column_name = 'created_by');
ALTER TABLE study_model.goal ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.goal ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.goal ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.goal ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.goal_attribute set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'goal_attribute' AND column_name = 'created_by');
update study_model.goal_attribute set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'goal_attribute' AND column_name = 'created_by');
ALTER TABLE study_model.goal_attribute ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.goal_attribute ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.goal_attribute ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.goal_attribute ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.goal_attribute_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'goal_attribute_audit' AND column_name = 'created_by');
update study_model.goal_attribute_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'goal_attribute_audit' AND column_name = 'created_by');
ALTER TABLE study_model.goal_attribute_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.goal_attribute_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.goal_attribute_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.goal_attribute_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.goal_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'goal_audit' AND column_name = 'created_by');
update study_model.goal_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'goal_audit' AND column_name = 'created_by');
ALTER TABLE study_model.goal_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.goal_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.goal_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.goal_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.goal_category_type set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'goal_category_type' AND column_name = 'created_by');
update study_model.goal_category_type set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'goal_category_type' AND column_name = 'created_by');
ALTER TABLE study_model.goal_category_type ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.goal_category_type ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.goal_category_type ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.goal_category_type ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.goal_category_type_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'goal_category_type_audit' AND column_name = 'created_by');
update study_model.goal_category_type_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'goal_category_type_audit' AND column_name = 'created_by');
ALTER TABLE study_model.goal_category_type_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.goal_category_type_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.goal_category_type_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.goal_category_type_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.goal_completion_type set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'goal_completion_type' AND column_name = 'created_by');
update study_model.goal_completion_type set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'goal_completion_type' AND column_name = 'created_by');
ALTER TABLE study_model.goal_completion_type ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.goal_completion_type ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.goal_completion_type ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.goal_completion_type ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.goal_completion_type_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'goal_completion_type_audit' AND column_name = 'created_by');
update study_model.goal_completion_type_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'goal_completion_type_audit' AND column_name = 'created_by');
ALTER TABLE study_model.goal_completion_type_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.goal_completion_type_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.goal_completion_type_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.goal_completion_type_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.goal_reward set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'goal_reward' AND column_name = 'created_by');
update study_model.goal_reward set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'goal_reward' AND column_name = 'created_by');
ALTER TABLE study_model.goal_reward ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.goal_reward ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.goal_reward ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.goal_reward ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.goal_reward_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'goal_reward_audit' AND column_name = 'created_by');
update study_model.goal_reward_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'goal_reward_audit' AND column_name = 'created_by');
ALTER TABLE study_model.goal_reward_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.goal_reward_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.goal_reward_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.goal_reward_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.goal_task set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'goal_task' AND column_name = 'created_by');
update study_model.goal_task set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'goal_task' AND column_name = 'created_by');
ALTER TABLE study_model.goal_task ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.goal_task ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.goal_task ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.goal_task ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.goal_task_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'goal_task_audit' AND column_name = 'created_by');
update study_model.goal_task_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'goal_task_audit' AND column_name = 'created_by');
ALTER TABLE study_model.goal_task_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.goal_task_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.goal_task_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.goal_task_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.goal_temporal_types set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'goal_temporal_types' AND column_name = 'created_by');
update study_model.goal_temporal_types set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'goal_temporal_types' AND column_name = 'created_by');
ALTER TABLE study_model.goal_temporal_types ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.goal_temporal_types ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.goal_temporal_types ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.goal_temporal_types ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.goal_temporal_types_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'goal_temporal_types_audit' AND column_name = 'created_by');
update study_model.goal_temporal_types_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'goal_temporal_types_audit' AND column_name = 'created_by');
ALTER TABLE study_model.goal_temporal_types_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.goal_temporal_types_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.goal_temporal_types_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.goal_temporal_types_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.language set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'language' AND column_name = 'created_by');
update study_model.language set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'language' AND column_name = 'created_by');
ALTER TABLE study_model.language ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.language ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.language ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.language ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.language_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'language_audit' AND column_name = 'created_by');
update study_model.language_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'language_audit' AND column_name = 'created_by');
ALTER TABLE study_model.language_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.language_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.language_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.language_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.medications set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'medications' AND column_name = 'created_by');
update study_model.medications set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'medications' AND column_name = 'created_by');
ALTER TABLE study_model.medications ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.medications ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.medications ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.medications ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.medications_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'medications_audit' AND column_name = 'created_by');
update study_model.medications_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'medications_audit' AND column_name = 'created_by');
ALTER TABLE study_model.medications_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.medications_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.medications_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.medications_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.notification set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'notification' AND column_name = 'created_by');
update study_model.notification set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'notification' AND column_name = 'created_by');
ALTER TABLE study_model.notification ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.notification ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.notification ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.notification ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.notification_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'notification_audit' AND column_name = 'created_by');
update study_model.notification_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'notification_audit' AND column_name = 'created_by');
ALTER TABLE study_model.notification_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.notification_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.notification_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.notification_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.notification_sequence set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'notification_sequence' AND column_name = 'created_by');
update study_model.notification_sequence set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'notification_sequence' AND column_name = 'created_by');
ALTER TABLE study_model.notification_sequence ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.notification_sequence ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.notification_sequence ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.notification_sequence ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.notification_sequence_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'notification_sequence_audit' AND column_name = 'created_by');
update study_model.notification_sequence_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'notification_sequence_audit' AND column_name = 'created_by');
ALTER TABLE study_model.notification_sequence_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.notification_sequence_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.notification_sequence_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.notification_sequence_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.oauth_access_tokens set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'oauth_access_tokens' AND column_name = 'created_by');
update study_model.oauth_access_tokens set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'oauth_access_tokens' AND column_name = 'created_by');
ALTER TABLE study_model.oauth_access_tokens ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.oauth_access_tokens ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.oauth_access_tokens ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.oauth_access_tokens ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.oauth_access_tokens_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'oauth_access_tokens_audit' AND column_name = 'created_by');
update study_model.oauth_access_tokens_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'oauth_access_tokens_audit' AND column_name = 'created_by');
ALTER TABLE study_model.oauth_access_tokens_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.oauth_access_tokens_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.oauth_access_tokens_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.oauth_access_tokens_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.oauth_auth_codes set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'oauth_auth_codes' AND column_name = 'created_by');
update study_model.oauth_auth_codes set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'oauth_auth_codes' AND column_name = 'created_by');
ALTER TABLE study_model.oauth_auth_codes ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.oauth_auth_codes ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.oauth_auth_codes ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.oauth_auth_codes ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.oauth_auth_codes_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'oauth_auth_codes_audit' AND column_name = 'created_by');
update study_model.oauth_auth_codes_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'oauth_auth_codes_audit' AND column_name = 'created_by');
ALTER TABLE study_model.oauth_auth_codes_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.oauth_auth_codes_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.oauth_auth_codes_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.oauth_auth_codes_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.oauth_clients set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'oauth_clients' AND column_name = 'created_by');
update study_model.oauth_clients set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'oauth_clients' AND column_name = 'created_by');
ALTER TABLE study_model.oauth_clients ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.oauth_clients ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.oauth_clients ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.oauth_clients ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.oauth_clients_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'oauth_clients_audit' AND column_name = 'created_by');
update study_model.oauth_clients_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'oauth_clients_audit' AND column_name = 'created_by');
ALTER TABLE study_model.oauth_clients_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.oauth_clients_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.oauth_clients_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.oauth_clients_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.oauth_personal_access_clients set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'oauth_personal_access_clients' AND column_name = 'created_by');
update study_model.oauth_personal_access_clients set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'oauth_personal_access_clients' AND column_name = 'created_by');
ALTER TABLE study_model.oauth_personal_access_clients ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.oauth_personal_access_clients ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.oauth_personal_access_clients ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.oauth_personal_access_clients ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.oauth_personal_access_clients_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'oauth_personal_access_clients_audit' AND column_name = 'created_by');
update study_model.oauth_personal_access_clients_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'oauth_personal_access_clients_audit' AND column_name = 'created_by');
ALTER TABLE study_model.oauth_personal_access_clients_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.oauth_personal_access_clients_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.oauth_personal_access_clients_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.oauth_personal_access_clients_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.oauth_refresh_tokens set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'oauth_refresh_tokens' AND column_name = 'created_by');
update study_model.oauth_refresh_tokens set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'oauth_refresh_tokens' AND column_name = 'created_by');
ALTER TABLE study_model.oauth_refresh_tokens ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.oauth_refresh_tokens ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.oauth_refresh_tokens ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.oauth_refresh_tokens ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.oauth_refresh_tokens_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'oauth_refresh_tokens_audit' AND column_name = 'created_by');
update study_model.oauth_refresh_tokens_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'oauth_refresh_tokens_audit' AND column_name = 'created_by');
ALTER TABLE study_model.oauth_refresh_tokens_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.oauth_refresh_tokens_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.oauth_refresh_tokens_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.oauth_refresh_tokens_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.organization set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'organization' AND column_name = 'created_by');
update study_model.organization set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'organization' AND column_name = 'created_by');
ALTER TABLE study_model.organization ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.organization ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.organization ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.organization ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.organization_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'organization_audit' AND column_name = 'created_by');
update study_model.organization_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'organization_audit' AND column_name = 'created_by');
ALTER TABLE study_model.organization_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.organization_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.organization_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.organization_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.participant_consent_version set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_consent_version' AND column_name = 'created_by');
update study_model.participant_consent_version set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_consent_version' AND column_name = 'created_by');
ALTER TABLE study_model.participant_consent_version ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_consent_version ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_consent_version ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.participant_consent_version ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.participant_consent_version_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_consent_version_audit' AND column_name = 'created_by');
update study_model.participant_consent_version_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_consent_version_audit' AND column_name = 'created_by');
ALTER TABLE study_model.participant_consent_version_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_consent_version_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_consent_version_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.participant_consent_version_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.participant_device set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_device' AND column_name = 'created_by');
update study_model.participant_device set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_device' AND column_name = 'created_by');
ALTER TABLE study_model.participant_device ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_device ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_device ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.participant_device ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.participant_device_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_device_audit' AND column_name = 'created_by');
update study_model.participant_device_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_device_audit' AND column_name = 'created_by');
ALTER TABLE study_model.participant_device_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_device_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_device_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.participant_device_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.participant_goal set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_goal' AND column_name = 'created_by');
update study_model.participant_goal set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_goal' AND column_name = 'created_by');
ALTER TABLE study_model.participant_goal ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_goal ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_goal ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.participant_goal ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.participant_goal_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_goal_audit' AND column_name = 'created_by');
update study_model.participant_goal_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_goal_audit' AND column_name = 'created_by');
ALTER TABLE study_model.participant_goal_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_goal_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_goal_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.participant_goal_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.participant_goal_participant_task set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_goal_participant_task' AND column_name = 'created_by');
update study_model.participant_goal_participant_task set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_goal_participant_task' AND column_name = 'created_by');
ALTER TABLE study_model.participant_goal_participant_task ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_goal_participant_task ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_goal_participant_task ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.participant_goal_participant_task ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.participant_goal_participant_task_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_goal_participant_task_audit' AND column_name = 'created_by');
update study_model.participant_goal_participant_task_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_goal_participant_task_audit' AND column_name = 'created_by');
ALTER TABLE study_model.participant_goal_participant_task_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_goal_participant_task_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_goal_participant_task_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.participant_goal_participant_task_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.participant_goal_reward set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_goal_reward' AND column_name = 'created_by');
update study_model.participant_goal_reward set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_goal_reward' AND column_name = 'created_by');
ALTER TABLE study_model.participant_goal_reward ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_goal_reward ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_goal_reward ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.participant_goal_reward ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.participant_goal_reward_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_goal_reward_audit' AND column_name = 'created_by');
update study_model.participant_goal_reward_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_goal_reward_audit' AND column_name = 'created_by');
ALTER TABLE study_model.participant_goal_reward_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_goal_reward_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_goal_reward_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.participant_goal_reward_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.participant_notification set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_notification' AND column_name = 'created_by');
update study_model.participant_notification set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_notification' AND column_name = 'created_by');
ALTER TABLE study_model.participant_notification ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_notification ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_notification ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.participant_notification ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.participant_notification_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_notification_audit' AND column_name = 'created_by');
update study_model.participant_notification_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_notification_audit' AND column_name = 'created_by');
ALTER TABLE study_model.participant_notification_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_notification_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_notification_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.participant_notification_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.participant_notification_queue set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_notification_queue' AND column_name = 'created_by');
update study_model.participant_notification_queue set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_notification_queue' AND column_name = 'created_by');
ALTER TABLE study_model.participant_notification_queue ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_notification_queue ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_notification_queue ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.participant_notification_queue ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.participant_notification_queue_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_notification_queue_audit' AND column_name = 'created_by');
update study_model.participant_notification_queue_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_notification_queue_audit' AND column_name = 'created_by');
ALTER TABLE study_model.participant_notification_queue_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_notification_queue_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_notification_queue_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.participant_notification_queue_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.participant_process set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_process' AND column_name = 'created_by');
update study_model.participant_process set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_process' AND column_name = 'created_by');
ALTER TABLE study_model.participant_process ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_process ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_process ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.participant_process ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.participant_process_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_process_audit' AND column_name = 'created_by');
update study_model.participant_process_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_process_audit' AND column_name = 'created_by');
ALTER TABLE study_model.participant_process_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_process_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_process_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.participant_process_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.participant_reward set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_reward' AND column_name = 'created_by');
update study_model.participant_reward set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_reward' AND column_name = 'created_by');
ALTER TABLE study_model.participant_reward ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_reward ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_reward ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.participant_reward ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.participant_reward_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_reward_audit' AND column_name = 'created_by');
update study_model.participant_reward_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_reward_audit' AND column_name = 'created_by');
ALTER TABLE study_model.participant_reward_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_reward_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_reward_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.participant_reward_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.participant_task set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_task' AND column_name = 'created_by');
update study_model.participant_task set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_task' AND column_name = 'created_by');
ALTER TABLE study_model.participant_task ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_task ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_task ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.participant_task ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.participant_task_annotation set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_task_annotation' AND column_name = 'created_by');
update study_model.participant_task_annotation set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_task_annotation' AND column_name = 'created_by');
ALTER TABLE study_model.participant_task_annotation ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_task_annotation ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_task_annotation ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.participant_task_annotation ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.participant_task_annotation_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_task_annotation_audit' AND column_name = 'created_by');
update study_model.participant_task_annotation_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_task_annotation_audit' AND column_name = 'created_by');
ALTER TABLE study_model.participant_task_annotation_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_task_annotation_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_task_annotation_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.participant_task_annotation_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.participant_task_annotation_response set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_task_annotation_response' AND column_name = 'created_by');
update study_model.participant_task_annotation_response set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_task_annotation_response' AND column_name = 'created_by');
ALTER TABLE study_model.participant_task_annotation_response ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_task_annotation_response ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_task_annotation_response ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.participant_task_annotation_response ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.participant_task_annotation_response_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_task_annotation_response_audit' AND column_name = 'created_by');
update study_model.participant_task_annotation_response_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_task_annotation_response_audit' AND column_name = 'created_by');
ALTER TABLE study_model.participant_task_annotation_response_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_task_annotation_response_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_task_annotation_response_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.participant_task_annotation_response_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.participant_task_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_task_audit' AND column_name = 'created_by');
update study_model.participant_task_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_task_audit' AND column_name = 'created_by');
ALTER TABLE study_model.participant_task_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_task_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_task_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.participant_task_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.participant_task_consent_version set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_task_consent_version' AND column_name = 'created_by');
update study_model.participant_task_consent_version set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_task_consent_version' AND column_name = 'created_by');
ALTER TABLE study_model.participant_task_consent_version ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_task_consent_version ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_task_consent_version ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.participant_task_consent_version ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.participant_task_consent_version_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_task_consent_version_audit' AND column_name = 'created_by');
update study_model.participant_task_consent_version_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_task_consent_version_audit' AND column_name = 'created_by');
ALTER TABLE study_model.participant_task_consent_version_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_task_consent_version_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_task_consent_version_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.participant_task_consent_version_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.participant_task_document set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_task_document' AND column_name = 'created_by');
update study_model.participant_task_document set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_task_document' AND column_name = 'created_by');
ALTER TABLE study_model.participant_task_document ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_task_document ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_task_document ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.participant_task_document ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.participant_task_document_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_task_document_audit' AND column_name = 'created_by');
update study_model.participant_task_document_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_task_document_audit' AND column_name = 'created_by');
ALTER TABLE study_model.participant_task_document_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_task_document_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_task_document_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.participant_task_document_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.participant_task_entry set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_task_entry' AND column_name = 'created_by');
update study_model.participant_task_entry set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_task_entry' AND column_name = 'created_by');
ALTER TABLE study_model.participant_task_entry ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_task_entry ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_task_entry ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.participant_task_entry ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.participant_task_entry_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_task_entry_audit' AND column_name = 'created_by');
update study_model.participant_task_entry_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_task_entry_audit' AND column_name = 'created_by');
ALTER TABLE study_model.participant_task_entry_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_task_entry_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_task_entry_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.participant_task_entry_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.participant_task_relationship set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_task_relationship' AND column_name = 'created_by');
update study_model.participant_task_relationship set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_task_relationship' AND column_name = 'created_by');
ALTER TABLE study_model.participant_task_relationship ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_task_relationship ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_task_relationship ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.participant_task_relationship ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.participant_task_relationship_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_task_relationship_audit' AND column_name = 'created_by');
update study_model.participant_task_relationship_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_task_relationship_audit' AND column_name = 'created_by');
ALTER TABLE study_model.participant_task_relationship_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_task_relationship_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_task_relationship_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.participant_task_relationship_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.participant_task_rule set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_task_rule' AND column_name = 'created_by');
update study_model.participant_task_rule set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_task_rule' AND column_name = 'created_by');
ALTER TABLE study_model.participant_task_rule ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_task_rule ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_task_rule ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.participant_task_rule ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.participant_task_rule_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_task_rule_audit' AND column_name = 'created_by');
update study_model.participant_task_rule_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_task_rule_audit' AND column_name = 'created_by');
ALTER TABLE study_model.participant_task_rule_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_task_rule_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_task_rule_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.participant_task_rule_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.participant_workflow set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_workflow' AND column_name = 'created_by');
update study_model.participant_workflow set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_workflow' AND column_name = 'created_by');
ALTER TABLE study_model.participant_workflow ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_workflow ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_workflow ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.participant_workflow ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.participant_workflow_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_workflow_audit' AND column_name = 'created_by');
update study_model.participant_workflow_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'participant_workflow_audit' AND column_name = 'created_by');
ALTER TABLE study_model.participant_workflow_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_workflow_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.participant_workflow_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.participant_workflow_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.password_history set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'password_history' AND column_name = 'created_by');
update study_model.password_history set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'password_history' AND column_name = 'created_by');
ALTER TABLE study_model.password_history ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.password_history ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.password_history ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.password_history ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.password_history_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'password_history_audit' AND column_name = 'created_by');
update study_model.password_history_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'password_history_audit' AND column_name = 'created_by');
ALTER TABLE study_model.password_history_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.password_history_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.password_history_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.password_history_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.permission_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'permission_audit' AND column_name = 'created_by');
update study_model.permission_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'permission_audit' AND column_name = 'created_by');
ALTER TABLE study_model.permission_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.permission_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.permission_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.permission_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.person set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'person' AND column_name = 'created_by');
update study_model.person set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'person' AND column_name = 'created_by');
ALTER TABLE study_model.person ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.person ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.person ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.person ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.person_attribute set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'person_attribute' AND column_name = 'created_by');
update study_model.person_attribute set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'person_attribute' AND column_name = 'created_by');
ALTER TABLE study_model.person_attribute ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.person_attribute ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.person_attribute ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.person_attribute ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.person_attribute_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'person_attribute_audit' AND column_name = 'created_by');
update study_model.person_attribute_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'person_attribute_audit' AND column_name = 'created_by');
ALTER TABLE study_model.person_attribute_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.person_attribute_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.person_attribute_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.person_attribute_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.person_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'person_audit' AND column_name = 'created_by');
update study_model.person_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'person_audit' AND column_name = 'created_by');
ALTER TABLE study_model.person_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.person_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.person_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.person_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.person_consent_version set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'person_consent_version' AND column_name = 'created_by');
update study_model.person_consent_version set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'person_consent_version' AND column_name = 'created_by');
ALTER TABLE study_model.person_consent_version ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.person_consent_version ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.person_consent_version ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.person_consent_version ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.person_consent_version_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'person_consent_version_audit' AND column_name = 'created_by');
update study_model.person_consent_version_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'person_consent_version_audit' AND column_name = 'created_by');
ALTER TABLE study_model.person_consent_version_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.person_consent_version_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.person_consent_version_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.person_consent_version_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.person_group set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'person_group' AND column_name = 'created_by');
update study_model.person_group set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'person_group' AND column_name = 'created_by');
ALTER TABLE study_model.person_group ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.person_group ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.person_group ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.person_group ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.person_group_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'person_group_audit' AND column_name = 'created_by');
update study_model.person_group_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'person_group_audit' AND column_name = 'created_by');
ALTER TABLE study_model.person_group_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.person_group_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.person_group_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.person_group_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.person_group_person set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'person_group_person' AND column_name = 'created_by');
update study_model.person_group_person set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'person_group_person' AND column_name = 'created_by');
ALTER TABLE study_model.person_group_person ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.person_group_person ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.person_group_person ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.person_group_person ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.person_group_person_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'person_group_person_audit' AND column_name = 'created_by');
update study_model.person_group_person_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'person_group_person_audit' AND column_name = 'created_by');
ALTER TABLE study_model.person_group_person_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.person_group_person_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.person_group_person_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.person_group_person_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.person_group_task set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'person_group_task' AND column_name = 'created_by');
update study_model.person_group_task set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'person_group_task' AND column_name = 'created_by');
ALTER TABLE study_model.person_group_task ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.person_group_task ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.person_group_task ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.person_group_task ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.person_group_task_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'person_group_task_audit' AND column_name = 'created_by');
update study_model.person_group_task_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'person_group_task_audit' AND column_name = 'created_by');
ALTER TABLE study_model.person_group_task_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.person_group_task_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.person_group_task_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.person_group_task_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.person_process set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'person_process' AND column_name = 'created_by');
update study_model.person_process set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'person_process' AND column_name = 'created_by');
ALTER TABLE study_model.person_process ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.person_process ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.person_process ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.person_process ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.person_process_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'person_process_audit' AND column_name = 'created_by');
update study_model.person_process_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'person_process_audit' AND column_name = 'created_by');
ALTER TABLE study_model.person_process_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.person_process_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.person_process_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.person_process_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.person_relationship set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'person_relationship' AND column_name = 'created_by');
update study_model.person_relationship set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'person_relationship' AND column_name = 'created_by');
ALTER TABLE study_model.person_relationship ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.person_relationship ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.person_relationship ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.person_relationship ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.person_relationship_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'person_relationship_audit' AND column_name = 'created_by');
update study_model.person_relationship_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'person_relationship_audit' AND column_name = 'created_by');
ALTER TABLE study_model.person_relationship_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.person_relationship_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.person_relationship_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.person_relationship_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.person_study_role set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'person_study_role' AND column_name = 'created_by');
update study_model.person_study_role set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'person_study_role' AND column_name = 'created_by');
ALTER TABLE study_model.person_study_role ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.person_study_role ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.person_study_role ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.person_study_role ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.person_study_role_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'person_study_role_audit' AND column_name = 'created_by');
update study_model.person_study_role_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'person_study_role_audit' AND column_name = 'created_by');
ALTER TABLE study_model.person_study_role_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.person_study_role_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.person_study_role_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.person_study_role_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.person_workflow set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'person_workflow' AND column_name = 'created_by');
update study_model.person_workflow set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'person_workflow' AND column_name = 'created_by');
ALTER TABLE study_model.person_workflow ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.person_workflow ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.person_workflow ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.person_workflow ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.person_workflow_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'person_workflow_audit' AND column_name = 'created_by');
update study_model.person_workflow_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'person_workflow_audit' AND column_name = 'created_by');
ALTER TABLE study_model.person_workflow_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.person_workflow_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.person_workflow_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.person_workflow_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.process set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'process' AND column_name = 'created_by');
update study_model.process set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'process' AND column_name = 'created_by');
ALTER TABLE study_model.process ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.process ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.process ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.process ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.process_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'process_audit' AND column_name = 'created_by');
update study_model.process_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'process_audit' AND column_name = 'created_by');
ALTER TABLE study_model.process_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.process_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.process_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.process_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.process_event set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'process_event' AND column_name = 'created_by');
update study_model.process_event set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'process_event' AND column_name = 'created_by');
ALTER TABLE study_model.process_event ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.process_event ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.process_event ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.process_event ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.process_event_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'process_event_audit' AND column_name = 'created_by');
update study_model.process_event_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'process_event_audit' AND column_name = 'created_by');
ALTER TABLE study_model.process_event_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.process_event_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.process_event_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.process_event_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.process_link set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'process_link' AND column_name = 'created_by');
update study_model.process_link set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'process_link' AND column_name = 'created_by');
ALTER TABLE study_model.process_link ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.process_link ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.process_link ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.process_link ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.process_link_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'process_link_audit' AND column_name = 'created_by');
update study_model.process_link_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'process_link_audit' AND column_name = 'created_by');
ALTER TABLE study_model.process_link_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.process_link_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.process_link_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.process_link_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.process_notification set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'process_notification' AND column_name = 'created_by');
update study_model.process_notification set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'process_notification' AND column_name = 'created_by');
ALTER TABLE study_model.process_notification ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.process_notification ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.process_notification ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.process_notification ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.process_notification_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'process_notification_audit' AND column_name = 'created_by');
update study_model.process_notification_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'process_notification_audit' AND column_name = 'created_by');
ALTER TABLE study_model.process_notification_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.process_notification_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.process_notification_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.process_notification_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.process_type set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'process_type' AND column_name = 'created_by');
update study_model.process_type set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'process_type' AND column_name = 'created_by');
ALTER TABLE study_model.process_type ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.process_type ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.process_type ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.process_type ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.process_type_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'process_type_audit' AND column_name = 'created_by');
update study_model.process_type_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'process_type_audit' AND column_name = 'created_by');
ALTER TABLE study_model.process_type_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.process_type_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.process_type_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.process_type_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.process_var set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'process_var' AND column_name = 'created_by');
update study_model.process_var set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'process_var' AND column_name = 'created_by');
ALTER TABLE study_model.process_var ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.process_var ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.process_var ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.process_var ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.process_var_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'process_var_audit' AND column_name = 'created_by');
update study_model.process_var_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'process_var_audit' AND column_name = 'created_by');
ALTER TABLE study_model.process_var_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.process_var_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.process_var_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.process_var_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.provider set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'provider' AND column_name = 'created_by');
update study_model.provider set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'provider' AND column_name = 'created_by');
ALTER TABLE study_model.provider ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.provider ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.provider ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.provider ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.provider_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'provider_audit' AND column_name = 'created_by');
update study_model.provider_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'provider_audit' AND column_name = 'created_by');
ALTER TABLE study_model.provider_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.provider_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.provider_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.provider_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.reminders set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'reminders' AND column_name = 'created_by');
update study_model.reminders set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'reminders' AND column_name = 'created_by');
ALTER TABLE study_model.reminders ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.reminders ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.reminders ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.reminders ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.reminders_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'reminders_audit' AND column_name = 'created_by');
update study_model.reminders_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'reminders_audit' AND column_name = 'created_by');
ALTER TABLE study_model.reminders_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.reminders_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.reminders_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.reminders_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.reward set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'reward' AND column_name = 'created_by');
update study_model.reward set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'reward' AND column_name = 'created_by');
ALTER TABLE study_model.reward ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.reward ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.reward ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.reward ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.reward_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'reward_audit' AND column_name = 'created_by');
update study_model.reward_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'reward_audit' AND column_name = 'created_by');
ALTER TABLE study_model.reward_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.reward_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.reward_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.reward_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.reward_badge set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'reward_badge' AND column_name = 'created_by');
update study_model.reward_badge set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'reward_badge' AND column_name = 'created_by');
ALTER TABLE study_model.reward_badge ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.reward_badge ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.reward_badge ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.reward_badge ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.reward_badge_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'reward_badge_audit' AND column_name = 'created_by');
update study_model.reward_badge_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'reward_badge_audit' AND column_name = 'created_by');
ALTER TABLE study_model.reward_badge_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.reward_badge_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.reward_badge_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.reward_badge_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.reward_device set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'reward_device' AND column_name = 'created_by');
update study_model.reward_device set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'reward_device' AND column_name = 'created_by');
ALTER TABLE study_model.reward_device ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.reward_device ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.reward_device ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.reward_device ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.reward_device_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'reward_device_audit' AND column_name = 'created_by');
update study_model.reward_device_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'reward_device_audit' AND column_name = 'created_by');
ALTER TABLE study_model.reward_device_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.reward_device_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.reward_device_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.reward_device_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.reward_monetary_adjustable set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'reward_monetary_adjustable' AND column_name = 'created_by');
update study_model.reward_monetary_adjustable set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'reward_monetary_adjustable' AND column_name = 'created_by');
ALTER TABLE study_model.reward_monetary_adjustable ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.reward_monetary_adjustable ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.reward_monetary_adjustable ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.reward_monetary_adjustable ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.reward_monetary_adjustable_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'reward_monetary_adjustable_audit' AND column_name = 'created_by');
update study_model.reward_monetary_adjustable_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'reward_monetary_adjustable_audit' AND column_name = 'created_by');
ALTER TABLE study_model.reward_monetary_adjustable_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.reward_monetary_adjustable_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.reward_monetary_adjustable_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.reward_monetary_adjustable_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.reward_monetary_fixed set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'reward_monetary_fixed' AND column_name = 'created_by');
update study_model.reward_monetary_fixed set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'reward_monetary_fixed' AND column_name = 'created_by');
ALTER TABLE study_model.reward_monetary_fixed ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.reward_monetary_fixed ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.reward_monetary_fixed ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.reward_monetary_fixed ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.reward_monetary_fixed_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'reward_monetary_fixed_audit' AND column_name = 'created_by');
update study_model.reward_monetary_fixed_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'reward_monetary_fixed_audit' AND column_name = 'created_by');
ALTER TABLE study_model.reward_monetary_fixed_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.reward_monetary_fixed_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.reward_monetary_fixed_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.reward_monetary_fixed_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.settings set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'settings' AND column_name = 'created_by');
update study_model.settings set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'settings' AND column_name = 'created_by');
ALTER TABLE study_model.settings ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.settings ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.settings ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.settings ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.settings_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'settings_audit' AND column_name = 'created_by');
update study_model.settings_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'settings_audit' AND column_name = 'created_by');
ALTER TABLE study_model.settings_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.settings_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.settings_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.settings_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.site set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'site' AND column_name = 'created_by');
update study_model.site set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'site' AND column_name = 'created_by');
ALTER TABLE study_model.site ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.site ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.site ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.site ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.site_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'site_audit' AND column_name = 'created_by');
update study_model.site_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'site_audit' AND column_name = 'created_by');
ALTER TABLE study_model.site_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.site_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.site_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.site_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.site_organization set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'site_organization' AND column_name = 'created_by');
update study_model.site_organization set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'site_organization' AND column_name = 'created_by');
ALTER TABLE study_model.site_organization ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.site_organization ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.site_organization ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.site_organization ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.site_organization_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'site_organization_audit' AND column_name = 'created_by');
update study_model.site_organization_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'site_organization_audit' AND column_name = 'created_by');
ALTER TABLE study_model.site_organization_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.site_organization_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.site_organization_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.site_organization_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.social_accounts set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'social_accounts' AND column_name = 'created_by');
update study_model.social_accounts set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'social_accounts' AND column_name = 'created_by');
ALTER TABLE study_model.social_accounts ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.social_accounts ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.social_accounts ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.social_accounts ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.social_accounts_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'social_accounts_audit' AND column_name = 'created_by');
update study_model.social_accounts_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'social_accounts_audit' AND column_name = 'created_by');
ALTER TABLE study_model.social_accounts_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.social_accounts_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.social_accounts_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.social_accounts_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.study set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study' AND column_name = 'created_by');
update study_model.study set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study' AND column_name = 'created_by');
ALTER TABLE study_model.study ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.study ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.study_arm set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_arm' AND column_name = 'created_by');
update study_model.study_arm set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_arm' AND column_name = 'created_by');
ALTER TABLE study_model.study_arm ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_arm ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_arm ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.study_arm ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.study_arm_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_arm_audit' AND column_name = 'created_by');
update study_model.study_arm_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_arm_audit' AND column_name = 'created_by');
ALTER TABLE study_model.study_arm_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_arm_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_arm_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.study_arm_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.study_arm_game set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_arm_game' AND column_name = 'created_by');
update study_model.study_arm_game set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_arm_game' AND column_name = 'created_by');
ALTER TABLE study_model.study_arm_game ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_arm_game ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_arm_game ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.study_arm_game ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.study_arm_game_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_arm_game_audit' AND column_name = 'created_by');
update study_model.study_arm_game_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_arm_game_audit' AND column_name = 'created_by');
ALTER TABLE study_model.study_arm_game_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_arm_game_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_arm_game_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.study_arm_game_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.study_arm_participant set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_arm_participant' AND column_name = 'created_by');
update study_model.study_arm_participant set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_arm_participant' AND column_name = 'created_by');
ALTER TABLE study_model.study_arm_participant ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_arm_participant ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_arm_participant ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.study_arm_participant ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.study_arm_participant_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_arm_participant_audit' AND column_name = 'created_by');
update study_model.study_arm_participant_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_arm_participant_audit' AND column_name = 'created_by');
ALTER TABLE study_model.study_arm_participant_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_arm_participant_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_arm_participant_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.study_arm_participant_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.study_arm_participant_property_type_values set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_arm_participant_property_type_values' AND column_name = 'created_by');
update study_model.study_arm_participant_property_type_values set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_arm_participant_property_type_values' AND column_name = 'created_by');
ALTER TABLE study_model.study_arm_participant_property_type_values ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_arm_participant_property_type_values ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_arm_participant_property_type_values ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.study_arm_participant_property_type_values ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.study_arm_participant_property_type_values_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_arm_participant_property_type_values_audit' AND column_name = 'created_by');
update study_model.study_arm_participant_property_type_values_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_arm_participant_property_type_values_audit' AND column_name = 'created_by');
ALTER TABLE study_model.study_arm_participant_property_type_values_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_arm_participant_property_type_values_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_arm_participant_property_type_values_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.study_arm_participant_property_type_values_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.study_arm_property_types set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_arm_property_types' AND column_name = 'created_by');
update study_model.study_arm_property_types set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_arm_property_types' AND column_name = 'created_by');
ALTER TABLE study_model.study_arm_property_types ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_arm_property_types ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_arm_property_types ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.study_arm_property_types ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.study_arm_property_types_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_arm_property_types_audit' AND column_name = 'created_by');
update study_model.study_arm_property_types_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_arm_property_types_audit' AND column_name = 'created_by');
ALTER TABLE study_model.study_arm_property_types_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_arm_property_types_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_arm_property_types_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.study_arm_property_types_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.study_arm_task set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_arm_task' AND column_name = 'created_by');
update study_model.study_arm_task set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_arm_task' AND column_name = 'created_by');
ALTER TABLE study_model.study_arm_task ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_arm_task ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_arm_task ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.study_arm_task ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.study_arm_task_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_arm_task_audit' AND column_name = 'created_by');
update study_model.study_arm_task_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_arm_task_audit' AND column_name = 'created_by');
ALTER TABLE study_model.study_arm_task_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_arm_task_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_arm_task_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.study_arm_task_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.study_attribute set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_attribute' AND column_name = 'created_by');
update study_model.study_attribute set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_attribute' AND column_name = 'created_by');
ALTER TABLE study_model.study_attribute ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_attribute ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_attribute ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.study_attribute ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.study_attribute_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_attribute_audit' AND column_name = 'created_by');
update study_model.study_attribute_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_attribute_audit' AND column_name = 'created_by');
ALTER TABLE study_model.study_attribute_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_attribute_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_attribute_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.study_attribute_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.study_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_audit' AND column_name = 'created_by');
update study_model.study_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_audit' AND column_name = 'created_by');
ALTER TABLE study_model.study_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.study_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.study_organization set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_organization' AND column_name = 'created_by');
update study_model.study_organization set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_organization' AND column_name = 'created_by');
ALTER TABLE study_model.study_organization ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_organization ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_organization ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.study_organization ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.study_organization_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_organization_audit' AND column_name = 'created_by');
update study_model.study_organization_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_organization_audit' AND column_name = 'created_by');
ALTER TABLE study_model.study_organization_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_organization_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_organization_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.study_organization_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.study_role set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_role' AND column_name = 'created_by');
update study_model.study_role set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_role' AND column_name = 'created_by');
ALTER TABLE study_model.study_role ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_role ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_role ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.study_role ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.study_role_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_role_audit' AND column_name = 'created_by');
update study_model.study_role_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_role_audit' AND column_name = 'created_by');
ALTER TABLE study_model.study_role_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_role_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_role_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.study_role_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.study_role_permission set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_role_permission' AND column_name = 'created_by');
update study_model.study_role_permission set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_role_permission' AND column_name = 'created_by');
ALTER TABLE study_model.study_role_permission ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_role_permission ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_role_permission ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.study_role_permission ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.study_role_type set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_role_type' AND column_name = 'created_by');
update study_model.study_role_type set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_role_type' AND column_name = 'created_by');
ALTER TABLE study_model.study_role_type ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_role_type ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_role_type ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.study_role_type ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.study_role_type_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_role_type_audit' AND column_name = 'created_by');
update study_model.study_role_type_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_role_type_audit' AND column_name = 'created_by');
ALTER TABLE study_model.study_role_type_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_role_type_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_role_type_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.study_role_type_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.study_site set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_site' AND column_name = 'created_by');
update study_model.study_site set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_site' AND column_name = 'created_by');
ALTER TABLE study_model.study_site ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_site ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_site ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.study_site ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.study_site_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_site_audit' AND column_name = 'created_by');
update study_model.study_site_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_site_audit' AND column_name = 'created_by');
ALTER TABLE study_model.study_site_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_site_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_site_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.study_site_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.study_version set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_version' AND column_name = 'created_by');
update study_model.study_version set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_version' AND column_name = 'created_by');
ALTER TABLE study_model.study_version ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_version ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_version ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.study_version ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.study_version_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_version_audit' AND column_name = 'created_by');
update study_model.study_version_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_version_audit' AND column_name = 'created_by');
ALTER TABLE study_model.study_version_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_version_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_version_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.study_version_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.study_version_consent_group set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_version_consent_group' AND column_name = 'created_by');
update study_model.study_version_consent_group set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_version_consent_group' AND column_name = 'created_by');
ALTER TABLE study_model.study_version_consent_group ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_version_consent_group ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_version_consent_group ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.study_version_consent_group ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.study_version_consent_group_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_version_consent_group_audit' AND column_name = 'created_by');
update study_model.study_version_consent_group_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_version_consent_group_audit' AND column_name = 'created_by');
ALTER TABLE study_model.study_version_consent_group_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_version_consent_group_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_version_consent_group_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.study_version_consent_group_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.study_version_study_arm set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_version_study_arm' AND column_name = 'created_by');
update study_model.study_version_study_arm set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_version_study_arm' AND column_name = 'created_by');
ALTER TABLE study_model.study_version_study_arm ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_version_study_arm ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_version_study_arm ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.study_version_study_arm ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.study_version_study_arm_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_version_study_arm_audit' AND column_name = 'created_by');
update study_model.study_version_study_arm_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_version_study_arm_audit' AND column_name = 'created_by');
ALTER TABLE study_model.study_version_study_arm_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_version_study_arm_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_version_study_arm_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.study_version_study_arm_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.study_version_workflow set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_version_workflow' AND column_name = 'created_by');
update study_model.study_version_workflow set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_version_workflow' AND column_name = 'created_by');
ALTER TABLE study_model.study_version_workflow ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_version_workflow ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_version_workflow ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.study_version_workflow ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.study_version_workflow_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_version_workflow_audit' AND column_name = 'created_by');
update study_model.study_version_workflow_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'study_version_workflow_audit' AND column_name = 'created_by');
ALTER TABLE study_model.study_version_workflow_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_version_workflow_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.study_version_workflow_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.study_version_workflow_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.system_attribute set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'system_attribute' AND column_name = 'created_by');
update study_model.system_attribute set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'system_attribute' AND column_name = 'created_by');
ALTER TABLE study_model.system_attribute ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.system_attribute ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.system_attribute ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.system_attribute ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.system_attribute_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'system_attribute_audit' AND column_name = 'created_by');
update study_model.system_attribute_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'system_attribute_audit' AND column_name = 'created_by');
ALTER TABLE study_model.system_attribute_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.system_attribute_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.system_attribute_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.system_attribute_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.task set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'task' AND column_name = 'created_by');
update study_model.task set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'task' AND column_name = 'created_by');
ALTER TABLE study_model.task ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.task ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.task ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.task ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.task_attribute set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'task_attribute' AND column_name = 'created_by');
update study_model.task_attribute set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'task_attribute' AND column_name = 'created_by');
ALTER TABLE study_model.task_attribute ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.task_attribute ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.task_attribute ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.task_attribute ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.task_attribute_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'task_attribute_audit' AND column_name = 'created_by');
update study_model.task_attribute_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'task_attribute_audit' AND column_name = 'created_by');
ALTER TABLE study_model.task_attribute_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.task_attribute_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.task_attribute_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.task_attribute_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.task_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'task_audit' AND column_name = 'created_by');
update study_model.task_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'task_audit' AND column_name = 'created_by');
ALTER TABLE study_model.task_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.task_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.task_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.task_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.task_category set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'task_category' AND column_name = 'created_by');
update study_model.task_category set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'task_category' AND column_name = 'created_by');
ALTER TABLE study_model.task_category ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.task_category ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.task_category ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.task_category ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.task_category_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'task_category_audit' AND column_name = 'created_by');
update study_model.task_category_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'task_category_audit' AND column_name = 'created_by');
ALTER TABLE study_model.task_category_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.task_category_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.task_category_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.task_category_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.task_generation_rule set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'task_generation_rule' AND column_name = 'created_by');
update study_model.task_generation_rule set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'task_generation_rule' AND column_name = 'created_by');
ALTER TABLE study_model.task_generation_rule ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.task_generation_rule ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.task_generation_rule ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.task_generation_rule ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.task_generation_rule_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'task_generation_rule_audit' AND column_name = 'created_by');
update study_model.task_generation_rule_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'task_generation_rule_audit' AND column_name = 'created_by');
ALTER TABLE study_model.task_generation_rule_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.task_generation_rule_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.task_generation_rule_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.task_generation_rule_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.task_language set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'task_language' AND column_name = 'created_by');
update study_model.task_language set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'task_language' AND column_name = 'created_by');
ALTER TABLE study_model.task_language ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.task_language ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.task_language ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.task_language ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.task_language_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'task_language_audit' AND column_name = 'created_by');
update study_model.task_language_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'task_language_audit' AND column_name = 'created_by');
ALTER TABLE study_model.task_language_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.task_language_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.task_language_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.task_language_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.task_relationship set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'task_relationship' AND column_name = 'created_by');
update study_model.task_relationship set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'task_relationship' AND column_name = 'created_by');
ALTER TABLE study_model.task_relationship ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.task_relationship ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.task_relationship ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.task_relationship ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.task_relationship_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'task_relationship_audit' AND column_name = 'created_by');
update study_model.task_relationship_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'task_relationship_audit' AND column_name = 'created_by');
ALTER TABLE study_model.task_relationship_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.task_relationship_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.task_relationship_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.task_relationship_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.task_rule set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'task_rule' AND column_name = 'created_by');
update study_model.task_rule set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'task_rule' AND column_name = 'created_by');
ALTER TABLE study_model.task_rule ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.task_rule ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.task_rule ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.task_rule ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.task_type set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'task_type' AND column_name = 'created_by');
update study_model.task_type set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'task_type' AND column_name = 'created_by');
ALTER TABLE study_model.task_type ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.task_type ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.task_type ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.task_type ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.task_type_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'task_type_audit' AND column_name = 'created_by');
update study_model.task_type_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'task_type_audit' AND column_name = 'created_by');
ALTER TABLE study_model.task_type_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.task_type_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.task_type_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.task_type_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.task_version set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'task_version' AND column_name = 'created_by');
update study_model.task_version set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'task_version' AND column_name = 'created_by');
ALTER TABLE study_model.task_version ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.task_version ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.task_version ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.task_version ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.task_version_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'task_version_audit' AND column_name = 'created_by');
update study_model.task_version_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'task_version_audit' AND column_name = 'created_by');
ALTER TABLE study_model.task_version_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.task_version_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.task_version_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.task_version_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.timezone set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'timezone' AND column_name = 'created_by');
update study_model.timezone set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'timezone' AND column_name = 'created_by');
ALTER TABLE study_model.timezone ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.timezone ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.timezone ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.timezone ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.timezone_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'timezone_audit' AND column_name = 'created_by');
update study_model.timezone_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'timezone_audit' AND column_name = 'created_by');
ALTER TABLE study_model.timezone_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.timezone_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.timezone_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.timezone_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.two_factor_code set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'two_factor_code' AND column_name = 'created_by');
update study_model.two_factor_code set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'two_factor_code' AND column_name = 'created_by');
ALTER TABLE study_model.two_factor_code ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.two_factor_code ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.two_factor_code ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.two_factor_code ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.two_factor_code_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'two_factor_code_audit' AND column_name = 'created_by');
update study_model.two_factor_code_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'two_factor_code_audit' AND column_name = 'created_by');
ALTER TABLE study_model.two_factor_code_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.two_factor_code_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.two_factor_code_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.two_factor_code_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.user set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'user' AND column_name = 'created_by');
update study_model.user set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'user' AND column_name = 'created_by');
ALTER TABLE study_model.user ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.user ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.user ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.user ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.user_attribute set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'user_attribute' AND column_name = 'created_by');
update study_model.user_attribute set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'user_attribute' AND column_name = 'created_by');
ALTER TABLE study_model.user_attribute ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.user_attribute ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.user_attribute ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.user_attribute ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.user_attribute_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'user_attribute_audit' AND column_name = 'created_by');
update study_model.user_attribute_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'user_attribute_audit' AND column_name = 'created_by');
ALTER TABLE study_model.user_attribute_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.user_attribute_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.user_attribute_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.user_attribute_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.user_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'user_audit' AND column_name = 'created_by');
update study_model.user_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'user_audit' AND column_name = 'created_by');
ALTER TABLE study_model.user_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.user_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.user_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.user_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.wallet_transaction set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'wallet_transaction' AND column_name = 'created_by');
update study_model.wallet_transaction set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'wallet_transaction' AND column_name = 'created_by');
ALTER TABLE study_model.wallet_transaction ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.wallet_transaction ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.wallet_transaction ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.wallet_transaction ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.wallet_transaction_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'wallet_transaction_audit' AND column_name = 'created_by');
update study_model.wallet_transaction_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'wallet_transaction_audit' AND column_name = 'created_by');
ALTER TABLE study_model.wallet_transaction_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.wallet_transaction_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.wallet_transaction_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.wallet_transaction_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.workflow set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'workflow' AND column_name = 'created_by');
update study_model.workflow set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'workflow' AND column_name = 'created_by');
ALTER TABLE study_model.workflow ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.workflow ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.workflow ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.workflow ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.workflow_attribute set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'workflow_attribute' AND column_name = 'created_by');
update study_model.workflow_attribute set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'workflow_attribute' AND column_name = 'created_by');
ALTER TABLE study_model.workflow_attribute ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.workflow_attribute ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.workflow_attribute ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.workflow_attribute ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

update study_model.workflow_attribute_audit set created_by=0 where created_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'workflow_attribute_audit' AND column_name = 'created_by');
update study_model.workflow_attribute_audit set updated_by=0 where updated_by is null and EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'workflow_attribute_audit' AND column_name = 'created_by');
ALTER TABLE study_model.workflow_attribute_audit ALTER COLUMN updated_by SET NOT NULL IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.workflow_attribute_audit ALTER COLUMN updated_by SET DEFAULT 0 IF EXISTS new_column_name updated_by;
ALTER TABLE study_model.workflow_attribute_audit ALTER COLUMN created_by SET NOT NULL IF EXISTS new_column_name created_by;
ALTER TABLE study_model.workflow_attribute_audit ALTER COLUMN created_by SET DEFAULT 0 IF EXISTS new_column_name created_by;

