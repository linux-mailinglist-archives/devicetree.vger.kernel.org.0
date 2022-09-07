Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F1DA85B0534
	for <lists+devicetree@lfdr.de>; Wed,  7 Sep 2022 15:35:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229585AbiIGNfY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Sep 2022 09:35:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229759AbiIGNfW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Sep 2022 09:35:22 -0400
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12olkn2031.outbound.protection.outlook.com [40.92.23.31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35AF22663
        for <devicetree@vger.kernel.org>; Wed,  7 Sep 2022 06:35:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BxYzGHi31UCUILZ9qGjrFSiuF8PWbI8CTsV8pZc4DnywVWmhO3ce//GwJzcRIQ7o7BFnN3z5xSgRFokn/sPLG+rgEajRCClrVSJp0KMEi2eOGPppjK7b6WoXhKz22K2zqj/nAHTInimZtXrDdwXst6o9sUha3v4zkb/weBlWpxzlM5FEH2Mo9BjSPECXOWq/jKuCYwrOXKw9d3vi+E3lppvPl/TPu4wpv9KEYPjPdKrnIEwecJ7UIOAHe+uJXUM8aNkCDHetz52C8/JEQBRwOwUPsOtfEBdqZHt2jdAmHgaHSEw6HQEQC23e0xWxyIe/ILS2mCkCAKMRJ+38THLX9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=582WBm2QXoa3sMO+rJlafarT32M5tdnaJXipsevZKpg=;
 b=nwlOm2FDQKNwzcsk0oUT1BBvgq2n9JWyDsd9xwy1W8k/bi7wiCbZVVjsm+OsOXB9Bve1EkJIyTByDDZ+SU4W347BjvXnywrz0CjnHN3SReMN9KJWRpW+mhX5s4Nc1m/nSoAFD/ytJkgnX/RemDkN/OXxz3tJmwd8RsMSupXgtE38P5JQsWyg4Aps9I1XFHg5ROk0EJZ8MtG9PcpihSOePffK9o5iOcP2EI/9UEGPkwnBiny5pWS6U+QpyCLJJZqFGFbiu73W0VRZCKkqSQ1NqRE5JogYYLkZq2DeGzgPhIHQ0AWdhIrc88ra2fCNnfktRnXZ0Q6NGld9T3Dk3Fxsew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=582WBm2QXoa3sMO+rJlafarT32M5tdnaJXipsevZKpg=;
 b=pGyzrqHjWBx9dvMUEH+uCO7l+W9kzhJ8kblF3wHWViWIzvLmwRG0PMeVB6vuEgU8Jf0nROTNZ48zNXghrxN5+buxroIIqy2IizYW9ehvuuR5sqLtQQY18YVwAazUueNtdlqmMEv1TvkOMEbtp5DxSRJZ+V7E+hzKammpEsHPgTvx016qD5XPB8iF0DfEm6PxclxSEKkat9Gnzhmkm70zhyqDx3UpXj94O3bbkzc0wwUr4FqV6c2qGgKe7T5GFSDx7QKmTVVSRsHu9akBJaLpYqhNIJl1WD4rv8iho1lGp+atUzxKf92TgCEXoC6IY8wRo3AJ5dOo2pkDmxTKDyG8dg==
Received: from SN6PR06MB5342.namprd06.prod.outlook.com (2603:10b6:805:f9::31)
 by BN6PR06MB2788.namprd06.prod.outlook.com (2603:10b6:404:11b::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.15; Wed, 7 Sep
 2022 13:35:16 +0000
Received: from SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::9999:3123:e227:5259]) by SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::9999:3123:e227:5259%6]) with mapi id 15.20.5588.016; Wed, 7 Sep 2022
 13:35:16 +0000
Date:   Wed, 7 Sep 2022 08:35:13 -0500
From:   Chris Morgan <macromorgan@hotmail.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Chris Morgan <macroalpha82@gmail.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        daniel@ffwll.ch, airlied@linux.ie, sam@ravnborg.org,
        thierry.reding@gmail.com
Subject: Re: [PATCH 1/2] dt-bindings: display: panel: Add NewVision NV3051D
 panel bindings
Message-ID: <SN6PR06MB534207102C2E8AFCE63C3231A5419@SN6PR06MB5342.namprd06.prod.outlook.com>
References: <20220906185208.13395-1-macroalpha82@gmail.com>
 <20220906185208.13395-2-macroalpha82@gmail.com>
 <cbdbc7d8-a3b9-d960-68c7-457c947e4285@linaro.org>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cbdbc7d8-a3b9-d960-68c7-457c947e4285@linaro.org>
X-TMN:  [0JwqPTa80R6+QslfSIke6K0aK+iUowPq]
X-ClientProxiedBy: SN7PR04CA0219.namprd04.prod.outlook.com
 (2603:10b6:806:127::14) To SN6PR06MB5342.namprd06.prod.outlook.com
 (2603:10b6:805:f9::31)
X-Microsoft-Original-Message-ID: <20220907133513.GB29500@wintermute.localdomain>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6dac6bd5-09f4-430c-8e39-08da90d5ccc9
X-MS-TrafficTypeDiagnostic: BN6PR06MB2788:EE_
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: twdWmOk0dNiF+qB1bdGyaae/gdWM4CsKU1vAH+fKxUPBAIEoQEXzxBh36HnNJWmiTnIHmlRX8uGRE+IRNhuEwnnEXRlV9xJ7hTQVAIEbNNVPuhbmXXpMzHgdzuldlp1Nns/cZeY24hFAqy5mNA5Y+CRWva14kyf2iXqsIDoaVW8m49HSnmorfU9+9gMONn4S6eP/Mk5dA/NGQAO+I+0wvlxctr7VIfo4+dpnmJAOKyj5FA0XR5kHaVomQleB8YUyJqV9zm3PEHYSoHfeAi4bmmLphOExrag457Dq9OY8A5+IqAq0PQ0ZEeSoLJFutg72LdFDXs0J6amlhJDYM6p1PqFVVpxnSkAXXMJGouoUC9rE9DNP5Tqk6GtQX2GCIyNTSXCjpDOeZfvpn35OHqkSsosBun75UX3jIy6CE3P98zgVAuHPsZV17Euz6NLeL+Mh+SzmPIbpMMqixhcJ/2uvkAgJR9hdtHMtIyJG7+HRYzYHutDOOyG3bnpS/rD+EtlgNv/u7jhRhUYCODjo5d35HJtp5sSxXUFUObeDWQ97LIideAqaWc4j+iSEYJP3zLm0GesWbJjwOtGlmHhO2cCL7+4VJyZev0S9s7ADHWeZVZ7mnQCQgiDz8x5CfVOM7azyCpBq8kbQV8wtbkEcWpzlggP4s4scmzyDNM/bqwVFnkrDLsvi1P/3REfUKk28DZ3f
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?IC+2LH2liLOvB8lD5FFPY7ev3ahsWo+eunPxZ6KPI9nqrIebB1zenAWB1Se5?=
 =?us-ascii?Q?Ee9G13bg9huUWEPJd4xxWLQuqXOy6q7TL2yiX+dOpiJ+65axwVzfNwHKPQZw?=
 =?us-ascii?Q?uvpi2QsaIUhIW/xwEgqYNYjo1um3x1113lh1ctlH47+QCj+02TBW49bRMvbX?=
 =?us-ascii?Q?APgY1YWOLRYXE99lqCuR70WGcyfK6jmrz+z9+VCON0wkuiYWJ4zso1i2AVy9?=
 =?us-ascii?Q?M0cW0UaPz7tNpCtHrLd615QEEAZITnqRJInqXPYves0v/qwJsUTA/dEy6AzF?=
 =?us-ascii?Q?AHPzMHm/YcLZG9lvJt6dJAQTsI7DmA19oS6kletXZ+ya968XQCZ943Ko7Qa3?=
 =?us-ascii?Q?w1JReHMY0QPnaj5mSdevOZtWb3ZQAUXY4RXUm9crQKN3MmndPPN6qMtWdsRe?=
 =?us-ascii?Q?s9hbVW2tGIWxbSnXOwH+hzhj7YZiq+HrfKzwrGdH+B9Vr0B4jWDuXiUBTi/o?=
 =?us-ascii?Q?xltLcnaUQGKP0jmyR5mra51DSmyDwCVxzyuFOOtHr8kFQqqvbMbCQANN28rw?=
 =?us-ascii?Q?R/SHMKV/8KCjP88YGdGqC1wZbZndcBNfsYP9GK5Yq4WpB1L3kCTS7XbhowU6?=
 =?us-ascii?Q?5UHte6PSZ0pO3vJEv1qMAqltSR6aaUs9TA7pGHD7fW95WYNhsJTUZ1oqP5pa?=
 =?us-ascii?Q?Il4gaPddTNNqmiPZpYC03ytYVJGWYjv1FIcQVEWU0d6nRiz/JqH2e/NZm2X9?=
 =?us-ascii?Q?8NZWusc+OR5DaScO9FRvrcT9JkpaOB8Y1023xvwAZiWTeIepSob0L8p5JonW?=
 =?us-ascii?Q?jfFg9BACCLuZVdEIAaHOlrCIuJ3FpOM3OPh3FCDddykokw3dZfP1d0Y9uKVZ?=
 =?us-ascii?Q?+/+hPOiHUhT3116neMjgQDm1jzKMFxxEWgDL8nssOpIbOlT6f7a1ypuXOshm?=
 =?us-ascii?Q?/JVtUhui8mZTdITjTCHdiNghJKzBLkMDXq28QwqSEdVTF59ZZrXvIWuNpHm7?=
 =?us-ascii?Q?FGf8BXcDh4X+YmjQXQB85soED3PY03XJgoWpQSFIIlpzF1j6j80tDILKIQEG?=
 =?us-ascii?Q?UsHgSl3Cft0tFryWvSTPYizKJG+pC3Vw835vWR3ikMs65clXdh9qmhCrmqjU?=
 =?us-ascii?Q?Vp8Is07fJWlXaX1cTr9U8clAtM/qkte/Hc8N2N8MZCzTDTE89LVX6QpRVLoC?=
 =?us-ascii?Q?4OA88RNX6+n4+qJTREA8+G6NjLfv/0auyzaT9TxnVeo9X8CiEfbbK/RVXrZj?=
 =?us-ascii?Q?KxEZrcu0m7duvx+bX/fja42nqUqjkBcX63kBpla78srhZldgyXeccc6ExBwU?=
 =?us-ascii?Q?EcKa4MkzsQFyiu7hs7nqamX6goEtNMPDqW85I+7RMg=3D=3D?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-89723.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 6dac6bd5-09f4-430c-8e39-08da90d5ccc9
X-MS-Exchange-CrossTenant-AuthSource: SN6PR06MB5342.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2022 13:35:16.8916
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR06MB2788
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 07, 2022 at 02:53:56PM +0200, Krzysztof Kozlowski wrote:
> On 06/09/2022 20:52, Chris Morgan wrote:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > Add documentation for the NewVision NV3051D panel bindings.
> > Note that for the two expected consumers of this panel binding
> > the underlying LCD model is unknown.
> > 
> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > ---
> >  .../display/panel/newvision,nv3051d.yaml      | 48 +++++++++++++++++++
> >  1 file changed, 48 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml b/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
> > new file mode 100644
> > index 000000000000..016168d8d7b2
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
> > @@ -0,0 +1,48 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: https://nam12.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevicetree.org%2Fschemas%2Fdisplay%2Fpanel%2Fnewvision%2Cnv3051d.yaml%23&amp;data=05%7C01%7C%7C69d30de15aea41517acb08da90d0079f%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C637981520397977782%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=qfuvbrQYP3rKnp%2ByPmPmn%2BCJJOQkNkTGT49FkJmIics%3D&amp;reserved=0
> 
> You need to document vendor prefix... but the filename does not match
> compatible.

Okay, will do that. This is a tricky one because while I know the panel
controller IC (a NewVision NV3051D) I don't actually know the LCD panel
itself, the vendor is somewhat tight lipped. I do know the product it
goes into, so that's why I did what I did with the compatible strings.
If that's not correct I guess let me know. I did see for other drivers
(such as the NewVision NV3052C) the driver was written for the IC
and the panel name was listed differently, hence what I was going for
here.

> 
> > +$schema: https://nam12.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevicetree.org%2Fmeta-schemas%2Fcore.yaml%23&amp;data=05%7C01%7C%7C69d30de15aea41517acb08da90d0079f%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C637981520397977782%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=AYwypW%2BA9xWCN6YYwC7oI5UDW6QmiP7%2FmAoKlm7x3jM%3D&amp;reserved=0
> > +
> > +title: NewVision NV3051D based DSI panel driver
> 
> This is confusing - compatibles say something else.
> 

Right. Driver IC is the NV3051D, LCD panel itself is... well... not
sure...

> > +
> > +maintainers:
> > +  - Chris Morgan <macromorgan@hotmail.com>
> > +
> > +allOf:
> > +  - $ref: panel-common.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - anbernic,rg353p-panel
> > +      - anbernic,rg353v-panel
> 
> Missing space, missing documentation for vendor prefix.
> 
> Strip "panel" suffix unless device is multifunctional.
> 

The device name itself is Anbernic RG353P (and RG353V). The driver is
not multifunctional but again I don't really know what the LCD itself
is called so I'm trying to name it after the device. I only know the
driver IC.

> > +  reg: true
> > +  backlight: true
> 
> 
> Best regards,
> Krzysztof

Thank you once again for all your help, sorry to be such a bother
in this. I'm honestly not sure the best way to name and document a
panel when I only know one of the part numbers (the IC).
