Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B49A961012C
	for <lists+devicetree@lfdr.de>; Thu, 27 Oct 2022 21:11:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235495AbiJ0TLe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Oct 2022 15:11:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60932 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234810AbiJ0TLc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Oct 2022 15:11:32 -0400
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-eopbgr80040.outbound.protection.outlook.com [40.107.8.40])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D8232F676
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 12:11:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A5STmtmow3E/XeGnt505Y6Kocks0q0JmtKNk5UqyGZpl1rDB0q6f0g2i754RBttJV+8sLfGqmf7elogESpUYsumCWljk/tCSctPdt50u3sZu5rOQScCyoktYfDCGGn8WpGv9UJuEwuIjSn28EPemd0Mp6Fz4r+vggCNSou71+I+l+8jIlWoxReCoF36VXXhnkfaLWKaVCyQ3WXx8T61/OpqmTu4kZo5Asx6mi9kez6jq96nonnlV6W011HOs+oHUo/3Tp3T74MZ6zLcG+/wrim4U2nt/ut+vgR9ioxuZ8z9KnlbMp3xCAv+pdn4FPb1fKcRN8B06exavxnvuEW821Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AV4YSLSWUEa6icuS3ElbSt+yZKjwyRoBMk3Gdh1j9EM=;
 b=WC2URtugTHuqQ7+vfMzO8dVDcUNGSeG+dBa4y39lG8OT8plNBT03YyrkmVszk3s3ag67NePBlJR/AiufLvZ1nMZKBB5eZjZCe5x4ZF/7a7grzVhM9FYf1q0juC5vdhxH77RCC9oXtn5DluR8bBauDQel/k8fAcB+64/n+L7avWVOh1UjLDFO1jxZUy3zZa3u4SyCxC693GeNDuh3kfHRKq+RtXLIVcQtKrboy6gA+I6kwlxlDLfOFGQSwPCqnUnYIVUaR9OdvmpD8uolhVcFzoELEV/Ou+P2F2GDzD+rovqNvJJ8vrmM414zqEOCeAxDgiFucKE629f+bGOl2G/e3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=seco.com; dmarc=pass action=none header.from=seco.com;
 dkim=pass header.d=seco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AV4YSLSWUEa6icuS3ElbSt+yZKjwyRoBMk3Gdh1j9EM=;
 b=qId7AJsOlcOpyuRrEb2HKVxcXiylmLxG1ekD5UEhOd1AMLKlhMeIEHiZs8pQuTEhzCoBFYcnhCuBtukew66iVVQy4Y/07yB/dA/Cba3M/SJaAbKAVaY5CCtu2YFu0unVsKi2wml9o+xvLCblUnT9Ig+VqivRz+EiSSrOs1NqC37qfr2QU3GAgZ068ihHS1B4VKjKWzGDKvsAnjAlDCYFV9QSohWx+TLXw/dfCsfLwxVI+ek0Ktxe8p3kPOFl0NkXrPN03nG1+52g7mVWAknRR+OhCvzlHdi/+wZ3KAgSPxl9b7bEoIgWYimPolQXsZ73jaTiOkQDZLfloHTpCqGVRg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=seco.com;
Received: from VI1PR03MB4973.eurprd03.prod.outlook.com (2603:10a6:803:c5::12)
 by AS2PR03MB9648.eurprd03.prod.outlook.com (2603:10a6:20b:5e8::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.21; Thu, 27 Oct
 2022 19:11:29 +0000
Received: from VI1PR03MB4973.eurprd03.prod.outlook.com
 ([fe80::3d5c:1e59:4df8:975d]) by VI1PR03MB4973.eurprd03.prod.outlook.com
 ([fe80::3d5c:1e59:4df8:975d%6]) with mapi id 15.20.5769.014; Thu, 27 Oct 2022
 19:11:29 +0000
From:   Sean Anderson <sean.anderson@seco.com>
To:     Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        linux-phy@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Bagas Sanjaya <bagasdotme@gmail.com>,
        devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linuxppc-dev@lists.ozlabs.org,
        Ioana Ciornei <ioana.ciornei@nxp.com>,
        linux-arm-kernel@lists.infradead.org,
        Camelia Alexandra Groza <camelia.groza@nxp.com>,
        Madalin Bucur <madalin.bucur@nxp.com>,
        Sean Anderson <sean.anderson@seco.com>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v8 1/9] dt-bindings: phy: Add 2500BASE-X and 10GBASE-R
Date:   Thu, 27 Oct 2022 15:11:05 -0400
Message-Id: <20221027191113.403712-2-sean.anderson@seco.com>
X-Mailer: git-send-email 2.35.1.1320.gc452695387.dirty
In-Reply-To: <20221027191113.403712-1-sean.anderson@seco.com>
References: <20221027191113.403712-1-sean.anderson@seco.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BL1PR13CA0218.namprd13.prod.outlook.com
 (2603:10b6:208:2bf::13) To VI1PR03MB4973.eurprd03.prod.outlook.com
 (2603:10a6:803:c5::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1PR03MB4973:EE_|AS2PR03MB9648:EE_
X-MS-Office365-Filtering-Correlation-Id: bc388cbd-a1a1-4553-837d-08dab84f0d3c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Zt96spsbhWvuC511s33mWUCC/deGTx02VJP8BJGFSwFVlnTH4XoyZ5Xm4plmNtMvzm2yCgYXwahEJ/jF/HL2xEWNwjEWJoPvJS17NT7wzqHUSphNTCQI5iDsFJ3MARL7X5ioir91EBMcshAa0e1NfnHVz2gO7joBxKIl6yd0DxvtoPa/FS5mEL0IphMMkj+hGl7c+SOvYrcaeZyBPCSMc50jjLt8V30DeOz5zyFFXiEfuiAuTyFZThQVEgVtwqp/tUL3dYzmC3VJCIsdlnDqrAiJW7ZMFLA1FscTt7nH2GpqBqtFpEakkRoeZ+EraoPb/pvZkXPAUe8EK3N6/pT7SBQtE3zA8d/8uw/33bw9Imujxf+/X5IXAMqgJROzQOW19Xcb200EhC8Bm6rZjdehitOxFCFzeEmmzlDMYRZVHssXofC9zXLve0mJN6CqdF5c8zJ1WKe9Q3VzSolXkJU4C6uN37Fs8bo5GUxQEkz34B5L+7q8slX7+OQH9rZOCczuLDa7iHjBoo+Gnts+1MYVKf91QKKxB7+Y5At9a91oXGbQL5TvQt4zfvR9Q2JYul5uZHUmLYZtQGgzkjjJ0AwIUvhqLkFze5ZVlk/nmLw8/tsL1H9b8PXAvgcIrXBsWtVGKsyc0K6h05BzRtRx+0etVXOG4BRr0dCXooXK/xAEnyonMM1kCZ4cuOs+APtNXUX95MJNlA83um0Lq38KEHeI15ESy5yM3BfWeBBqOmTtec0I3bQF0/r5kku5fXPDPsDJb1FqAKsiI9nEWmdYaBKfBcLWN+VZl1I6FV3i7QVGplE=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR03MB4973.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(39850400004)(366004)(396003)(376002)(346002)(136003)(451199015)(110136005)(478600001)(5660300002)(966005)(54906003)(83380400001)(38100700002)(6486002)(7416002)(2906002)(44832011)(36756003)(66556008)(66946007)(8676002)(41300700001)(66476007)(316002)(4326008)(8936002)(6512007)(1076003)(186003)(2616005)(6666004)(86362001)(38350700002)(26005)(52116002)(6506007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?aMdzyeZYBlltU63Ktq1GjWB1WO/7bI+lkaJN9cDILDDKqkFZwkbzj73CKXvq?=
 =?us-ascii?Q?xCXYFZ733sX2ClXKr8dtjxU8JdZqBcULxybVcFRrN+kwUf/If7ZHM9BMaUFH?=
 =?us-ascii?Q?twLR/BBGHhXJgoAiQP/mjCJ8in6sc6oWereoJEbjkdYBDubwK9jznuCT9eiU?=
 =?us-ascii?Q?gxwbDJ8ptcm4xA5QvQrEqkEcC+BxgpIEDJIhi5mM/fWgkGm+W7lXGalm2g/v?=
 =?us-ascii?Q?DnXj0jjcMnAvZWwj0xiHiYQ+zrhb054GuE6K7P21yt8/nfGUdn/gLH8c1cHr?=
 =?us-ascii?Q?pQxGrtlsaIA5cA68oTjgm1ELEa1VCv9F9jqHcsqjaVb7BPfzP2liC0FDkw0z?=
 =?us-ascii?Q?NcxbLwsfFnfXGwFa6ZeUXUw3159phMicCwdmqgg6ZAnhcUClh/DT3VqZL3TA?=
 =?us-ascii?Q?hNh1wkdwHqA96XjBz22EDZm/xRFa6A+y2NtobmXpBCQwW/gEm59inZkBNOIX?=
 =?us-ascii?Q?dlj9EKLROi+a9SfNA9AmcDeMUzqNBzVRD0n1i+d5YV+iMxikdyZE1uYTKvW4?=
 =?us-ascii?Q?yxeOcDGPowgslB9v1/nQX9fLAiBnT1/37aJ6h1t/WXNF1D/GgvrNp7iiw+kY?=
 =?us-ascii?Q?KsFFNYArXMLC7cpWrF4LH34kxeyYpd5J+NuVMAaeKnmmsPlRDX+LCQkyylI5?=
 =?us-ascii?Q?/7XBXOUnZ8SZ+E3x72xkbioobPGACX2V7PnJuWU+HJUQzP2qQ3i1bk4eIpnD?=
 =?us-ascii?Q?RI2FgA15avbRSp24QqVT8CLBm/cFA36V7rXwOPaFjKNU9Mq2wIAWu8ryziSr?=
 =?us-ascii?Q?1B2J+461zwUMrLABaBQqAEV9bRJB3+g8GkwgmirKqkC5I2GbKfJwJbpqZM8+?=
 =?us-ascii?Q?o/dD51Oz1zviLxKIflFxaQVNAuMKHmUdEbEL6GvcrY0X3uoLHMALmVt9QdrZ?=
 =?us-ascii?Q?aF02EKQTZw9fXI3c0aJZ1pddxvDuvwugdx+dHBCq6saVHGatNBJAFtNgGp2J?=
 =?us-ascii?Q?W40FYC+7ivYkuh+BU0vdHrQfZac5bTkzB4/tNEU9QYmzfZIcy58YgtYSm7t9?=
 =?us-ascii?Q?yk9ZBcCEo7/3HdP/mtCESorpJJArHXnhryMNMb1uhQYzXACmgOPQ9oaUlw+3?=
 =?us-ascii?Q?k5m0grD6gL7LvO1nMXW218YIZAgIeFG+/lcpbx+UkIWDiMVCtZhyrgyD7Eqa?=
 =?us-ascii?Q?V/SL3DrR/0F+lVdJ4FDt4Njjk8F37HoaxcAhwEhdDh3iQlMprrOFy3TK4CCd?=
 =?us-ascii?Q?GFygbbh7j6Ws16FmbvFO+aP+iqGlC+h4ohGN5jwHg8/i1BPNWDDUriyaumvx?=
 =?us-ascii?Q?Ta5l9HVjUXv3CFLQ+TH8xh8OVN34z6h4OwlpUD3XzUMRgIIEGb51SgF957SD?=
 =?us-ascii?Q?uDI9v+wCKndNDGSbcIFTpOCUD7sJSzZxp1VVU7Ir8Y5WvG01ZCKQVIu4dtz8?=
 =?us-ascii?Q?WEqQtZr0964M71ZcyDqmc8edgiBsu5+zGGrSNoCYxWufescsJ0/h0mTpzhKl?=
 =?us-ascii?Q?yuRsN4aobZKq9E8mxz4sAIAwx4A3ahU76DNMOWPuemWtESjj7hEm/8nOCI3k?=
 =?us-ascii?Q?GGvNyLQTHhm/vPMDng5aN+bk5kWVfuJF/uukHgVFYdglXvz2eL/74lArvB7X?=
 =?us-ascii?Q?UErBlwtkySVEsc/NINBJ0AxaCzRmWbLcaW0QXOjUQ1y3peoGGfHyijZUuNQk?=
 =?us-ascii?Q?ZQ=3D=3D?=
X-OriginatorOrg: seco.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc388cbd-a1a1-4553-837d-08dab84f0d3c
X-MS-Exchange-CrossTenant-AuthSource: VI1PR03MB4973.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Oct 2022 19:11:29.2218
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: bebe97c3-6438-442e-ade3-ff17aa50e733
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FTJXx/ap9zPycayBSsdpMwOP5tLuZ9OVykRIkzuI5scnKIhEe7iS4+34cvgdEq3qwyJMi6xcK+OPP9IRhiD14w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR03MB9648
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds some modes necessary for Lynx 10G support. 2500BASE-X, also
known as 2.5G SGMII, is 1000BASE-X/SGMII overclocked to 3.125 GHz, with
autonegotiation disabled. 10GBASE-R, also known as XFI, is the protocol
spoken between the PMA and PMD ethernet layers for 10GBASE-T and
10GBASE-S/L/E. It is typically used to communicate directly with SFP+
modules, or with 10GBASE-T phys.

Signed-off-by: Sean Anderson <sean.anderson@seco.com>
Acked-by: Rob Herring <robh@kernel.org>
---
PR increasing phy-type maximum [1].

If this commit could be applied sooner rather than later, I'd appreciate
it. This should help avoid another respin if someone else adds another
phy type.

[1] https://github.com/devicetree-org/dt-schema/pull/85

(no changes since v6)

Changes in v6:
- Bump PHY_TYPE_2500BASEX to 13, since PHY_TYPE_USXGMII was added in the
  meantime

Changes in v4:
- New

 include/dt-bindings/phy/phy.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/dt-bindings/phy/phy.h b/include/dt-bindings/phy/phy.h
index 6b901b342348..5b2b674d8d25 100644
--- a/include/dt-bindings/phy/phy.h
+++ b/include/dt-bindings/phy/phy.h
@@ -23,5 +23,7 @@
 #define PHY_TYPE_DPHY		10
 #define PHY_TYPE_CPHY		11
 #define PHY_TYPE_USXGMII	12
+#define PHY_TYPE_2500BASEX	13
+#define PHY_TYPE_10GBASER	14
 
 #endif /* _DT_BINDINGS_PHY */
-- 
2.35.1.1320.gc452695387.dirty

