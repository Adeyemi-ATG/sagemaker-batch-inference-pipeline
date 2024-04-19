bucket_name         =  "mlops-sagemaker-test-01"     # e.g. "sagemaker-bucket-abcdefg12345"
bucket_prefix       =   "pipeline_shared/batch-scoring"    # e.g. "pipeline_shared/batch-scoring"
bucket_train_prefix =   "training/data/raw"    # e.g. "training/data/raw"
bucket_inf_prefix   =    "batch-scoring/data/raw"   # e.g. "batch-scoring/data/raw"
email_recipient     =    ["AdeyemiAkintonde@theambassadors.com"]  # e.g. ["recipient-1@example.com", "recipient-2@example.com"]
user_id             =    "adeyemi-aa"   # e.g.  "a12345"

custom_notification_config = [
  {
    step_name           =  "ModelRegisterStep" # e.g. "ModelRegisterStep"
    step_status         =   "Succeeded" # e.g. "Succeeded"
    step_custom_message =   "This is the custom message for Succeeded \"ModelRegisterStep\" step." # e.g. "This is the custom message for Succeeded \"ModelRegisterStep\" step."
  },
  {
    step_name           =  "TrainingEval" # e.g. "TrainingEval"
    step_status         =  "Failed" # e.g. "Failed"
    step_custom_message =  "This is the custom message for Failed \"TrainingEval\" step." # e.g. "This is the custom message for Failed \"TrainingEval\" step."
  }
]

# Pipeline information. Will be used by the Python helper script.
accuracy_mse_threshold     =  "10.0" # e.g. "10.0"
kms_key                    =  "arn:aws:kms:eu-west-2:593492848123:key/b999b25d-76fe-4c81-ad82-b49e91baaa57" # e.g. "arn:aws:kms:us-east-1:112233445566:key/123456a1-12b1-123c-1234-12345df12e12"
model_package_group_name =    "poc-mpg" # e.g. "poc-mpg"
notification_function_name =  "pipeline-notification-lambda" # e.g. "pipeline-notification-lambda"
pipeline_inf               =  "InferencePipeline" # e.g. "InferencePipeline"
pipeline_train             =  "TrainingPipeline" # e.g. "TrainingPipeline"
pipeline_trainwhpo         =  "TrainingWHPOPipeline" # e.g. "TrainingWHPOPipeline"

recreate_pipelines         =   "true" # e.g. "true"
role_arn                   =  "arn:aws:iam::593492848123:role/SageMakerExecutionRole-aa" # e.g. "arn:aws:iam::112233445566:role/112233445566/sm_execution_role_batch_scoring"
sg_id                      =   "sg-04131fb785fc307ba" # e.g. "sg-0a12b3c45b67de8f9"
subnet_id                  =   "subnet-082c44880335de4b4" # "subnet-01a23bcdef45ghij6"
upload_inference_data      =   false# e.g. "false"
upload_training_data       =   true# e.g. "true"


