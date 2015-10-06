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
-- Module      : Network.Google.Resource.Classroom.Courses.Aliases.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes an alias of a course. This method returns the following error
-- codes: * \`PERMISSION_DENIED\` if the requesting user is not permitted
-- to remove the alias or for [general user permission errors][User
-- Permission Errors]. * \`NOT_FOUND\` if the alias does not exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @ClassroomCoursesAliasesDelete@.
module Network.Google.Resource.Classroom.Courses.Aliases.Delete
    (
    -- * REST Resource
      CoursesAliasesDeleteResource

    -- * Creating a Request
    , coursesAliasesDelete'
    , CoursesAliasesDelete'

    -- * Request Lenses
    , cadXgafv
    , cadQuotaUser
    , cadPrettyPrint
    , cadUploadProtocol
    , cadPp
    , cadCourseId
    , cadAccessToken
    , cadUploadType
    , cadAlias
    , cadBearerToken
    , cadKey
    , cadOAuthToken
    , cadFields
    , cadCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @ClassroomCoursesAliasesDelete@ which the
-- 'CoursesAliasesDelete'' request conforms to.
type CoursesAliasesDeleteResource =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "aliases" :>
             Capture "alias" Text :>
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
                                         Delete '[JSON] Empty

-- | Deletes an alias of a course. This method returns the following error
-- codes: * \`PERMISSION_DENIED\` if the requesting user is not permitted
-- to remove the alias or for [general user permission errors][User
-- Permission Errors]. * \`NOT_FOUND\` if the alias does not exist.
--
-- /See:/ 'coursesAliasesDelete'' smart constructor.
data CoursesAliasesDelete' = CoursesAliasesDelete'
    { _cadXgafv          :: !(Maybe Text)
    , _cadQuotaUser      :: !(Maybe Text)
    , _cadPrettyPrint    :: !Bool
    , _cadUploadProtocol :: !(Maybe Text)
    , _cadPp             :: !Bool
    , _cadCourseId       :: !Text
    , _cadAccessToken    :: !(Maybe Text)
    , _cadUploadType     :: !(Maybe Text)
    , _cadAlias          :: !Text
    , _cadBearerToken    :: !(Maybe Text)
    , _cadKey            :: !(Maybe AuthKey)
    , _cadOAuthToken     :: !(Maybe OAuthToken)
    , _cadFields         :: !(Maybe Text)
    , _cadCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CoursesAliasesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cadXgafv'
--
-- * 'cadQuotaUser'
--
-- * 'cadPrettyPrint'
--
-- * 'cadUploadProtocol'
--
-- * 'cadPp'
--
-- * 'cadCourseId'
--
-- * 'cadAccessToken'
--
-- * 'cadUploadType'
--
-- * 'cadAlias'
--
-- * 'cadBearerToken'
--
-- * 'cadKey'
--
-- * 'cadOAuthToken'
--
-- * 'cadFields'
--
-- * 'cadCallback'
coursesAliasesDelete'
    :: Text -- ^ 'courseId'
    -> Text -- ^ 'alias'
    -> CoursesAliasesDelete'
coursesAliasesDelete' pCadCourseId_ pCadAlias_ =
    CoursesAliasesDelete'
    { _cadXgafv = Nothing
    , _cadQuotaUser = Nothing
    , _cadPrettyPrint = True
    , _cadUploadProtocol = Nothing
    , _cadPp = True
    , _cadCourseId = pCadCourseId_
    , _cadAccessToken = Nothing
    , _cadUploadType = Nothing
    , _cadAlias = pCadAlias_
    , _cadBearerToken = Nothing
    , _cadKey = Nothing
    , _cadOAuthToken = Nothing
    , _cadFields = Nothing
    , _cadCallback = Nothing
    }

-- | V1 error format.
cadXgafv :: Lens' CoursesAliasesDelete' (Maybe Text)
cadXgafv = lens _cadXgafv (\ s a -> s{_cadXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
cadQuotaUser :: Lens' CoursesAliasesDelete' (Maybe Text)
cadQuotaUser
  = lens _cadQuotaUser (\ s a -> s{_cadQuotaUser = a})

-- | Returns response with indentations and line breaks.
cadPrettyPrint :: Lens' CoursesAliasesDelete' Bool
cadPrettyPrint
  = lens _cadPrettyPrint
      (\ s a -> s{_cadPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cadUploadProtocol :: Lens' CoursesAliasesDelete' (Maybe Text)
cadUploadProtocol
  = lens _cadUploadProtocol
      (\ s a -> s{_cadUploadProtocol = a})

-- | Pretty-print response.
cadPp :: Lens' CoursesAliasesDelete' Bool
cadPp = lens _cadPp (\ s a -> s{_cadPp = a})

-- | Identifier of the course whose alias should be deleted. This identifier
-- can be either the Classroom-assigned identifier or an
-- [alias][google.classroom.v1.CourseAlias].
cadCourseId :: Lens' CoursesAliasesDelete' Text
cadCourseId
  = lens _cadCourseId (\ s a -> s{_cadCourseId = a})

-- | OAuth access token.
cadAccessToken :: Lens' CoursesAliasesDelete' (Maybe Text)
cadAccessToken
  = lens _cadAccessToken
      (\ s a -> s{_cadAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cadUploadType :: Lens' CoursesAliasesDelete' (Maybe Text)
cadUploadType
  = lens _cadUploadType
      (\ s a -> s{_cadUploadType = a})

-- | Alias to delete. This may not be the Classroom-assigned identifier.
cadAlias :: Lens' CoursesAliasesDelete' Text
cadAlias = lens _cadAlias (\ s a -> s{_cadAlias = a})

-- | OAuth bearer token.
cadBearerToken :: Lens' CoursesAliasesDelete' (Maybe Text)
cadBearerToken
  = lens _cadBearerToken
      (\ s a -> s{_cadBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cadKey :: Lens' CoursesAliasesDelete' (Maybe AuthKey)
cadKey = lens _cadKey (\ s a -> s{_cadKey = a})

-- | OAuth 2.0 token for the current user.
cadOAuthToken :: Lens' CoursesAliasesDelete' (Maybe OAuthToken)
cadOAuthToken
  = lens _cadOAuthToken
      (\ s a -> s{_cadOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cadFields :: Lens' CoursesAliasesDelete' (Maybe Text)
cadFields
  = lens _cadFields (\ s a -> s{_cadFields = a})

-- | JSONP
cadCallback :: Lens' CoursesAliasesDelete' (Maybe Text)
cadCallback
  = lens _cadCallback (\ s a -> s{_cadCallback = a})

instance GoogleAuth CoursesAliasesDelete' where
        _AuthKey = cadKey . _Just
        _AuthToken = cadOAuthToken . _Just

instance GoogleRequest CoursesAliasesDelete' where
        type Rs CoursesAliasesDelete' = Empty
        request = requestWith classroomRequest
        requestWith rq CoursesAliasesDelete'{..}
          = go _cadCourseId _cadAlias _cadXgafv
              _cadUploadProtocol
              (Just _cadPp)
              _cadAccessToken
              _cadUploadType
              _cadBearerToken
              _cadCallback
              _cadQuotaUser
              (Just _cadPrettyPrint)
              _cadFields
              _cadKey
              _cadOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy CoursesAliasesDeleteResource)
                      rq
