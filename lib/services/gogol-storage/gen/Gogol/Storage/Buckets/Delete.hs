{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Storage.Buckets.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Permanently deletes an empty bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.buckets.delete@.
module Gogol.Storage.Buckets.Delete
    (
    -- * Resource
      StorageBucketsDeleteResource

    -- ** Constructing a Request
    , newStorageBucketsDelete
    , StorageBucketsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.buckets.delete@ method which the
-- 'StorageBucketsDelete' request conforms to.
type StorageBucketsDeleteResource =
     "storage" Core.:>
       "v1" Core.:>
         "b" Core.:>
           Core.Capture "bucket" Core.Text Core.:>
             Core.QueryParam "ifMetagenerationMatch" Core.Int64
               Core.:>
               Core.QueryParam "ifMetagenerationNotMatch" Core.Int64
                 Core.:>
                 Core.QueryParam "provisionalUserProject" Core.Text
                   Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "userProject" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.Delete '[Core.JSON] ()

-- | Permanently deletes an empty bucket.
--
-- /See:/ 'newStorageBucketsDelete' smart constructor.
data StorageBucketsDelete = StorageBucketsDelete
    {
      -- | Name of a bucket.
      bucket :: Core.Text
      -- | If set, only deletes the bucket if its metageneration matches this value.
    , ifMetagenerationMatch :: (Core.Maybe Core.Int64)
      -- | If set, only deletes the bucket if its metageneration does not match this value.
    , ifMetagenerationNotMatch :: (Core.Maybe Core.Int64)
      -- | The project to be billed for this request if the target bucket is requester-pays bucket.
    , provisionalUserProject :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | The project to be billed for this request. Required for Requester Pays buckets.
    , userProject :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageBucketsDelete' with the minimum fields required to make a request.
newStorageBucketsDelete 
    ::  Core.Text
       -- ^  Name of a bucket. See 'bucket'.
    -> StorageBucketsDelete
newStorageBucketsDelete bucket =
  StorageBucketsDelete
    { bucket = bucket
    , ifMetagenerationMatch = Core.Nothing
    , ifMetagenerationNotMatch = Core.Nothing
    , provisionalUserProject = Core.Nothing
    , uploadType = Core.Nothing
    , userProject = Core.Nothing
    }

instance Core.GoogleRequest StorageBucketsDelete
         where
        type Rs StorageBucketsDelete = ()
        type Scopes StorageBucketsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/devstorage.full_control",
               "https://www.googleapis.com/auth/devstorage.read_write"]
        requestClient StorageBucketsDelete{..}
          = go bucket ifMetagenerationMatch
              ifMetagenerationNotMatch
              provisionalUserProject
              uploadType
              userProject
              (Core.Just Core.AltJSON)
              storageService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy StorageBucketsDeleteResource)
                      Core.mempty

