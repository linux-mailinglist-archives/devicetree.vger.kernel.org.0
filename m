Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 723AC642E66
	for <lists+devicetree@lfdr.de>; Mon,  5 Dec 2022 18:10:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230092AbiLERKz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Dec 2022 12:10:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229891AbiLERKy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Dec 2022 12:10:54 -0500
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2058.outbound.protection.outlook.com [40.107.20.58])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54EC2B7DE
        for <devicetree@vger.kernel.org>; Mon,  5 Dec 2022 09:10:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IVOxOmo8fiisXD7i0sZVCQDGanCu94GlZym6smxEoT8IQHuiirtaQS/NnueqCv87yJaslPFfxtdn2uK8VBjCf06I98m+wKl8y4BA2+nonhpJ/iuEH+B+9OJMq6SgpqMTFRSaRAQMLOlw0a2pB+6Dx6xU19Y0qaTVz+rY9qamGz8MWGJU8TZE3vfLz65F2fwH9lPYsnMyh8f6vv8lUSSLZCOFqtuKTp17QGwO3J7FwgqRmIuiMrkpKnTINkUadaowltVJgitXAWNFAdzEsq7Ny6zlX4Ap8x8UzPrHT/SRxXGk5ZeX4kvEFv84ajh1YmGREP6Wn7wu81PZBSCTbyB/0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/PA/ps7GQpve1cJQUhLtffPfhj2SCkT6l5xdNPhwgnA=;
 b=B1oIwNysbVqKoaDkoN4rDKV33C8Lz91+GirguLmY/gfbJbhZSfPLdFdC5NZDddDUOLPruDQLZAzcH5hJfrD45P+8NhuxaAdSdDbcEL/q00AVHUGHhjDBHy4dn6TyLFlLkJPWBH38KAQRM9ZAL7kRN3DXpCa+QMwVnFzKPhy/4JEtESRWy9bkvccfeX8tTAReTbQnht3ujg+Vcw5NnWrbpjRaJf6jIct/qOADSDZtYD63HTdQB3Waf5cYBuFLyDZQDoImTN2UqbM+8j5Ue75FYnnSZaw7ZyapzE4kfnVtHnZ893Dtc3pe+B1rT6S3F+DMP/MhUF9quyjhXIlcgpkwJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/PA/ps7GQpve1cJQUhLtffPfhj2SCkT6l5xdNPhwgnA=;
 b=hU3AoNDO+LO5mBP/YUvc0lzvk18VsTAdEux+8NPmhpR0qFX4yGobzkH5kdzoxGpOyiCHk8zXgiMtPlfTN/0Ro5wAnc116cxF1WAPlSOVfZ2hys34aU0XrkJc7/3/FKrq/ZTpErapYYn8DFjCWhB0khk29aokJAEoUnWZzw3xe8o=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com (2603:10a6:803:55::19)
 by AM9PR04MB7523.eurprd04.prod.outlook.com (2603:10a6:20b:2d6::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.11; Mon, 5 Dec
 2022 17:10:49 +0000
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::9317:77dc:9be2:63b]) by VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::9317:77dc:9be2:63b%7]) with mapi id 15.20.5857.023; Mon, 5 Dec 2022
 17:10:49 +0000
Date:   Mon, 5 Dec 2022 19:10:45 +0200
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
Message-ID: <20221205171045.m5ayo3loh32cdgwo@skbuf>
References: <20221201003109.448693-1-tharvey@gateworks.com>
 <CAOMZO5Ba6Kmt-a7FMxj-gN5rEyMJJ=9CFRkS0vQkPf_-72rR2w@mail.gmail.com>
 <Y4n41iL6cG9FsndI@lunn.ch>
 <CAJ+vNU0kAoVFFmoFfiOhtErxqAkB3MmP3Q2dNCZP4xm_AaWhcA@mail.gmail.com>
 <Y4o2TFGH6DK3tRcH@lunn.ch>
 <CAJ+vNU1NDggHF4Wn_kg120uPZ=LPCQf2fZ+x6ii6tEMf7DzxFQ@mail.gmail.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAJ+vNU1NDggHF4Wn_kg120uPZ=LPCQf2fZ+x6ii6tEMf7DzxFQ@mail.gmail.com>
X-ClientProxiedBy: FR3P281CA0122.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:94::6) To VI1PR04MB5136.eurprd04.prod.outlook.com
 (2603:10a6:803:55::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1PR04MB5136:EE_|AM9PR04MB7523:EE_
X-MS-Office365-Filtering-Correlation-Id: d4a9bec9-8e00-4ceb-fd83-08dad6e3a7ec
X-LD-Processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LmMkJaBkh40JMdTmHoBpJih1bZZ3A60swKJ3aE8LGTd6aOj57vzQc+99kBn9S0ldhEbkxYUpXF4I8z2I0jSGoA2lSDh2JDZQnbqy4Rayvg912xIJcDMnuikXDIuW32iWsG4TGS33NiFE8LKIeW14j7ztft9KXzr4aNqXfyRbMEWhe6XBvL7WvVGZhuCtqw++jAXetPAdfNsC/pa2ElGPQqDDytFp0tmbT3eNeTHGYWzaCSWINfBcEqHVoE1H97TUiXgswMrClL5jg/5xQKjSKqgahGNaIrptqkjId3x019hZMMSHCgaDwOxohspWNKz5o2ezuObmNtWe7bSJQ4mMcRO3z2I8TuATQJahSaw+j93SfdrZSXXQKHmH5MAkR4l/11xZrSECT/veEdr/4JiSq6RDLL04Z0DyGvw0KTE6M4jKpe926duNfVW+G05xs3S1Zie9bKOXOIDJ92Z66iGYNtKXetb4iVbOyA4QJu5xunQXne/Y6pOdWXNjhiAVuwM7igiBDac6IWjsvRBEtpFr7CQSLGpx96MEmoPV27YiBtMdI/BUh0wYlak4C5JhRhbKVu7QTTLWPIMRA9phRayDJVyPa0VEjEWX3qB+p3ojIihWgQyVSvkqkF54Yi+AC+xCivm5dQu1unRL+LpJHePwtjKnPjhos5Mdb9S1DivZ7cIuaNS9vjsGQ6jEQ3x0LhVP
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR04MB5136.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(7916004)(376002)(39860400002)(366004)(136003)(396003)(346002)(451199015)(86362001)(478600001)(6506007)(53546011)(6486002)(38100700002)(186003)(33716001)(83380400001)(1076003)(8676002)(4326008)(44832011)(5660300002)(7416002)(41300700001)(6666004)(9686003)(6512007)(26005)(66476007)(66556008)(66946007)(316002)(8936002)(6916009)(54906003)(2906002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?izd/WpHR9ECRhwl4ym/6jDaR0/ovEEruMe6QVISpQTiLrmyUiX4lZRy2X10b?=
 =?us-ascii?Q?PbfGrnmykUFDzZUhrwygDpNWqPenn82mE1s7UUI5UXFYFo8A4t5Ysq8BeohV?=
 =?us-ascii?Q?oNrTI+xz7XDbRLzIdziw9iv9Fg+A7Lg+GLOPeaGGiwCOEl6WsJmhUyVZKFeg?=
 =?us-ascii?Q?gB3RGFG5YAjAyrWbB+cD4DEstLsMFRyOlIS5fWIUxnWhlWmmCLzcmf01yMPk?=
 =?us-ascii?Q?/PIYOQF9fBKWQKIzkRKQixGyVIouQxihYbnbHflDm8zgWRFUNMugf0jyCdIl?=
 =?us-ascii?Q?nP8DcLSWrsBcvQCc+o8uMS2IgsEZSIRfJDQHMNHwDDuG/veqzfCKI0lLL/5r?=
 =?us-ascii?Q?MblScEKu9b6cSDfnGO+MMahKCVgcBcFNyLosUf576P1v6DvvmIDi6jm+CinI?=
 =?us-ascii?Q?HLtDkKD/4Suqd5RxtyILSEG1rPFijT0oZYxIdBuWxYuBJkXwpLbxF9UefEiU?=
 =?us-ascii?Q?oJUunr/urb2MWAir4ZzOk/qAlBmBA/bjivJ93k+kZBj++ZsNftt6+4EDkuN+?=
 =?us-ascii?Q?xtouKLYiYXOtV1822F9rCp0jCVCyglkpLawslL72++iAp0ITUB+++WDvV8Ol?=
 =?us-ascii?Q?xRRFq9/hI0yVRzdLqe2dfoJTCe0TdAIGl9hbnLuyJM8rkQZqP6k+kz57yP8D?=
 =?us-ascii?Q?SWUXI81KEaZIvOv2FO0hWHUZeaTWgXx3a5Ws5lSNFZ4tdpJzNTbObPtwdjCk?=
 =?us-ascii?Q?KCY6jN1B00gVttX1hYustualP1MmtCs6OhgV8mBUG3B5GXXQwvw2b12v5T5Z?=
 =?us-ascii?Q?nx/D2xNQ1iQG+H5+SYXxueUwS+0r2nynY6nMSL4ElXT+fc0GjtTTK17qQ2QR?=
 =?us-ascii?Q?tRyQ4d87Lrd75l3Xn2D4Ca63KA49ktu6HHQBhgzaH1Y5XL0/QcqnVg8+Fkb9?=
 =?us-ascii?Q?pj0GCjF4C2VatpfvRPuO3ZaEXuGi4Y/b8c0TZMezst8pU6ZERu3+3DNjwGoA?=
 =?us-ascii?Q?a1TY3PHf3agx/G5EMGWzzy/IKj238lkto7tGWbILi/iAVSM0yGDCW4/X6vnn?=
 =?us-ascii?Q?cmpX6hlSqQ52atfc6F6JJ3SMhZEs9U0yLGpzOpPfbeVGLWLkvdpC3R2S8mhR?=
 =?us-ascii?Q?BmbE1eMQnswhLxuaGHEH1KOJErxdD5a8ZbaW1L6ZvuSeX3EgtnmBuEOdWklO?=
 =?us-ascii?Q?F6C1E659+0H0s7oqfxHSJYDAewfeXjmv0oRxKbXEKB11UZ9qZaHcGdCRnW4B?=
 =?us-ascii?Q?MCtIgxjl2NMI+b3yRuOCXsEZ1WFEcxndRSasgaKOkL9DVOTGoRwT0J8AJarE?=
 =?us-ascii?Q?1Vc8cJIo6rA68ZMH/drryey8+SLKHrB7QIJ2ZBL8JRuRcUgsyuiyCyWF1nqZ?=
 =?us-ascii?Q?WrAcWmZMohJ/c8RaQ/4qN9fYw4oDWx4UFGINlsWEs7NtCS6r6M17tM3Fw7Cj?=
 =?us-ascii?Q?IQNuM80mgP+pVXZk5SO5L01c4jSfLvhC9hdzTgplIWoz3DquXcytk5U7mYJo?=
 =?us-ascii?Q?qc4uVgz2nxYxwmDJl5LtdPfici5/jYPbiO8L2fJaIoZ/AVIH+jbHfuXjR17x?=
 =?us-ascii?Q?eTM48kfQlHOJEFCxJYC9r2Cho7S9lTXHmhEsJ/YEHoLPvW7SMZ+3Lg0vhSiD?=
 =?us-ascii?Q?rjT5urs5nyYH6FB+u12oiw6bbdX3iDROqz+f4TQ3aK+rscSXC2qoTy7rH7UX?=
 =?us-ascii?Q?VA=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d4a9bec9-8e00-4ceb-fd83-08dad6e3a7ec
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5136.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2022 17:10:49.5686
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oIIsGMyHfQnl4mVsIK5NUIQb6DtUmm4EJHnj7QDq2Uabn3bGGvqlmGOHcLMk8U3apaC12Y9QK8/+pnpgV9A63A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB7523
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Tim,

On Fri, Dec 02, 2022 at 02:29:20PM -0800, Tim Harvey wrote:
> When I add the phy-mode/phy-handle props with this patch I get the
> following failure:
> mv88e6085 2188000.ethernet-1:00 lan4 (uninitialized): validation of internal with support 00000000,00000000,000062ff and advertisement 00000000,00000000,000062ff failed: -EINVAL
> mv88e6085 2188000.ethernet-1:00 lan4 (uninitialized): failed to connect to PHY: -EINVAL
> 
> I've run into this message before and had a hard time understanding
> the issue from the message - it seems to indicate the phy status
> matches advertisement but that its an invalid mode?

Does this patch help?

From 6bd79d9b9994fcb7762301fe297f963c272d9210 Mon Sep 17 00:00:00 2001
From: Vladimir Oltean <vladimir.oltean@nxp.com>
Date: Mon, 5 Dec 2022 19:05:24 +0200
Subject: [PATCH] net: dsa: mv88e6xxx: accept phy-mode = "internal" for
 internal PHY ports

The ethernet-controller dt-schema, mostly evolved by Linux, has the
"internal" PHY mode for connections between a MAC and internal PHY.

U-Boot may provide device tree blobs where this phy-mode is specified,
so make the Linux driver accept them.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
 drivers/net/dsa/mv88e6xxx/chip.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/net/dsa/mv88e6xxx/chip.c b/drivers/net/dsa/mv88e6xxx/chip.c
index ccfa4751d3b7..ba4fff8690aa 100644
--- a/drivers/net/dsa/mv88e6xxx/chip.c
+++ b/drivers/net/dsa/mv88e6xxx/chip.c
@@ -833,10 +833,13 @@ static void mv88e6xxx_get_caps(struct dsa_switch *ds, int port,
 
 	chip->info->ops->phylink_get_caps(chip, port, config);
 
-	/* Internal ports need GMII for PHYLIB */
-	if (mv88e6xxx_phy_is_internal(ds, port))
+	if (mv88e6xxx_phy_is_internal(ds, port)) {
+		__set_bit(PHY_INTERFACE_MODE_INTERNAL,
+			  config->supported_interfaces);
+		/* Internal ports with no phy-mode need GMII for PHYLIB */
 		__set_bit(PHY_INTERFACE_MODE_GMII,
 			  config->supported_interfaces);
+	}
 }
 
 static void mv88e6xxx_mac_config(struct dsa_switch *ds, int port,
-- 
2.34.1

