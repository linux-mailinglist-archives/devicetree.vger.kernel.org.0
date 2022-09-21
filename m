Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 63E585C0447
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 18:35:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230047AbiIUQfm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 12:35:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231354AbiIUQfO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 12:35:14 -0400
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10olkn2060.outbound.protection.outlook.com [40.92.41.60])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BCCCEA9C1A
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 09:17:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ic8QQnvVXpp1/5XDUSP/fJC8ZoyThQt4m7nkjkZL+GuL+gHl+RvZcVLXezNCrROI+oqRsbUizCEt/uRm7FebRWnf1uw+6dLJvxKzjio2N2rv7x48ta0sQYjw5Ze9WV/At2ngxjSahQgRervtdRvftaGF0UO5XwIoPBzIWe66pJr5q0Zh+pP3UC/4pRLUAsWXP3OufcKfXgcJ0enKaahGFRRqZOvTTGAxsbF1hM+nd8Xc32mFfVyM378DC37YAcZ8dLZ43TtVmPVSyo7H16Rc1Vbdg+ErRNA1D4iIv1AqbvU7j0/1FnEZJ2qf25mU3oA7X1gLTR+LKc7kflE9phfvDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gyrb6GcU9w2OQG9UnWPuHmXwUGp/KzIGrBmAQIT5EmA=;
 b=XwHnLnFgMuIWaGKgHaxijtO/3a8dmjhUV3TrN1ZNQg3z524lzErGjrxUv4t+cJBKFQevveshojIp8OQ1pgU9HlRy3sD9CWtqRDgHXr6AmyFFsajS0KmXDPm1OtNuDlyyzirYW45gqVh790Q1vHo2w6Stq2FCXTxy/tnjFT92FoDOHdm7qfRgwL0OGh0fjhYnwi2GTubs7US8Wa/ZYFxCo/VP0gHChdsLwV7RRi2lXhR5oQ2ZmqIEK7bDal4TNE8YlscrIxasoNz9IJ5tCaut4qWFtOfRxpSTHpyOvNyykOVWoWUqhWclMOaqdDBvnBXTKhreT6pL9+uWDSDbXAC75A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gyrb6GcU9w2OQG9UnWPuHmXwUGp/KzIGrBmAQIT5EmA=;
 b=jkdI1MAm9lr1uqu44jJWP62VVDyW1ajGt0ORwixzD/HD12D7hXnx44DnQPzNYeOH8reYPAOacbICh/FiGiaQSWBX9ZY2nGs9USijEpPsVWQcf+W8bAPmBTdqnRLSqZKmrFX1rLLnf8Oyhc6C18aG0L3RVcQ2Lr7m51ZBbJJPn94tAvR6TwJSob2LUZiEV/osyIw8ySqlfrSiKaDCWvOwZrWT7RBzK2awecilnDsd3aBCRpPBWipS06NuZk3EDMzIgbuKqX6rN+kMqVh319keENhrEyc67/SuH9ceGbAqVOc8youHQcq9ZtOv4UgLPE1yO/0ug8nDVoq80zAgNZFfSA==
Received: from SN6PR06MB5342.namprd06.prod.outlook.com (2603:10b6:805:f9::31)
 by PH0PR06MB7270.namprd06.prod.outlook.com (2603:10b6:510:2::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.17; Wed, 21 Sep
 2022 16:17:45 +0000
Received: from SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::433a:1493:6a39:ee43]) by SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::433a:1493:6a39:ee43%5]) with mapi id 15.20.5632.021; Wed, 21 Sep 2022
 16:17:45 +0000
Date:   Wed, 21 Sep 2022 11:17:42 -0500
From:   Chris Morgan <macromorgan@hotmail.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Chris Morgan <macroalpha82@gmail.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        daniel@ffwll.ch, airlied@linux.ie, sam@ravnborg.org,
        thierry.reding@gmail.com
Subject: Re: [PATCH V2 2/3] dt-bindings: display: panel: Add NewVision
 NV3051D bindings
Message-ID: <SN6PR06MB5342B6175DDEDCCDDA409DBCA54F9@SN6PR06MB5342.namprd06.prod.outlook.com>
References: <20220920145905.20595-1-macroalpha82@gmail.com>
 <20220920145905.20595-3-macroalpha82@gmail.com>
 <e5de0c74-3ece-56c6-6c31-042e1117c10a@linaro.org>
 <SN6PR06MB534220AB227AA3BC5DB58741A54F9@SN6PR06MB5342.namprd06.prod.outlook.com>
 <ff2ee392-0f78-37d4-56b5-443e6e998443@linaro.org>
 <SN6PR06MB53420E8B1245EDFCB7547C69A54F9@SN6PR06MB5342.namprd06.prod.outlook.com>
 <24190160-53f2-810d-bd23-c02958517c80@linaro.org>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <24190160-53f2-810d-bd23-c02958517c80@linaro.org>
X-TMN:  [YUAPBsX9rjlbAb2sYPMD1EZ5696CuImI]
X-ClientProxiedBy: SN7PR18CA0024.namprd18.prod.outlook.com
 (2603:10b6:806:f3::33) To SN6PR06MB5342.namprd06.prod.outlook.com
 (2603:10b6:805:f9::31)
X-Microsoft-Original-Message-ID: <20220921161742.GB16627@wintermute.localdomain>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR06MB5342:EE_|PH0PR06MB7270:EE_
X-MS-Office365-Filtering-Correlation-Id: f18dcbcc-86aa-4115-8c2d-08da9becd0ec
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LuOgOBwJrnQcWfDwwnynradu3v5Dxpl8j+xFHJwTOalsfaH6yHQmSzTcXRWWSsei8SFGFZEkb6m2X29M9P1IRS6y5+tkBjO25Oo8fCMv1JJOo1PTEoC6e4OJSG5mmJvyZP8PeTMKmcF9Jx0MQe2JEcxKpA/yv6nstYgQMCjMDCouhDBnGCAOSxEwm+lq58TsZlPxOnQQqoxk3pwf2BI+R2N5X3yGX/hdI2/ryCTXorIhStuAlSF6YxHIUuxnyv5kqMRwfYNJDuFnTkOehq6QbMbcZMLHn00NUboPhDIogUPjEfru6gUzmFevGtKqOmMr1+RZzpg3SszUQMhkqHzOgi8CByeGt1wcNHxpLddGIYAf6iJu+pz2nm+JdPhjBNWyfk1Jj370kwTvipzJQWO2tywVs7NWgJgsbzW+u4PgfOpaIgOIWQgsrAeiqF6ce7scoaTViYVePNlxwxRhGCs9n+Gn9tQshNvixLVviib31UyK3surP2pfzyxyxEcQKMRzbjHzV0sYKAmcyDJqF4WEi61lxw5P9noKg8bqWnE+i4wHet1ZTjokOy2328MZKh5h57tT1FguzaHtzFjysZpHM0LkFohqEmiQC5Q3vsvDMl2Mr2qlgRhN1naF9L7q+tBWr44GI0k/aN2/4H7w9Kscps1cJJrWkGDtia/aDWhSAePcuSIExXKL27aRgeker1Lp
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?w/oZKZvbpzZVagmQhRVoGjQ669kkPl+ucQi9NIP/t7k26Sv0V5LrLL6NkUqU?=
 =?us-ascii?Q?Zs4ErBImYjwOjRF1EQcbdwyF+5UOfFmDeEXPhhqLS+4UT6hMvQPkSygrSo/q?=
 =?us-ascii?Q?SdYftaRpX+D5Cu/4Ag9fhaiY2N+hqnq/1lWCakp/JplU9w2riQel8z60PxHH?=
 =?us-ascii?Q?dY7NH3xuleP9fqBmx/SXAZcnmWAhMoLF4cXNwTKA5uEpbvGT852eGx1k70ob?=
 =?us-ascii?Q?WQ040G1E4yTqOL+dlm4gi24OMZpXKUcEDfeYPUNI/NrdI6GpiRvdD7bAk4PD?=
 =?us-ascii?Q?Atu9wAyLOjiTqs380pTudcyCsBePpqzTI4ADlUk1qEnGq+CvvSvSS+KzeFgt?=
 =?us-ascii?Q?CZoCHKOJ4FoddTuOR5NC5EWKFF1O3GkkHlokDdx1kNy+zD0Xo2vA7Q93sw5r?=
 =?us-ascii?Q?m//IoVPjmhjGN524+Fi2+PnhflAhwdVBoSNQ+YK1BENx1PBL3MYhw13ahFfQ?=
 =?us-ascii?Q?MsazGUTmgUBBJQDNQUg/knhqDLGMh+iQHjX3j5jcW9bSMBHeSw+JK7FlNntu?=
 =?us-ascii?Q?xf2Vc1BYm0eN661ZWr4sEBsMg2K5hwAErXHSx3SJheIe+7qhijN/mNhbXXan?=
 =?us-ascii?Q?6z2mZjTuZrFUbj0yH6UT4wbYaITOY+y/PJRsk8uzTV3r8yK+GNRUxiUqbgQP?=
 =?us-ascii?Q?k6hEr3JfWFLdkUB54BThdwu1Gqi3+M315N7iAKkxOyo7UGZj6r0OsSROxjVg?=
 =?us-ascii?Q?pabBRd+qFif6hRBe0rcIJEsYxB/Vr91ZRCrBxQmEtol7NAvPsdhebZPCpFsr?=
 =?us-ascii?Q?5DRaMYf3eu3S/uliP/9bDLKXn6DJI115uj0AMveMK1PZF/Fnt8lp7MQ+hNI+?=
 =?us-ascii?Q?5Arf9MFsA/LC4p2l5p99KCA3tSZicc/aDZB2NZEjrZ917AWwuiQsSkYbry8Z?=
 =?us-ascii?Q?sWmCwvGrRREKYIDx5yJJ2UrPRJiLCb1iiVwfM7SdZiCJh6arqzS/wc/7gLds?=
 =?us-ascii?Q?qk1r3yZ0WcMK8qJnYOm+4AGmucA8Q1zGAZEP/TLuEYuczk36r2veLxv6SQ+v?=
 =?us-ascii?Q?aXJ6GOzFzaKD9UtMp3MlbOehsuyF0ZpHRvILTDT33DkEOZVO2vyrhOsdYm7Y?=
 =?us-ascii?Q?RwoD3l98U+4LFK+sMeEcKQTMxjwFXsvCp0fCeKxUVO65qZArsZThuCsZvJ6j?=
 =?us-ascii?Q?vHG0KfPIP5olTNoHHoaJXWWAz91K9t6H0YF1RzDF/2QaPbkgy5130RsbHPEh?=
 =?us-ascii?Q?eaDGXbD5UFuDN/kY/bMHaYyf6pmdUGvfV/kSGx5QOfKz3smv/Uzo1t1FKKQz?=
 =?us-ascii?Q?7ihxoyLhe3nUHmaZciY6Bl+jnHrLhG53HO2xewR+tA=3D=3D?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-89723.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: f18dcbcc-86aa-4115-8c2d-08da9becd0ec
X-MS-Exchange-CrossTenant-AuthSource: SN6PR06MB5342.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Sep 2022 16:17:45.1877
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR06MB7270
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 21, 2022 at 05:57:55PM +0200, Krzysztof Kozlowski wrote:
> On 21/09/2022 17:50, Chris Morgan wrote:
> > On Wed, Sep 21, 2022 at 05:21:19PM +0200, Krzysztof Kozlowski wrote:
> >> On 21/09/2022 16:38, Chris Morgan wrote:
> >>>>> +  compatible:
> >>>>> +    items:
> >>>>> +      - enum:
> >>>>> +          - anbernic,rg353p-panel
> >>>>
> >>>> Are these vendor prefixs documented?
> >>>
> >>> Yes, they are in another patch series referenced in the cover letter.
> >>> They were added for the Anbernic devicetrees and should (I believe)
> >>> land in 6.1.
> >>
> >> OK... you still need to test your bindings. Your patch was clearly not
> >> tested before sending. :(
> > 
> > I did: yamllint, make dt_binding_check (with DT_SCHEMA_FILES specified), and
> > make dtbs_check (with DT_SCHEMA_FILES specified again). 
> 
> I have doubts. So if you say you did it, then you probably did not look
> at the results... or whatever other reason the test was not effective,
> because your binding cannot pass the dt_binding_check.
> 
> > That's the proper
> > testing flow correct? In this case it's the pre-requisite that's causing
> > the issue as I see on a pristine master tree I'm warned about the missing
> > vendor prefix for anbernic. Should I wait for that to go upstream before
> > I submit this again?
> 
> Not really. The testing fails on wrong compatible in example.

My mistake, I see what I did wrong and apologize for the trouble. I
misinterpreted the error I did get (I expected an issue with a missing
vendor string, but as you correctly point out the received error is
not for that). I'll correct and resend. Would you be so kind as to
confirm if you're okay with the "anbernic,rg353-panel", "newvision,nv3051d"
strings?

Thank you once again and I apologize for my mistake.

> 
> Best regards,
> Krzysztof
> 
