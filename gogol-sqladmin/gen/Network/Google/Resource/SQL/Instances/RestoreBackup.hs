{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.SQL.Instances.RestoreBackup
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Restores a backup of a Cloud SQL instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SQLInstancesRestoreBackup@.
module Network.Google.Resource.SQL.Instances.RestoreBackup
    (
    -- * REST Resource
      InstancesRestoreBackupResource

    -- * Creating a Request
    , instancesRestoreBackup'
    , InstancesRestoreBackup'

    -- * Request Lenses
    , irbQuotaUser
    , irbPrettyPrint
    , irbProject
    , irbUserIP
    , irbPayload
    , irbKey
    , irbOAuthToken
    , irbFields
    , irbInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SQLInstancesRestoreBackup@ which the
-- 'InstancesRestoreBackup'' request conforms to.
type InstancesRestoreBackupResource =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "restoreBackup" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] InstancesRestoreBackupRequest :>
                               Post '[JSON] Operation

-- | Restores a backup of a Cloud SQL instance.
--
-- /See:/ 'instancesRestoreBackup'' smart constructor.
data InstancesRestoreBackup' = InstancesRestoreBackup'
    { _irbQuotaUser   :: !(Maybe Text)
    , _irbPrettyPrint :: !Bool
    , _irbProject     :: !Text
    , _irbUserIP      :: !(Maybe Text)
    , _irbPayload     :: !InstancesRestoreBackupRequest
    , _irbKey         :: !(Maybe AuthKey)
    , _irbOAuthToken  :: !(Maybe OAuthToken)
    , _irbFields      :: !(Maybe Text)
    , _irbInstance    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesRestoreBackup'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irbQuotaUser'
--
-- * 'irbPrettyPrint'
--
-- * 'irbProject'
--
-- * 'irbUserIP'
--
-- * 'irbPayload'
--
-- * 'irbKey'
--
-- * 'irbOAuthToken'
--
-- * 'irbFields'
--
-- * 'irbInstance'
instancesRestoreBackup'
    :: Text -- ^ 'project'
    -> InstancesRestoreBackupRequest -- ^ 'payload'
    -> Text -- ^ 'instance'
    -> InstancesRestoreBackup'
instancesRestoreBackup' pIrbProject_ pIrbPayload_ pIrbInstance_ =
    InstancesRestoreBackup'
    { _irbQuotaUser = Nothing
    , _irbPrettyPrint = True
    , _irbProject = pIrbProject_
    , _irbUserIP = Nothing
    , _irbPayload = pIrbPayload_
    , _irbKey = Nothing
    , _irbOAuthToken = Nothing
    , _irbFields = Nothing
    , _irbInstance = pIrbInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
irbQuotaUser :: Lens' InstancesRestoreBackup' (Maybe Text)
irbQuotaUser
  = lens _irbQuotaUser (\ s a -> s{_irbQuotaUser = a})

-- | Returns response with indentations and line breaks.
irbPrettyPrint :: Lens' InstancesRestoreBackup' Bool
irbPrettyPrint
  = lens _irbPrettyPrint
      (\ s a -> s{_irbPrettyPrint = a})

-- | Project ID of the project that contains the instance.
irbProject :: Lens' InstancesRestoreBackup' Text
irbProject
  = lens _irbProject (\ s a -> s{_irbProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
irbUserIP :: Lens' InstancesRestoreBackup' (Maybe Text)
irbUserIP
  = lens _irbUserIP (\ s a -> s{_irbUserIP = a})

-- | Multipart request metadata.
irbPayload :: Lens' InstancesRestoreBackup' InstancesRestoreBackupRequest
irbPayload
  = lens _irbPayload (\ s a -> s{_irbPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
irbKey :: Lens' InstancesRestoreBackup' (Maybe AuthKey)
irbKey = lens _irbKey (\ s a -> s{_irbKey = a})

-- | OAuth 2.0 token for the current user.
irbOAuthToken :: Lens' InstancesRestoreBackup' (Maybe OAuthToken)
irbOAuthToken
  = lens _irbOAuthToken
      (\ s a -> s{_irbOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
irbFields :: Lens' InstancesRestoreBackup' (Maybe Text)
irbFields
  = lens _irbFields (\ s a -> s{_irbFields = a})

-- | Cloud SQL instance ID. This does not include the project ID.
irbInstance :: Lens' InstancesRestoreBackup' Text
irbInstance
  = lens _irbInstance (\ s a -> s{_irbInstance = a})

instance GoogleAuth InstancesRestoreBackup' where
        _AuthKey = irbKey . _Just
        _AuthToken = irbOAuthToken . _Just

instance GoogleRequest InstancesRestoreBackup' where
        type Rs InstancesRestoreBackup' = Operation
        request = requestWith sQLAdminRequest
        requestWith rq InstancesRestoreBackup'{..}
          = go _irbProject _irbInstance _irbQuotaUser
              (Just _irbPrettyPrint)
              _irbUserIP
              _irbFields
              _irbKey
              _irbOAuthToken
              (Just AltJSON)
              _irbPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy InstancesRestoreBackupResource)
                      rq
