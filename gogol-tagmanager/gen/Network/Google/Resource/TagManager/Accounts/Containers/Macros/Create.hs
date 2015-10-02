{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Macros.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a GTM Macro.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersMacrosCreate@.
module Network.Google.Resource.TagManager.Accounts.Containers.Macros.Create
    (
    -- * REST Resource
      AccountsContainersMacrosCreateResource

    -- * Creating a Request
    , accountsContainersMacrosCreate'
    , AccountsContainersMacrosCreate'

    -- * Request Lenses
    , acmcQuotaUser
    , acmcPrettyPrint
    , acmcMacro
    , acmcContainerId
    , acmcUserIP
    , acmcAccountId
    , acmcKey
    , acmcOAuthToken
    , acmcFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersMacrosCreate@ which the
-- 'AccountsContainersMacrosCreate'' request conforms to.
type AccountsContainersMacrosCreateResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "macros" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Macro :> Post '[JSON] Macro

-- | Creates a GTM Macro.
--
-- /See:/ 'accountsContainersMacrosCreate'' smart constructor.
data AccountsContainersMacrosCreate' = AccountsContainersMacrosCreate'
    { _acmcQuotaUser   :: !(Maybe Text)
    , _acmcPrettyPrint :: !Bool
    , _acmcMacro       :: !Macro
    , _acmcContainerId :: !Text
    , _acmcUserIP      :: !(Maybe Text)
    , _acmcAccountId   :: !Text
    , _acmcKey         :: !(Maybe Key)
    , _acmcOAuthToken  :: !(Maybe OAuthToken)
    , _acmcFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersMacrosCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acmcQuotaUser'
--
-- * 'acmcPrettyPrint'
--
-- * 'acmcMacro'
--
-- * 'acmcContainerId'
--
-- * 'acmcUserIP'
--
-- * 'acmcAccountId'
--
-- * 'acmcKey'
--
-- * 'acmcOAuthToken'
--
-- * 'acmcFields'
accountsContainersMacrosCreate'
    :: Macro -- ^ 'Macro'
    -> Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersMacrosCreate'
accountsContainersMacrosCreate' pAcmcMacro_ pAcmcContainerId_ pAcmcAccountId_ =
    AccountsContainersMacrosCreate'
    { _acmcQuotaUser = Nothing
    , _acmcPrettyPrint = True
    , _acmcMacro = pAcmcMacro_
    , _acmcContainerId = pAcmcContainerId_
    , _acmcUserIP = Nothing
    , _acmcAccountId = pAcmcAccountId_
    , _acmcKey = Nothing
    , _acmcOAuthToken = Nothing
    , _acmcFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acmcQuotaUser :: Lens' AccountsContainersMacrosCreate' (Maybe Text)
acmcQuotaUser
  = lens _acmcQuotaUser
      (\ s a -> s{_acmcQuotaUser = a})

-- | Returns response with indentations and line breaks.
acmcPrettyPrint :: Lens' AccountsContainersMacrosCreate' Bool
acmcPrettyPrint
  = lens _acmcPrettyPrint
      (\ s a -> s{_acmcPrettyPrint = a})

-- | Multipart request metadata.
acmcMacro :: Lens' AccountsContainersMacrosCreate' Macro
acmcMacro
  = lens _acmcMacro (\ s a -> s{_acmcMacro = a})

-- | The GTM Container ID.
acmcContainerId :: Lens' AccountsContainersMacrosCreate' Text
acmcContainerId
  = lens _acmcContainerId
      (\ s a -> s{_acmcContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acmcUserIP :: Lens' AccountsContainersMacrosCreate' (Maybe Text)
acmcUserIP
  = lens _acmcUserIP (\ s a -> s{_acmcUserIP = a})

-- | The GTM Account ID.
acmcAccountId :: Lens' AccountsContainersMacrosCreate' Text
acmcAccountId
  = lens _acmcAccountId
      (\ s a -> s{_acmcAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acmcKey :: Lens' AccountsContainersMacrosCreate' (Maybe Key)
acmcKey = lens _acmcKey (\ s a -> s{_acmcKey = a})

-- | OAuth 2.0 token for the current user.
acmcOAuthToken :: Lens' AccountsContainersMacrosCreate' (Maybe OAuthToken)
acmcOAuthToken
  = lens _acmcOAuthToken
      (\ s a -> s{_acmcOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
acmcFields :: Lens' AccountsContainersMacrosCreate' (Maybe Text)
acmcFields
  = lens _acmcFields (\ s a -> s{_acmcFields = a})

instance GoogleAuth AccountsContainersMacrosCreate'
         where
        authKey = acmcKey . _Just
        authToken = acmcOAuthToken . _Just

instance GoogleRequest
         AccountsContainersMacrosCreate' where
        type Rs AccountsContainersMacrosCreate' = Macro
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u
          AccountsContainersMacrosCreate'{..}
          = go _acmcQuotaUser (Just _acmcPrettyPrint)
              _acmcContainerId
              _acmcUserIP
              _acmcAccountId
              _acmcKey
              _acmcOAuthToken
              _acmcFields
              (Just AltJSON)
              _acmcMacro
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy AccountsContainersMacrosCreateResource)
                      r
                      u