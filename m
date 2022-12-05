Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 789E76430F7
	for <lists+devicetree@lfdr.de>; Mon,  5 Dec 2022 20:02:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231924AbiLETCX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Dec 2022 14:02:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231307AbiLETCW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Dec 2022 14:02:22 -0500
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2057.outbound.protection.outlook.com [40.107.21.57])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B12E565AD
        for <devicetree@vger.kernel.org>; Mon,  5 Dec 2022 11:02:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LYM+xYu/Ol2TLoKzHSAuhQvV8JYQBNNysqIFPhc4K5mn+DAxi+n9OOm82GNZRJ97uQpT2ivaRRlvFPFAvhPICZ/FC8OYFK3bKsIcuhtLBMcbZgXawtFLG/WJD+i/QCzyLpyfu/wGFYiSud+GlGRD48YCyqt4qV0d4WvW8Bbmkri1RzLgOeuFBHoAW6HI7NwLxgFT3XVOKEGdu6QwllwPcxggui4iW1B7b8FqR7rFOQyONIAcXzRqW9D9ufUFJBIP2oeUCebnPsgYcxb8T2dD2ZPMGk5BHHyJwLQW4bfKAX+16q/gwOKHurZxKyG4KNu56FdFjh/dKomJd9JsHDwRVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kpkIy2gnS/9NXJMIwbTnje+ckiFhA8YflcDDTr0L+Us=;
 b=WfYYpFa6C5BYScKE7f9/Yht0Yz3k13TiVfZ841cEMlfjGHYjU6LvGdLaz/T17ESXjPPqovoV8NAw31aoQp0KQ3G4lq2znGdPtFWeV56VrfJIdGV9Wky+yF1wTBvbO6p+5xbuA3KLtDB8CwPxVVgE7MXpyxppC1IbOGmr68viCrHp2O1HAXret+g3ZeLsZGDuSG+gj8Czl9/SMMWWRHXClUcVv/nRFL+ElsmsYYCrql9dA8oEhqBvDNqQSR09CCUa13LbEdQh9D4fvxxKiUoW+7Uoi+t3JGpqL7+uKSOZAtvGtPKVrQtBr14PppZjgmCK/dzrBhnprgc1sl5orY1oBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kpkIy2gnS/9NXJMIwbTnje+ckiFhA8YflcDDTr0L+Us=;
 b=E9skyDzsDtuzUGcv3if1xYCeYuP7WyJWOQA7fOoyNBFyarnkeVVMSFQZupLGlljByc4HKAmOB9/LYqJzzffui/ctiZoQprm7MXibho+DjTKaCZ7vgZhJZo2ccgx6jfgwdlLErccDBCGMQQr7ZnEed7Xi4vnxIAHlfSXZbCD6r5w=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com (2603:10a6:803:55::19)
 by AM8PR04MB7780.eurprd04.prod.outlook.com (2603:10a6:20b:24c::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.8; Mon, 5 Dec
 2022 19:02:18 +0000
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::9317:77dc:9be2:63b]) by VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::9317:77dc:9be2:63b%7]) with mapi id 15.20.5857.023; Mon, 5 Dec 2022
 19:02:18 +0000
Date:   Mon, 5 Dec 2022 21:02:14 +0200
From:   Vladimir Oltean <vladimir.oltean@nxp.com>
To:     Tim Harvey <tharvey@gateworks.com>
Cc:     Andrew Lunn <andrew@lunn.ch>, Fabio Estevam <festevam@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] ARM: dts: imx6qdl-gw5904: add internal mdio nodes
Message-ID: <20221205190214.uy6rn4whd6vndo23@skbuf>
References: <20221201003109.448693-1-tharvey@gateworks.com>
 <CAOMZO5Ba6Kmt-a7FMxj-gN5rEyMJJ=9CFRkS0vQkPf_-72rR2w@mail.gmail.com>
 <Y4n41iL6cG9FsndI@lunn.ch>
 <CAJ+vNU0kAoVFFmoFfiOhtErxqAkB3MmP3Q2dNCZP4xm_AaWhcA@mail.gmail.com>
 <Y4o2TFGH6DK3tRcH@lunn.ch>
 <CAJ+vNU1NDggHF4Wn_kg120uPZ=LPCQf2fZ+x6ii6tEMf7DzxFQ@mail.gmail.com>
 <20221205171045.m5ayo3loh32cdgwo@skbuf>
 <CAJ+vNU123JTbk_t5Eto4M-Wrj6o1fo=8z8qdqf98_rDO=w2yOA@mail.gmail.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAJ+vNU123JTbk_t5Eto4M-Wrj6o1fo=8z8qdqf98_rDO=w2yOA@mail.gmail.com>
X-ClientProxiedBy: BEXP281CA0003.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10::13)
 To VI1PR04MB5136.eurprd04.prod.outlook.com (2603:10a6:803:55::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1PR04MB5136:EE_|AM8PR04MB7780:EE_
X-MS-Office365-Filtering-Correlation-Id: 82436de1-7ca9-41ac-363b-08dad6f33ac5
X-LD-Processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vYlbN4C01h3Ne7pf60eaRuqwv0GroXYwpdg4qsWP8TQ6/DuNr3h6UxtjhlozKjvl1UD0dR6uuypcafwkuF75dgQJMDNpyYVFIHTPkx2aPeYMPT282uUPb5+gyRZqLAElHN9vlr8Suos4TmWFv0NceLj1Sxj7BbCN9FLwZIOyEpvYsK5isbG0RNSOnMQVU18f96UjH/D8CaXDkm1iuGLRMLeXxpX0VApyfEegUBGn8aNzC6IK4QrwT8udtUBh04RdNyw82TtU/0g8liEO4dMBqoFtOgkyvxnpsiGJ0w+AGCqANd+lqkgS0cm7vKR6yAzcmu9qXL9TtEUASQU4rnQdSc80GUBopXRjT/ng0FBEVoWpkB97bK54t1Q8WovuBvIIXIpcrwd84jztdVsTwPtGF4NL3Qu1xQQwLnWe9JFd6qB953DPyCC1aZ0BsNGH8hI4To1EMImBX0QQadNBrtwkG3RRRAv2sBY8e2HlWUZ8dJdTN30nwGUAEYUonCl5dzaXtI49xghclp1DNfrgnCclPtc5EzTAmwRfiCmRT+ExW8acerg9Wbj+Dl2ufBN6jKY2ZxEZrIp8PH/TcR+u8gbTT5KLCPLa9aMLJsGW3TZ7Va+WZuaHcCG6XQYVIrAcPPgkkRhyGIbybhdUeAJmcaV77p4yfEZUr4/rIQKi7i1MlS+SUso11gEQeq1GM7cSmqRb
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR04MB5136.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(7916004)(376002)(346002)(39860400002)(366004)(396003)(136003)(451199015)(478600001)(4326008)(6666004)(6486002)(26005)(6512007)(9686003)(54906003)(6916009)(316002)(86362001)(66946007)(66556008)(66476007)(8676002)(6506007)(2906002)(1076003)(41300700001)(33716001)(186003)(38100700002)(44832011)(8936002)(7416002)(4744005)(5660300002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?d3FOogLEpQshPAmnt7UPo7/GzzY+d1Yyhl/eLzEPuQTNF6ov1ZjB/DTb9JFL?=
 =?us-ascii?Q?iSU/8S2VtdWn7VyV6rDb5MG+1XkPV0Bqf4EZLg2D2SPX4jmVrtQDC9+68Rsr?=
 =?us-ascii?Q?yTTFUrIhHeG7sbzpMiui/u+eto9Q9qaOn6NA9MX0wEFOz5Y3N40G89vowzRe?=
 =?us-ascii?Q?6cQ0lCkl3mUg4q4J5vb8rlJSCImAQsHQuHmeMnRXLK/LZFIIh9Io2I7tX8/J?=
 =?us-ascii?Q?QEg26OSidq/sSdWSG9wealeFFiTneob7rTN1DNkP9zXdh9fbynErYDxqffm2?=
 =?us-ascii?Q?0UzhPNCycbkiy1rr70Z00+cM9WQPEfCksOPFmz35u51A5XGrPSrp4ugFdXhW?=
 =?us-ascii?Q?T7SSLlJOf1xHBwSDbD1WKpVlAZPT7hy7STVieQCEclAUlj4OFco3cWSfaSOj?=
 =?us-ascii?Q?L1R53xd06fFj3gMiH66gwVH+wJk6d+5/v75oHPoHo4Xz3FqxHdvKuOHxcU2I?=
 =?us-ascii?Q?qwE6NAmIUdpLx+ys8Ndyu1lJTusBkPHAa+v1cU95CFxXa85AoeG4sZ397Zjy?=
 =?us-ascii?Q?gJJn7utopvNXoVLNpxPXKEIcApVDvjE5HZNLOAEkNOI+ztmlFFXBnTjbBKKP?=
 =?us-ascii?Q?0slbInloPjIxFnNtHIIMqmQOXlCA8GXxbFAewweqbkRqwibQSSh49zpZZw1e?=
 =?us-ascii?Q?1E/eH6MXFvDgQaEKm+kSDdRyGD7epaPLFAlBez/3wuClso0czCWPiDUK3v5W?=
 =?us-ascii?Q?igY68P75hE+pHzy8XrdYQ/7vPVfB9Xzw1jQJ6tYaCD4UexQAUB1XKSE7QEQO?=
 =?us-ascii?Q?3+poKqjAyY6YGrjhXX2pz8V8FyELXMms2IufXZdrgnfQKWieUlLexBq//HGi?=
 =?us-ascii?Q?Fc3L309f7NdGYeNp+1K3pFzjtm84+35lCSwiMuWQGBfwJKI9VMg7ouEIcN6R?=
 =?us-ascii?Q?CIRDVDvanXTGNwJtyl+mOL34UKNJlRo7OUwl63NL+TKKnYPAk6VnKLJ8wHvn?=
 =?us-ascii?Q?uEEdVmvU4+FA1Ln9WdxX+4GCxVvAMPGkEbWPk21YbNqwer9luo2x1LVLrq8/?=
 =?us-ascii?Q?3JndzJZOww6e+EqzAD9lbH4pR1K2qCN9v72+/h8btPvSVEl2R+yzaiIPi0ZL?=
 =?us-ascii?Q?qQ6oBgkLz+8+EH3Ni7DxZt8vo9IQ7seP2qi3wttjnld8GXoPDO7wNiGQ/Pci?=
 =?us-ascii?Q?bPBg9qR7b7De6anyg7bUGrjYmNRlEQqRA0/dpxnBJuCcXsq3bNZd+w/yZeqK?=
 =?us-ascii?Q?n7BVbFpvbkPtlwTsgH9Fa9d4hbye4ssO0qZbv4BkNK04EiQXiA32KDn79Hti?=
 =?us-ascii?Q?1B3mC7dSeCd0+jOmUGZ0Rzh/Fzfq1BHub6tCALbTXyeqFFanMdT7D9zLNhoM?=
 =?us-ascii?Q?xxbBNLxNT0WlnrTHjTbMbf8roeCPr5uxPDqc5xyGoS9SQ9i3HPkomAh7EVrU?=
 =?us-ascii?Q?epy6L2D2pJOPsMfr/GYVkZHx8BqKY3DHCnXsFHpnKRVZJ5jQRbnNS0rpHPiI?=
 =?us-ascii?Q?uswsHbM1MRF6BkUbgBMyOyDhDsQokssEyMi71qwwhXhDryefPgUNnSApTjvK?=
 =?us-ascii?Q?SVqA+zoh5PHnFFuugq4ExV6FXGiGKqauGPcHNtKaunFyT8yJzPRdbTmaWe9f?=
 =?us-ascii?Q?neBykBHR5brKtqJ7SfHQYuOZe9m/s3raj3NzYQmp3xkIZpgT+wEbSg3FpVr4?=
 =?us-ascii?Q?vQ=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 82436de1-7ca9-41ac-363b-08dad6f33ac5
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5136.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2022 19:02:18.0871
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 62tsYv0fwhxowYZhruAL4AEi/LWsEusjzNn0+QUNxx3Kz/xhlj5vE1U/gyHUtSDCMzlxCVDz79J47Sn1zia6Ag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR04MB7780
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Dec 05, 2022 at 10:01:35AM -0800, Tim Harvey wrote:
> Vladimir,
> 
> Yes, this patch resolves the issue. Enabling CONFIG_MARVELL_PHY
> without this patch still shows the issue.

Yeah, that makes sense considering what the issue is.

> Thanks - please cc me on that and I'll respond (unless you want me to send it).
> 
> I'll submit a v2 of my dt patch with fec phy-mode = 'rgmii' after this
> patch lands.

The question is how far to backport this change.

I see that the GW5904 board was introduced in 2017. Which kernels do you
need to support the complete/unambiguous dt-binding?

I'm tempted to submit the patch to the "net" tree (making it a candidate
for stable releases) but without a Fixes: tag, making it go as far as it
will. That would be down to kernel 5.18, where the mv88e6xxx_get_caps()
function was introduced. Further down, and we'd need different patches
for older stable trees.
