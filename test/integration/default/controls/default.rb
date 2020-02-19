title 'Verifying GCS Bucket.'

bucket_name = attribute('bucket_name',default:'my-storage-34567')

control "default" do
 title 'Ensure GCS Bucket is available and has versioning disabled.'

  describe google_storage_bucket(name: bucket_name) do
    it { should exist }
    its('versioning.enabled') { should eq false}
  end
end
