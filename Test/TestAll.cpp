//
// Created by z on 2021/4/25.
//
#include "gtest/gtest.h"
#include "db/db_impl.h"
#include "db/filename.h"
#include "db/version_set.h"
#include "db/write_batch_internal.h"
#include "leveldb/db.h"
#include "leveldb/env.h"
#include "leveldb/write_batch.h"
#include "util/logging.h"
#include "util/testutil.h"


using namespace leveldb;



TEST(TESTALL, dbput){
    DB* db;
    //这里的Options 调用其默认构造函数
    //Options::Options() : comparator(BytewiseComparator()), env(Env::Default()) {}
    //Env* Env::Default() {
    //  static PosixDefaultEnv env_container;
    //  return env_container.env();
    //}
    Options option;
    option.create_if_missing = true;
    Status status = DB::Open(option,"/home/z/CWorkspace/leveldb/Test/testdb", &db);
    assert(status.ok());

    std::string k1 = "name";
    std::string v1 = "jim";

    status = db->Put(leveldb::WriteOptions(), k1, v1);
//    status = db->Put(leveldb::WriteOptions(), k1, "jack");
    assert(status.ok());

    status = db->Get(leveldb::ReadOptions(), k1, &v1);
    assert(status.ok());
    std::cout<<"k1:"<<k1<<"; v1:"<<v1<<std::endl;

    std::string k2 = "age";
    std::string v2 = "20";

    status = db->Put(leveldb::WriteOptions(), k2, v2);
    assert(status.ok());
    status = db->Get(leveldb::ReadOptions(), k2, &v2);
    assert(status.ok());
    std::cout<<"k2:"<<k2<<"; v2:"<<v2<<std::endl;

    status = db->Delete(leveldb::WriteOptions(), k2);
    assert(status.ok());
    std::cout<<"Delete k2.."<<std::endl;
//    status = db->Get(leveldb::ReadOptions(),k2, &v2);
//    if(!status.ok())
//        std::cerr<<"k2:"<<k2<<"; "<<status.ToString()<<std::endl;
//    else
//        std::cout<<"k2:"<<k2<<"; v2:"<<v2<<std::endl;

    delete db;
}
//Status DB::Open(const Options& options, const std::string& dbname, DB** dbptr) {
//    *dbptr = nullptr;
//
//    DBImpl * impl = new DBImpl (options, dbname); // production of a new class and assigned to DBImpl pointer dbptr
//    impl-> mutex_.Lock (); // this is a view seen source thread-locking operation atomicity
//    VersionEdit edit; // Version information
//    // Recover handles create_if_missing, error_if_exists
//    bool save_manifest = false;
//    Status s = impl-> Recover (& edit, & save_manifest); // first check the information on the hard disk of the database
//    if (s.ok () && impl-> mem_ == nullptr) {// if mem_ point is memtable memory address is stored in the database
//        // Create new log and a corresponding memtable.
//        uint64_t new_log_number = impl-> versions _-> NewFileNumber (); // generate a new version number
//        WritableFile* lfile;
//        s = options.env-> NewWritableFile (LogFileName (dbname, new_log_number), // produce a new write file
//                                           &lfile);
//        if (s.ok ()) {// if successfully created the first set log version number
//            edit.SetLogNumber(new_log_number);
//            impl-> logfile_ = lfile; // initialize the content impl
//            impl->logfile_number_ = new_log_number;
//            impl-> log_ = new log :: Writer (lfile); // initialize the log
//            impl-> mem_ = new MemTable (impl-> internal_comparator_); // save the data re-production of a MemTable
//            impl->mem_->Ref();
//        }
//    }
//    if (s.ok () && save_manifest) {// whether to restore from an older version of a file
//        edit.SetPrevLogNumber(0);  // No older logs needed after recovery.
//        edit.SetLogNumber(impl->logfile_number_);
//        s = impl->versions_->LogAndApply(&edit, &impl->mutex_);
//    }
//    if (s.ok()) {
//        impl-> DeleteObsoleteFiles (); // delete all log files is not the current log file to delete all files that are not referenced table from a certain level
//        impl-> MaybeScheduleCompaction (); // need to compress merger
//    }
//    impl-> mutex_.Unlock (); // release the lock
//    if (s.ok()) {
//        assert (impl-> mem_ = nullptr!); // not empty is determined mem_
//        * Dbptr = impl; // assignment
//    } else {
//        delete impl; // if an error releasing a new generation of impl
//    }
//    return s; // return the state s
//}

int main(int argc, char** argv){
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}





