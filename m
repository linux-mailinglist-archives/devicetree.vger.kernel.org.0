Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 762C74CC5E8
	for <lists+devicetree@lfdr.de>; Thu,  3 Mar 2022 20:18:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235924AbiCCTT3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Mar 2022 14:19:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235929AbiCCTT0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Mar 2022 14:19:26 -0500
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11olkn2029.outbound.protection.outlook.com [40.92.18.29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01DEFE0A24
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 11:18:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QEvgw6lM2RpqA8POL3li4KcjlDQ9DSD5pi+pmGH/e6JXuJoYGU3iZkq1fmFlweRz5TkZhTZafu1M1+4eA9b1HxXnHLV/iTXX8YZQ53IrQ1O4ad9JUi1t/rh1xJ2K7IspxMJP//ZZsZc5udqNhzvmvFasTx4AqEmXoNbvojbKBAU5S1TjYw6nskrEMdObeP2Wirm4zfYVGixlbzOQu9829e6A9h9LyXjZuN6X72fW9Tz0rQ8a0SWXhq7uczG4CcyDF/IssxnZNTSWCcJoun23tw7Js7BKyCWUKxoaoAEQuSuB/Bf8DsCETL8y2ODJcqn9bLK7flu6PEJVx44I7eeK1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EtTbm734WJ0wabjChF5g80QhfLOQjCb7YQv2Xto6E2M=;
 b=HMvTbMO5t5qI94CVNBg+NpxgKrI36wJ7lVxJyDFLh4oWqMfSaUPOTCQoE15A4SewHNqEmiNMDpujYFq0xfIjwSQnNzE4DQrPN+UDVjQpdLzcuK+74lOA0zw1DHiowga3npr0X4RL/Umiy07t0CoXb7ABjNVc4g6yjnHcwPICZ8qFJjS53vcfj1RdQub5T1v1EkVDbriBOtYtHyT5mG+jgZvGy/639hXYJUvaSjamJj63+96sCyv+Re92Wji1ufNhZLxce5WJ874ktdRLjvi6fafV8ke9msSyogywKOOPj4Rg5d55l6E0PXzgGJMySDdZlQtHgOu+fBn7uUBAO71sjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EtTbm734WJ0wabjChF5g80QhfLOQjCb7YQv2Xto6E2M=;
 b=pUDAIHu914XggIdg7nVtj35mM+9zDcy4wrKgMQ1xKYXgRt++Gdplqb7uIhjmpUYiusUkKE926jdbSCgIfU/d7T95GB3Fpaf7crZYcZP5QyFBxElCsZj5Ntz/JYNG8mmDb2/5D9QRAswnFcrC/4T7bTVyHoW8NkE73MnATILOpll6HntsTboAM9lib1SxkRoyIbr5qZMbT6uM80Q+TvNL1B24RMsL2QbmdtXFNVhxImNRtiCQy11VpCj5O0tQQzbez5HKfIwvMev4YiNJskGGWW4XgU6+E6+Ouv2Tko6RjTsLFHuRaZKDBRqg0fXqCrK0RDVuc9+K8rU1anXS7s5ptA==
Received: from SN6PR06MB5342.namprd06.prod.outlook.com (2603:10b6:805:f9::31)
 by DM6PR06MB4124.namprd06.prod.outlook.com (2603:10b6:5:92::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.26; Thu, 3 Mar
 2022 19:18:38 +0000
Received: from SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::fc4d:1caf:5746:df98]) by SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::fc4d:1caf:5746:df98%6]) with mapi id 15.20.5017.027; Thu, 3 Mar 2022
 19:18:38 +0000
Date:   Thu, 3 Mar 2022 13:18:36 -0600
From:   Chris Morgan <macromorgan@hotmail.com>
To:     Rob Herring <robh@kernel.org>
Cc:     Chris Morgan <macroalpha82@gmail.com>, mbrugger@suse.com,
        lee.jones@linaro.org, heiko@sntech.de, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, knaerzche@gmail.com,
        zyw@rock-chips.com, zhangqing@rock-chips.com, strit@manjaro.org,
        robh+dt@kernel.org, arnaud.ferraris@collabora.com
Subject: Re: [PATCH 3/3 v4] dt-bindings: mfd: rk808: Convert bindings to yaml
Message-ID: <SN6PR06MB53421AB719D69C16374C3DBFA5049@SN6PR06MB5342.namprd06.prod.outlook.com>
References: <20220302232612.25455-1-macroalpha82@gmail.com>
 <20220302232612.25455-4-macroalpha82@gmail.com>
 <1646315078.984067.1495433.nullmailer@robh.at.kernel.org>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1646315078.984067.1495433.nullmailer@robh.at.kernel.org>
X-TMN:  [XXIme0d3V6T1vtTQlL6D1TZivinlluFM]
X-ClientProxiedBy: SA0PR11CA0017.namprd11.prod.outlook.com
 (2603:10b6:806:d3::22) To SN6PR06MB5342.namprd06.prod.outlook.com
 (2603:10b6:805:f9::31)
X-Microsoft-Original-Message-ID: <20220303191836.GA27424@wintermute.localdomain>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c2a3f70a-a39b-4a5d-eb50-08d9fd4a9e50
X-MS-TrafficTypeDiagnostic: DM6PR06MB4124:EE_
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: j6jE5Yf1yHSXdTvqhBBAVZ+GL9DXFVd+zBXAlAJzkjh2tJeO/ruTKAzjAc1IVo9NHJUUg189uRvc7KUxGP8hMMlgnex8EF0VGYKVGJ7WExagJGHuNS+4ObPcUXwHuJVlvCRaqJi4A0EWFbpYaMVkzsenDIcqdMPszCnq2sWsr5Q+iLYUWkpckpgueLwxMwjDk1b6edpCTFtVkYERRxksKNyPS0JAkqFjPIh61KAkWuwo29Isn6jAVPMLsxMI/Cd7wIkDhza0k9DgBQP27QMZYxfjzM9tHk7v7UtSP7Xst7s7bKqoL4JB3a6pjD+YWyQfhEXI/hUMbn/zHZlKvrgqZfN60XuRkXZXlr98v3C+wZjfx3uKLJjEEwYDnHAZnlJbwQPWQQuEMzu6SG3H2xuLKsIo0jAIw4OGvEf17H5uKlL03z6NhoUu+mazX4dCPAi6dMVYP/V0H+TOepR6fctMMkuK1NCACFRbOiwCibhghGciw8dlFxb1VjaCptkNd9Kk0OJCgNHbqSUJAzbWmax4L/Nq3FyXFjQU/fedgMPkorskC+uzQxTRMZNqhbOektK7mrSCCdq5b3rpaY6NzncRC2b10lr3M/V+UHYcHxZYAQLsA4LTWueuq2mdFJ6yYdwF
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?fHe++4J3NSKdOb3p/UcFnPbHXLVoc2i4DpRGC0YuTRGnrD0bpjKH9DfcnCaB?=
 =?us-ascii?Q?jmkYrind/72vwAglxQDqsWAL5oOO3saPjf1V6wBQX0+MfOi+9rg0nqRrSAsR?=
 =?us-ascii?Q?q1mzndS1svO/w/aWs73abSFjQ613U9Hl4E9KJl4Edqe33IxKBI2z+ap3ETty?=
 =?us-ascii?Q?ZOZyhEaCEBJKX9FjvQ2IJReiIfxE9D80Ds5G0SttpjqaOGnnYcIfCufi7CnF?=
 =?us-ascii?Q?GwozQbWqz61yh4pJbWI9qLMGHhIGXOmNhXA/nhPWMR3fXfc5Bg60WzrT2Fd4?=
 =?us-ascii?Q?w1kiLlTBK1JdHGEX4Ad43NNvF5KIcn8Sp39q30KzRKVk4esazckVjwwyuSXo?=
 =?us-ascii?Q?wozs3bTgq6N76wTzjahEhjlDggr5La1mXzN6BaqOFezT7fCJYRbQiH6IBXhY?=
 =?us-ascii?Q?r5xF0NQ3286pIso6z7qhvVSXZrPusqeCO5+4V4p2b/szuNW8DRyibswrmzYP?=
 =?us-ascii?Q?lZ9Pab1ZFhIlV759uVxuF+pVmVbtxzim6zJpOgz8YdD1hrVW97rlsDG0PBAJ?=
 =?us-ascii?Q?8SouDXyyjuASJsrsyxp5PXO6F7bz3mFx4xeS+4R51KNyBchgds/jHDUH35vP?=
 =?us-ascii?Q?QwfWpSfAG1rnGCPFNKpg2ZfvxkhiKXQjuqmAixKHcr4EM5WW+ToPKI0BM2vO?=
 =?us-ascii?Q?4TdpQ66BwcrvDz2HldXSB0ubekQVVIVOuSZxNqJfftlnVNEdIp5711B/jIwn?=
 =?us-ascii?Q?CHiNOhpK2bK7byw0x2gzBqnviuJ3erIcT9oQ58u5KmP9Vdf2M5vhQ1H7ARX2?=
 =?us-ascii?Q?w5dvqSXYeMY2qkw48Fhlvpw0LQsklJ6EPk3vB4mc7Pq6ebXyzWjmKvRnGq4z?=
 =?us-ascii?Q?k5ExvhRXrwUz4iB4Ls0gtcJs92ZcUfXqd51CnjwgXtMLifQA3TqwYiQt6yc5?=
 =?us-ascii?Q?V2H1EmCH2SXZ6XrZzepIWjQ6GgXexHEghz8VDpaCYfhhYPAqnpQnKReSQoqO?=
 =?us-ascii?Q?kefhZE/thG0SDcS/GpJ/HQ=3D=3D?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-89723.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: c2a3f70a-a39b-4a5d-eb50-08d9fd4a9e50
X-MS-Exchange-CrossTenant-AuthSource: SN6PR06MB5342.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Mar 2022 19:18:38.2958
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR06MB4124
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Mar 03, 2022 at 07:44:38AM -0600, Rob Herring wrote:
> On Wed, 02 Mar 2022 17:26:12 -0600, Chris Morgan wrote:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > Convert the rk808 bindings into yaml format. clock-output-names varies
> > in maxItems depending on whether or not the clock-cells is 0 or 1. For
> > the rk805, rk809, and rk817. This preserves behavior with the existing
> > driver handling setting the clock for these specific PMICs. When this
> > driver is corrected and the devicetrees updated this logic can be
> > removed (since the rk805, rk808, and rk817 only have one actual clock).
> > 
> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > ---
> >  .../devicetree/bindings/mfd/rk808.txt         | 465 ------------------
> >  .../bindings/mfd/rockchip,rk805.yaml          | 219 +++++++++
> >  .../bindings/mfd/rockchip,rk808.yaml          | 257 ++++++++++
> >  .../bindings/mfd/rockchip,rk809.yaml          | 284 +++++++++++
> >  .../bindings/mfd/rockchip,rk817.yaml          | 330 +++++++++++++
> >  .../bindings/mfd/rockchip,rk818.yaml          | 282 +++++++++++
> >  6 files changed, 1372 insertions(+), 465 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/mfd/rk808.txt
> >  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
> >  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
> >  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
> >  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
> >  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml
> > 
> 
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mfd/rockchip,rk818.example.dt.yaml: pmic@1c: regulators: Unevaluated properties are not allowed ('DCDC_BOOST' was unexpected)
> 	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml
> 
> doc reference errors (make refcheckdocs):
> Documentation/devicetree/bindings/pinctrl/pinctrl-rk805.txt: Documentation/devicetree/bindings/mfd/rk808.txt
> 
> See https://patchwork.ozlabs.org/patch/1600127
> 
> This check can fail if there are any dependencies. The base for a patch
> series is generally the most recent rc1.
> 
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
> 
> pip3 install dtschema --upgrade
> 
> Please check and re-submit.
> 

My apologies, but yes I did in fact have an older version of the
dtschema. I upgraded and it warned me of this issue, which I will
fix and resubmit. Sorry.

Chris
