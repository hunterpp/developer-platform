let id = 0;
let lockKey = new KalturaExclusiveLockKey();
let jobType = "";
let resetExecutionAttempts = false;

this.kaltura.request(new BatchFreeExclusiveJobAction({id, lockKey, jobType, resetExecutionAttempts}))
    .subscribe(result => {
      console.log(result);
    },
    error => {
      throw error;
    })