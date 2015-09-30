{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Tags.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a GTM Tag.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagmanagerAccountsContainersTagsGet@.
module TagManager.Accounts.Containers.Tags.Get
    (
    -- * REST Resource
      AccountsContainersTagsGetAPI

    -- * Creating a Request
    , accountsContainersTagsGet
    , AccountsContainersTagsGet

    -- * Request Lenses
    , actgcQuotaUser
    , actgcPrettyPrint
    , actgcContainerId
    , actgcUserIp
    , actgcAccountId
    , actgcTagId
    , actgcKey
    , actgcOauthToken
    , actgcFields
    , actgcAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagmanagerAccountsContainersTagsGet@ which the
-- 'AccountsContainersTagsGet' request conforms to.
type AccountsContainersTagsGetAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "tags" :> Capture "tagId" Text :> Get '[JSON] Tag

-- | Gets a GTM Tag.
--
-- /See:/ 'accountsContainersTagsGet' smart constructor.
data AccountsContainersTagsGet = AccountsContainersTagsGet
    { _actgcQuotaUser   :: !(Maybe Text)
    , _actgcPrettyPrint :: !Bool
    , _actgcContainerId :: !Text
    , _actgcUserIp      :: !(Maybe Text)
    , _actgcAccountId   :: !Text
    , _actgcTagId       :: !Text
    , _actgcKey         :: !(Maybe Text)
    , _actgcOauthToken  :: !(Maybe Text)
    , _actgcFields      :: !(Maybe Text)
    , _actgcAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersTagsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actgcQuotaUser'
--
-- * 'actgcPrettyPrint'
--
-- * 'actgcContainerId'
--
-- * 'actgcUserIp'
--
-- * 'actgcAccountId'
--
-- * 'actgcTagId'
--
-- * 'actgcKey'
--
-- * 'actgcOauthToken'
--
-- * 'actgcFields'
--
-- * 'actgcAlt'
accountsContainersTagsGet
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'tagId'
    -> AccountsContainersTagsGet
accountsContainersTagsGet pActgcContainerId_ pActgcAccountId_ pActgcTagId_ =
    AccountsContainersTagsGet
    { _actgcQuotaUser = Nothing
    , _actgcPrettyPrint = True
    , _actgcContainerId = pActgcContainerId_
    , _actgcUserIp = Nothing
    , _actgcAccountId = pActgcAccountId_
    , _actgcTagId = pActgcTagId_
    , _actgcKey = Nothing
    , _actgcOauthToken = Nothing
    , _actgcFields = Nothing
    , _actgcAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
actgcQuotaUser :: Lens' AccountsContainersTagsGet' (Maybe Text)
actgcQuotaUser
  = lens _actgcQuotaUser
      (\ s a -> s{_actgcQuotaUser = a})

-- | Returns response with indentations and line breaks.
actgcPrettyPrint :: Lens' AccountsContainersTagsGet' Bool
actgcPrettyPrint
  = lens _actgcPrettyPrint
      (\ s a -> s{_actgcPrettyPrint = a})

-- | The GTM Container ID.
actgcContainerId :: Lens' AccountsContainersTagsGet' Text
actgcContainerId
  = lens _actgcContainerId
      (\ s a -> s{_actgcContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
actgcUserIp :: Lens' AccountsContainersTagsGet' (Maybe Text)
actgcUserIp
  = lens _actgcUserIp (\ s a -> s{_actgcUserIp = a})

-- | The GTM Account ID.
actgcAccountId :: Lens' AccountsContainersTagsGet' Text
actgcAccountId
  = lens _actgcAccountId
      (\ s a -> s{_actgcAccountId = a})

-- | The GTM Tag ID.
actgcTagId :: Lens' AccountsContainersTagsGet' Text
actgcTagId
  = lens _actgcTagId (\ s a -> s{_actgcTagId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
actgcKey :: Lens' AccountsContainersTagsGet' (Maybe Text)
actgcKey = lens _actgcKey (\ s a -> s{_actgcKey = a})

-- | OAuth 2.0 token for the current user.
actgcOauthToken :: Lens' AccountsContainersTagsGet' (Maybe Text)
actgcOauthToken
  = lens _actgcOauthToken
      (\ s a -> s{_actgcOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
actgcFields :: Lens' AccountsContainersTagsGet' (Maybe Text)
actgcFields
  = lens _actgcFields (\ s a -> s{_actgcFields = a})

-- | Data format for the response.
actgcAlt :: Lens' AccountsContainersTagsGet' Text
actgcAlt = lens _actgcAlt (\ s a -> s{_actgcAlt = a})

instance GoogleRequest AccountsContainersTagsGet'
         where
        type Rs AccountsContainersTagsGet' = Tag
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u AccountsContainersTagsGet{..}
          = go _actgcQuotaUser _actgcPrettyPrint
              _actgcContainerId
              _actgcUserIp
              _actgcAccountId
              _actgcTagId
              _actgcKey
              _actgcOauthToken
              _actgcFields
              _actgcAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersTagsGetAPI)
                      r
                      u