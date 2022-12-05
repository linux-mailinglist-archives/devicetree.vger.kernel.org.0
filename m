Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 893506431AA
	for <lists+devicetree@lfdr.de>; Mon,  5 Dec 2022 20:17:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233041AbiLETPh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Dec 2022 14:15:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34350 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232096AbiLETPR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Dec 2022 14:15:17 -0500
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (mail-db3eur04on2046.outbound.protection.outlook.com [40.107.6.46])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E6AF22B1A
        for <devicetree@vger.kernel.org>; Mon,  5 Dec 2022 11:15:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S9+RaffV3WF5bCf6pzxo/hTbZ5v6FYdNLr+whTbK327TFVKiiG8MQH0M4LiCTLuQ0ibhKtY+ehkGaCqEOhuGldDGiSmSshTJBJ6BRnoKjIllbdR3VdQG3I34X2hyhJfB/qEDhbCWMxiy3KTZMcOi6ZZ2a5fCocLVPouFgvhbGpPmaTRWAwKwa+9xZeIzdNgilOfdOJNjFGxDYCiQiB2SZtamh3i2zHiuN+uwu8njcQ+08Z+xhIl3L3Tln49YSP9bsDgKIICSpBmO3+nORyWRzZPFWW6vJ2CFKJzKT3XASTewJrToYrcxqhlYrgvqpl7zRVz7TT3Vib2NxD9hYSoPLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BwWLHsESZuh3GsB+TjYpwIc+yD/mvkZjB3VbDILrtPk=;
 b=YJCgSoKYpMCnRGlJoHTrcvnuODzY1m4E6usnK69zaQSR/A9sEuLr+tVKNGfoZgcysg6BZAeYBzoFeoZlhWgBd+v2cKyHQ3e/n5MFOPvKtQ/vXgraG7gKzBeAgbWuMe1jmB/iyqtEA+qPj3x9HhnDFAMl1/PASeYtY4Qpk6fG05ICbl8Li/PDXo3zsM7Hx2mSTPR1FMrRZErtuRpFK7PaK8PLvcRmS2MOyrYOw4BPOfiA7PWpvlWO8+Sax3l+JZF7Pf94A6tE7Q+FSBOG2j5fXRCHf+oIFp+YZuf7S3uc1+QLuYkw36FGR0wQ6lU1hRLfO+ZZ5TBRjMtdzu5rGMAh1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BwWLHsESZuh3GsB+TjYpwIc+yD/mvkZjB3VbDILrtPk=;
 b=KUtncWbybLrMkisOyc3KtqcWjKjxH4GZ4r8iIBrxKyYGhvZc1PB3xX6IQRS7K5uQGC39B8zDVXbBz3eCDJ2Nndvfi5vCI1qvohnJZV+9TPmxAPJFfjBPQdjC+wdIuZmUYNd9ZavHJHywPmEF1QdfkMi1D9G/6UKK8BQodppe5rM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com (2603:10a6:803:55::19)
 by DBBPR04MB7530.eurprd04.prod.outlook.com (2603:10a6:10:1f5::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.11; Mon, 5 Dec
 2022 19:15:13 +0000
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::9317:77dc:9be2:63b]) by VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::9317:77dc:9be2:63b%7]) with mapi id 15.20.5857.023; Mon, 5 Dec 2022
 19:15:13 +0000
Date:   Mon, 5 Dec 2022 21:15:09 +0200
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
Message-ID: <20221205191509.moan3imfllfpxkb7@skbuf>
References: <20221201003109.448693-1-tharvey@gateworks.com>
 <CAOMZO5Ba6Kmt-a7FMxj-gN5rEyMJJ=9CFRkS0vQkPf_-72rR2w@mail.gmail.com>
 <Y4n41iL6cG9FsndI@lunn.ch>
 <CAJ+vNU0kAoVFFmoFfiOhtErxqAkB3MmP3Q2dNCZP4xm_AaWhcA@mail.gmail.com>
 <Y4o2TFGH6DK3tRcH@lunn.ch>
 <CAJ+vNU1NDggHF4Wn_kg120uPZ=LPCQf2fZ+x6ii6tEMf7DzxFQ@mail.gmail.com>
 <20221205171045.m5ayo3loh32cdgwo@skbuf>
 <CAJ+vNU123JTbk_t5Eto4M-Wrj6o1fo=8z8qdqf98_rDO=w2yOA@mail.gmail.com>
 <20221205190214.uy6rn4whd6vndo23@skbuf>
 <CAJ+vNU1M-LEiM2guowP-Ubb8cFnQE+YCFTZ=vL2C79Y0g0v1dQ@mail.gmail.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAJ+vNU1M-LEiM2guowP-Ubb8cFnQE+YCFTZ=vL2C79Y0g0v1dQ@mail.gmail.com>
X-ClientProxiedBy: BE1P281CA0066.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:26::17) To VI1PR04MB5136.eurprd04.prod.outlook.com
 (2603:10a6:803:55::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1PR04MB5136:EE_|DBBPR04MB7530:EE_
X-MS-Office365-Filtering-Correlation-Id: b1f75ca8-af13-4aab-ad72-08dad6f508c6
X-LD-Processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: USVLE06FkE2B3j3ibyRRLUZZekrGaVh9dHrVaXlrHYS+1w/WhiW99vWEHSMV/VygLbQQFD52xBFsShnFOiptJAhoMv9FEnYaw83f4pJQbe7HvCMf4x7Q+YRC6V4cLkvMVa507mpWpGeycFG5Z0prI95QcQIGPv+StgaEfg4MrgXK9MSR7yDZ0OxpN7gRkqaBwg7Y+oLXHisbaHm1LDs0BfQgCvMCMcol76pL4JMiZtFsyJfLKZIzdMMKW59qPSQAPV7r2Xol22Lg++nM29hvDX5fKNQ1Pk7MzJdZYwZfDmxHZVW+j592OulDngeVzH6eX9ueIxzm3NaVwB2Ny/Lz4NhVm8QQcUlNKshfxgZfvdQJwwF95u2bISlOg/Ag45fUCP+fNtaFFZGSS7md/6ikbGZVwfiJGuow4Yvm2rWKsZGcEumCdRuppV0gk7GFENcRH7Rx8nIWVBN4vyau9Wt12sOWNxwkljUzvqGVRdAVoTeNeCOhZH2okqXuZ4jAYguP2YW1zi8rvmtNM/wcg7p7ar2m8SXru6Rr07f6Ph0tInou5ym8HJ+DSoL6VS5o3ZA6hR7wLX6O41oL2zSKS0TewjhFLWWOi90109BBpkRT/CLvoHpJgUSiQ2t3iVkMu6ROHvxWPtJDyUhkPGBKslZeizF4jOrtlT+PDUN46Wr6z1s72fFTV2qwDJVlqj8UtYCm
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR04MB5136.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(7916004)(376002)(366004)(396003)(346002)(136003)(39860400002)(451199015)(83380400001)(86362001)(38100700002)(4744005)(44832011)(7416002)(2906002)(41300700001)(8936002)(5660300002)(4326008)(33716001)(8676002)(6506007)(9686003)(26005)(6512007)(186003)(6666004)(1076003)(316002)(54906003)(6916009)(66556008)(66476007)(478600001)(66946007)(6486002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?JeU88QL3sb0fkYuNpH0O0bcqVbGuhCQVq8xCpwzqkqAye4Glh+onH5/JvBAR?=
 =?us-ascii?Q?TiQqO21LiaVpAf8sN2jFFh+OxEANmJM4zmnDInMe+RKoJnN14N4BfXYSi1Qs?=
 =?us-ascii?Q?4Nqs2XT9NU/RAfMVMoNa0FLSmtnXdSc4PSLCqN61xnzPEeckwSUK+hGMzGfF?=
 =?us-ascii?Q?QO9dAfWt/qXGabcXi/JT/CxCMWPjtmTLxgvDCS+BaTh8hneHO3p4Wm5Qg6aE?=
 =?us-ascii?Q?fXRdJ09frgyhe5obQ6/xSdr3XdU2OY9vtcrk84otOmY6SpOR36fTXAD2EDtG?=
 =?us-ascii?Q?2/DZiHV/Gu9YmQM9f3CZIUJH4Gc/EmqbMew2a+Dn2AHkswy/DBA7AkqlKMyH?=
 =?us-ascii?Q?HEmcKHi31+FYqs3+JM8zSpgp34vf/QJtT/AEiZ0RDHEBvoy+HukjdUPIVGrR?=
 =?us-ascii?Q?IQENRq+Qm+FVZzgF/U2QgOGdNAlqQRlamIDv+g/pAbK1loYcI9u8HGwGAXhl?=
 =?us-ascii?Q?2H/Fq3h+4VcmWeR1BQCKCFunmFjpLrhrtDfeE2bcFpl5uFKZLYq35euYoHCg?=
 =?us-ascii?Q?TKrQTldv4B3NmrzmEXgbS+XzLiB+4UYmj97thtbdT74o/HAVS3678qVO864Y?=
 =?us-ascii?Q?nUnUx2TCKud2oQWWgh9Y1iS21YSOPpfcGGuYqRUoGjaMhcj6so7BcKmPJ/K2?=
 =?us-ascii?Q?Uw+P6WvxPY6u8v20vYelTawUsaSyVbYs0RdKXVy5SGgmgAU9WZb5kIAlyIp1?=
 =?us-ascii?Q?n/5/riWbnLWI/yWnnfvZeetNTx1QwfqZunV5KighXYIHxzhL8pfbfHMLNaoQ?=
 =?us-ascii?Q?JyKJAa+eBpN4skTb85cE1d1ppmi5t668B/V0iZ0+W5aDCei0f9zYEQP4ujcp?=
 =?us-ascii?Q?V+kl+RUBX+leMCxzRrWxdIlQtssj4lfQLVhKmxoLevAahoGf5I96ZIma2YzC?=
 =?us-ascii?Q?yFAWq3Jd3zNh+EFzuICbL6YxkjPSOuP3yfzABc+nIRkKq+n0z8NdB3hEj+ir?=
 =?us-ascii?Q?HRuDOqIw+N3x1mjnQotOTL4y+5mnX7NqH84stkama7b4erbx6Z39xBik2u/G?=
 =?us-ascii?Q?aosvSKfWrZZOSw2hsTPwZ0MwYI4lz8uJidaowh0BWZlW9uKxDXMY9jzbx3K1?=
 =?us-ascii?Q?WezyBhrbXZdPuyQEDixD3IpUbYoNe6wVlFNT+xHZ/Cc5jFl6jo1e+Dj3vq2F?=
 =?us-ascii?Q?RfuIAMLxOtfOk3rkzYqdUw5JYs8lRhG5IrkOtzAA1cYOEjBzlbLHRHlaPwyL?=
 =?us-ascii?Q?5SF0HZzTDtf29oHbvrEpBhYUJEfYuAiyjL1Ij96eDlRahI8whkv1663M09+7?=
 =?us-ascii?Q?IpzfAwTg5G2I1h3tOxw+DCoaKZxLO9NSR6oB+vGoe5SRa2jxGREZ0Xjcbqhs?=
 =?us-ascii?Q?tpSvgVpp6HZERFOQpkKRAdOjKGsgnCLPphDeVhCDy4C9wd6oI0H7k6CuJOLN?=
 =?us-ascii?Q?neLeJLxRqa0fOpqXLW9efYIBE2hjS6b70KBBZfHpB0om217fuU/PihHx2rN1?=
 =?us-ascii?Q?gqo7bJdDiB7RkZ/F0C30Ld+E7if1cGw0oec/rfkv8eGTqcqtLD1J/GIJHfJU?=
 =?us-ascii?Q?u6JzZNB0+97Sr2ZVuNAtP4o1jEszITEzxCnAWPBYPdA0hpSZrHiYfZwLxKNz?=
 =?us-ascii?Q?r+ppkpsNVCw5kPxmISBiuSFi4dFYRcaZs6mLql/O3UflUUdmBP+o7Ug18HMs?=
 =?us-ascii?Q?og=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b1f75ca8-af13-4aab-ad72-08dad6f508c6
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5136.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2022 19:15:13.0478
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NhooecR+/IbQM9nrN4Ob6kbED6tU9gfgkcpi0UJqGV8TwlsoGbvdxaBp0UNA0gWb417KdJTtAjvUEYW5bWGm2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7530
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Dec 05, 2022 at 11:10:45AM -0800, Tim Harvey wrote:
> before adding the internal PHY nodes it works fine so no backporting
> needed. I just don't want to add the complete/unambiguous dt-bindings
> until your patch lands as at that point it would otherwise be broken.

Right, but there is some debate on whether device tree updates should
require new kernel or not. Since in this case, kernels 5.18 and newer
can trivially support the updated device trees with this change, I think
it would be silly not to let it be backported. As for older kernels, it
really depends on what the board ships with.
