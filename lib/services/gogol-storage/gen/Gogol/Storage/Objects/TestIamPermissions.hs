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
-- Module      : Gogol.Storage.Objects.TestIamPermissions
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Tests a set of permissions on the given object to see which, if any, are held by the caller.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objects.testIamPermissions@.
module Gogol.Storage.Objects.TestIamPermissions
    (
    -- * Resource
      StorageObjectsTestIamPermissionsResource

    -- ** Constructing a Request
    , newStorageObjectsTestIamPermissions
    , StorageObjectsTestIamPermissions
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.objects.testIamPermissions@ method which the
-- 'StorageObjectsTestIamPermissions' request conforms to.
type StorageObjectsTestIamPermissionsResource =
     "storage" Core.:>
       "v1" Core.:>
         "b" Core.:>
           Core.Capture "bucket" Core.Text Core.:>
             "o" Core.:>
               Core.Capture "object" Core.Text Core.:>
                 "iam" Core.:>
                   "testPermissions" Core.:>
                     Core.QueryParams "permissions" Core.Text Core.:>
                       Core.QueryParam "generation" Core.Int64 Core.:>
                         Core.QueryParam "provisionalUserProject" Core.Text
                           Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "userProject" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.Get '[Core.JSON]
                                   TestIamPermissionsResponse

-- | Tests a set of permissions on the given object to see which, if any, are held by the caller.
--
-- /See:/ 'newStorageObjectsTestIamPermissions' smart constructor.
data StorageObjectsTestIamPermissions = StorageObjectsTestIamPermissions
    {
      -- | Name of the bucket in which the object resides.
      bucket :: Core.Text
      -- | If present, selects a specific revision of this object (as opposed to the latest version, the default).
    , generation :: (Core.Maybe Core.Int64)
      -- | Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.
    , object :: Core.Text
      -- | Permissions to test.
    , permissions :: [Core.Text]
      -- | The project to be billed for this request if the target bucket is requester-pays bucket.
    , provisionalUserProject :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | The project to be billed for this request. Required for Requester Pays buckets.
    , userProject :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageObjectsTestIamPermissions' with the minimum fields required to make a request.
newStorageObjectsTestIamPermissions 
    ::  Core.Text
       -- ^  Name of the bucket in which the object resides. See 'bucket'.
    -> Core.Text
       -- ^  Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts. See 'object'.
    -> [Core.Text]
       -- ^  Permissions to test. See 'permissions'.
    -> StorageObjectsTestIamPermissions
newStorageObjectsTestIamPermissions bucket object permissions =
  StorageObjectsTestIamPermissions
    { bucket = bucket
    , generation = Core.Nothing
    , object = object
    , permissions = permissions
    , provisionalUserProject = Core.Nothing
    , uploadType = Core.Nothing
    , userProject = Core.Nothing
    }

instance Core.GoogleRequest
           StorageObjectsTestIamPermissions
         where
        type Rs StorageObjectsTestIamPermissions =
             TestIamPermissionsResponse
        type Scopes StorageObjectsTestIamPermissions =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/devstorage.full_control",
               "https://www.googleapis.com/auth/devstorage.read_only",
               "https://www.googleapis.com/auth/devstorage.read_write"]
        requestClient StorageObjectsTestIamPermissions{..}
          = go bucket object permissions generation
              provisionalUserProject
              uploadType
              userProject
              (Core.Just Core.AltJSON)
              storageService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy StorageObjectsTestIamPermissionsResource)
                      Core.mempty

