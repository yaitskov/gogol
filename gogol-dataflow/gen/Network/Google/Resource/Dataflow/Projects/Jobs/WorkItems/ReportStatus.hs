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
-- Module      : Network.Google.Resource.Dataflow.Projects.Jobs.WorkItems.ReportStatus
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Reports the status of dataflow WorkItems leased by a worker.
--
-- /See:/ <https://cloud.google.com/dataflow Google Dataflow API Reference> for @DataflowProjectsJobsWorkItemsReportStatus@.
module Network.Google.Resource.Dataflow.Projects.Jobs.WorkItems.ReportStatus
    (
    -- * REST Resource
      ProjectsJobsWorkItemsReportStatusResource

    -- * Creating a Request
    , projectsJobsWorkItemsReportStatus'
    , ProjectsJobsWorkItemsReportStatus'

    -- * Request Lenses
    , pjwirsXgafv
    , pjwirsQuotaUser
    , pjwirsPrettyPrint
    , pjwirsJobId
    , pjwirsUploadProtocol
    , pjwirsPp
    , pjwirsAccessToken
    , pjwirsUploadType
    , pjwirsPayload
    , pjwirsBearerToken
    , pjwirsKey
    , pjwirsProjectId
    , pjwirsOAuthToken
    , pjwirsFields
    , pjwirsCallback
    ) where

import           Network.Google.Dataflow.Types
import           Network.Google.Prelude

-- | A resource alias for @DataflowProjectsJobsWorkItemsReportStatus@ which the
-- 'ProjectsJobsWorkItemsReportStatus'' request conforms to.
type ProjectsJobsWorkItemsReportStatusResource =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "jobs" :>
             Capture "jobId" Text :>
               "workItems:reportStatus" :>
                 QueryParam "$.xgafv" Text :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "pp" Bool :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "bearer_token" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "quotaUser" Text :>
                                 QueryParam "prettyPrint" Bool :>
                                   QueryParam "fields" Text :>
                                     QueryParam "key" AuthKey :>
                                       QueryParam "oauth_token" OAuthToken :>
                                         QueryParam "alt" AltJSON :>
                                           ReqBody '[JSON]
                                             ReportWorkItemStatusRequest
                                             :>
                                             Post '[JSON]
                                               ReportWorkItemStatusResponse

-- | Reports the status of dataflow WorkItems leased by a worker.
--
-- /See:/ 'projectsJobsWorkItemsReportStatus'' smart constructor.
data ProjectsJobsWorkItemsReportStatus' = ProjectsJobsWorkItemsReportStatus'
    { _pjwirsXgafv          :: !(Maybe Text)
    , _pjwirsQuotaUser      :: !(Maybe Text)
    , _pjwirsPrettyPrint    :: !Bool
    , _pjwirsJobId          :: !Text
    , _pjwirsUploadProtocol :: !(Maybe Text)
    , _pjwirsPp             :: !Bool
    , _pjwirsAccessToken    :: !(Maybe Text)
    , _pjwirsUploadType     :: !(Maybe Text)
    , _pjwirsPayload        :: !ReportWorkItemStatusRequest
    , _pjwirsBearerToken    :: !(Maybe Text)
    , _pjwirsKey            :: !(Maybe AuthKey)
    , _pjwirsProjectId      :: !Text
    , _pjwirsOAuthToken     :: !(Maybe OAuthToken)
    , _pjwirsFields         :: !(Maybe Text)
    , _pjwirsCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsJobsWorkItemsReportStatus'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pjwirsXgafv'
--
-- * 'pjwirsQuotaUser'
--
-- * 'pjwirsPrettyPrint'
--
-- * 'pjwirsJobId'
--
-- * 'pjwirsUploadProtocol'
--
-- * 'pjwirsPp'
--
-- * 'pjwirsAccessToken'
--
-- * 'pjwirsUploadType'
--
-- * 'pjwirsPayload'
--
-- * 'pjwirsBearerToken'
--
-- * 'pjwirsKey'
--
-- * 'pjwirsProjectId'
--
-- * 'pjwirsOAuthToken'
--
-- * 'pjwirsFields'
--
-- * 'pjwirsCallback'
projectsJobsWorkItemsReportStatus'
    :: Text -- ^ 'jobId'
    -> ReportWorkItemStatusRequest -- ^ 'payload'
    -> Text -- ^ 'projectId'
    -> ProjectsJobsWorkItemsReportStatus'
projectsJobsWorkItemsReportStatus' pPjwirsJobId_ pPjwirsPayload_ pPjwirsProjectId_ =
    ProjectsJobsWorkItemsReportStatus'
    { _pjwirsXgafv = Nothing
    , _pjwirsQuotaUser = Nothing
    , _pjwirsPrettyPrint = True
    , _pjwirsJobId = pPjwirsJobId_
    , _pjwirsUploadProtocol = Nothing
    , _pjwirsPp = True
    , _pjwirsAccessToken = Nothing
    , _pjwirsUploadType = Nothing
    , _pjwirsPayload = pPjwirsPayload_
    , _pjwirsBearerToken = Nothing
    , _pjwirsKey = Nothing
    , _pjwirsProjectId = pPjwirsProjectId_
    , _pjwirsOAuthToken = Nothing
    , _pjwirsFields = Nothing
    , _pjwirsCallback = Nothing
    }

-- | V1 error format.
pjwirsXgafv :: Lens' ProjectsJobsWorkItemsReportStatus' (Maybe Text)
pjwirsXgafv
  = lens _pjwirsXgafv (\ s a -> s{_pjwirsXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
pjwirsQuotaUser :: Lens' ProjectsJobsWorkItemsReportStatus' (Maybe Text)
pjwirsQuotaUser
  = lens _pjwirsQuotaUser
      (\ s a -> s{_pjwirsQuotaUser = a})

-- | Returns response with indentations and line breaks.
pjwirsPrettyPrint :: Lens' ProjectsJobsWorkItemsReportStatus' Bool
pjwirsPrettyPrint
  = lens _pjwirsPrettyPrint
      (\ s a -> s{_pjwirsPrettyPrint = a})

-- | The job which the WorkItem is part of.
pjwirsJobId :: Lens' ProjectsJobsWorkItemsReportStatus' Text
pjwirsJobId
  = lens _pjwirsJobId (\ s a -> s{_pjwirsJobId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pjwirsUploadProtocol :: Lens' ProjectsJobsWorkItemsReportStatus' (Maybe Text)
pjwirsUploadProtocol
  = lens _pjwirsUploadProtocol
      (\ s a -> s{_pjwirsUploadProtocol = a})

-- | Pretty-print response.
pjwirsPp :: Lens' ProjectsJobsWorkItemsReportStatus' Bool
pjwirsPp = lens _pjwirsPp (\ s a -> s{_pjwirsPp = a})

-- | OAuth access token.
pjwirsAccessToken :: Lens' ProjectsJobsWorkItemsReportStatus' (Maybe Text)
pjwirsAccessToken
  = lens _pjwirsAccessToken
      (\ s a -> s{_pjwirsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pjwirsUploadType :: Lens' ProjectsJobsWorkItemsReportStatus' (Maybe Text)
pjwirsUploadType
  = lens _pjwirsUploadType
      (\ s a -> s{_pjwirsUploadType = a})

-- | Multipart request metadata.
pjwirsPayload :: Lens' ProjectsJobsWorkItemsReportStatus' ReportWorkItemStatusRequest
pjwirsPayload
  = lens _pjwirsPayload
      (\ s a -> s{_pjwirsPayload = a})

-- | OAuth bearer token.
pjwirsBearerToken :: Lens' ProjectsJobsWorkItemsReportStatus' (Maybe Text)
pjwirsBearerToken
  = lens _pjwirsBearerToken
      (\ s a -> s{_pjwirsBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pjwirsKey :: Lens' ProjectsJobsWorkItemsReportStatus' (Maybe AuthKey)
pjwirsKey
  = lens _pjwirsKey (\ s a -> s{_pjwirsKey = a})

-- | The project which owns the WorkItem\'s job.
pjwirsProjectId :: Lens' ProjectsJobsWorkItemsReportStatus' Text
pjwirsProjectId
  = lens _pjwirsProjectId
      (\ s a -> s{_pjwirsProjectId = a})

-- | OAuth 2.0 token for the current user.
pjwirsOAuthToken :: Lens' ProjectsJobsWorkItemsReportStatus' (Maybe OAuthToken)
pjwirsOAuthToken
  = lens _pjwirsOAuthToken
      (\ s a -> s{_pjwirsOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pjwirsFields :: Lens' ProjectsJobsWorkItemsReportStatus' (Maybe Text)
pjwirsFields
  = lens _pjwirsFields (\ s a -> s{_pjwirsFields = a})

-- | JSONP
pjwirsCallback :: Lens' ProjectsJobsWorkItemsReportStatus' (Maybe Text)
pjwirsCallback
  = lens _pjwirsCallback
      (\ s a -> s{_pjwirsCallback = a})

instance GoogleAuth
         ProjectsJobsWorkItemsReportStatus' where
        _AuthKey = pjwirsKey . _Just
        _AuthToken = pjwirsOAuthToken . _Just

instance GoogleRequest
         ProjectsJobsWorkItemsReportStatus' where
        type Rs ProjectsJobsWorkItemsReportStatus' =
             ReportWorkItemStatusResponse
        request = requestWith dataflowRequest
        requestWith rq ProjectsJobsWorkItemsReportStatus'{..}
          = go _pjwirsProjectId _pjwirsJobId _pjwirsXgafv
              _pjwirsUploadProtocol
              (Just _pjwirsPp)
              _pjwirsAccessToken
              _pjwirsUploadType
              _pjwirsBearerToken
              _pjwirsCallback
              _pjwirsQuotaUser
              (Just _pjwirsPrettyPrint)
              _pjwirsFields
              _pjwirsKey
              _pjwirsOAuthToken
              (Just AltJSON)
              _pjwirsPayload
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy ProjectsJobsWorkItemsReportStatusResource)
                      rq
