Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E8934663CD8
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 10:29:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231230AbjAJJ3C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 04:29:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238253AbjAJJ2v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 04:28:51 -0500
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-vi1eur04on2103.outbound.protection.outlook.com [40.107.8.103])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34165CEB
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 01:28:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G7oTkqGx5Egm8cvV2n71CxyhVB4vBTVdGhpOqSb6yP2PPj3PWDcMGzeRV9FabZstfn7yIAVJ+1nLKrnzYYiB47R/ixEBOepokqA9g0Kr5ovdYYGTcK8ZIDFQPOrD0DNtS9ry3dxzgYnH7vwAIpKkCPeY23mQqXP1FZzzEgN+ZcTKiSdmKuBpd7NGQuipTehspVtcqvpCjSnLUc93dTFkuiwdKkumFEMrx2LDy9mpLSZ07PWLV9ohzFmJakN0xgoamcZxwSLECjvn89k3lYG5C5aZHyOTal1s/1gBuaKRvGaYXCgIVBSy1VtEWvj6lt1jUuDIQ5B3DZcEHdBgNCl7OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wgbtbHQdu10mjQXacs7Zcjg1mOHWijWAihVGLnp5bAU=;
 b=PrdqytBHmqd7RuGhU3+PJ0tZAyhdOqgsb/0m/Q3R7kYBfRP6FxJ081K81hPPENlYzSILisxcxy0I0Pg7ywBrJ57zBaQU14mjH8ZeUUSrgsbb54j8sD6/P65X5IgV4hL8ETgwyqsX2D0GC9EGFjWRyXaKgF8/vryH22E8rqLCepdKpoIJUbfa1+6YZ7uSWGzR2bRSGz6FOW/KSGE+vBTWuHpZbol8kQMM1JBWfKT/9MU4ntzrJf0CDYL8ZtZ86UEUaOGV8RoRGWsi2QCy2xspaFIxhNAz2GuvelImMOENcawYro+VyDrDSGROXUtDtM2fR/0VBjFo3g3CZQRi7qhkIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=pengutronix.de
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wgbtbHQdu10mjQXacs7Zcjg1mOHWijWAihVGLnp5bAU=;
 b=MNaDTrBnnY9wna9K2C40W/gmOZ16TVlrOJF0RneRBnqVEErnpYWWLdIb6xV0sarF/ZYq5TnCS/pHMkr6RkF+u9X6ANnuHNc8QM+jU7OS/eMmsnGUta5Ji0J4QRexOm3WbaNBUkYKSnm8R1jVSlCdVowXJJw4S01aZBtQwnfrw7E=
Received: from DB6PR07CA0184.eurprd07.prod.outlook.com (2603:10a6:6:42::14) by
 AM5PR0602MB2881.eurprd06.prod.outlook.com (2603:10a6:203:9c::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Tue, 10 Jan
 2023 09:28:47 +0000
Received: from DB5EUR02FT010.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:6:42:cafe::6) by DB6PR07CA0184.outlook.office365.com
 (2603:10a6:6:42::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.12 via Frontend
 Transport; Tue, 10 Jan 2023 09:28:47 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=aherlnxbspsrv01.lgs-net.com; pr=C
Received: from aherlnxbspsrv01.lgs-net.com (193.8.40.94) by
 DB5EUR02FT010.mail.protection.outlook.com (10.13.58.71) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5986.18 via Frontend Transport; Tue, 10 Jan 2023 09:28:46 +0000
From:   Johannes Schneider <johannes.schneider@leica-geosystems.com>
To:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Li Yang <leoyang.li@nxp.com>,
        Shengjiu Wang <shengjiu.wang@nxp.com>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        linux-arm-kernel@lists.infradead.org
Cc:     Johannes Schneider <johannes.schneider@leica-geosystems.com>
Subject: [PATCH 3/3][v5] dt-bindings: arm: fsl: Add i.MX8MM-EVK rev-b
Date:   Tue, 10 Jan 2023 10:28:30 +0100
Message-Id: <20230110092830.3282561-4-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230110092830.3282561-1-johannes.schneider@leica-geosystems.com>
References: <20230110092830.3282561-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB5EUR02FT010:EE_|AM5PR0602MB2881:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: c51d37ff-6818-4309-3b74-08daf2ed1323
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Y7cE9buAsBC85PoDPSBIZowCUockoSaL5KcTsgqdDKcG/Pdvto5TOHTeKdrtYxsXE65978OPYfdx/6h1a2/3AslUuOOyRmw0YMne6iya5r9IDE2/psiC+u6i2hqYdOdrPLQbeTwbOygOveM10BrA8UH9uJ5M4o+tt8IMYHo9ydXHNSWYmAu+6pNi6DuhqD/H53DPYw4l5Ore+9cPI4wBba4gj8o3IpOxR9FZjxSFv7XrMZicfUOZnObp/XHDIGBrPItaig7NTZnqCSTF+g1u51kSctvY/uiuytp/ucEW7AI9IHOekOTwPMyIkVA0xvIuSYewVGyLQpeAH9G/uCGZqn2sCTuNeemQgoXv++Fq5sXfdhd0RDDp11VjfeC5Bo164XT2/wu6OgfJKvnbqqH+FAP8YxoWtG7Va8JuILYpNcJZBMDkkXcsKASzgCt87TJvIfUBgbEtSOpSgRQ1iJgrVNSHkVA/svLVWanNduIvZ68zdNYVd7FfmWheft9e6q3Oz9e46ItJPR+UYW6DmUi3ggJpspi5frQR7cqYu0sQbG0mSNCXkJziKExl5rRW/HRoeda/V0raR0Sy9Y1rf247TFrVSPF/9NV71VQzXP4as6W7aohXn5dTaAM5BdaId2NDwT4Pbk63JGbiXBifL9KkSi6TUDtU1urvvUlZOIcAmBtTFbOxnqC3xv242kPVkdj7U7+hohQySCAxr3m4MlPJZOMfCvZNrUBQQhA6iQB7mv4=
X-Forefront-Antispam-Report: CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:aherlnxbspsrv01.lgs-net.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230022)(4636009)(376002)(346002)(396003)(39860400002)(136003)(451199015)(46966006)(40470700004)(36840700001)(9316004)(44832011)(2906002)(82310400005)(47076005)(336012)(36860700001)(81166007)(2616005)(1076003)(7416002)(5660300002)(40480700001)(6666004)(107886003)(8936002)(118246002)(26005)(186003)(36756003)(4744005)(6506007)(6512007)(478600001)(956004)(70586007)(70206006)(110136005)(6486002)(8676002)(41300700001)(36736006)(356005)(86362001)(4326008)(921005)(40460700003)(316002)(82740400003);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2023 09:28:46.3593
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c51d37ff-6818-4309-3b74-08daf2ed1323
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[aherlnxbspsrv01.lgs-net.com]
X-MS-Exchange-CrossTenant-AuthSource: DB5EUR02FT010.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0602MB2881
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add DT compatible strings for a rev-b imx8mm-EVK which come with a
different PMIC than rev-a.

Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index fbfc4f99c01e..9c3a02c19847 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -818,6 +818,7 @@ properties:
               - emtrion,emcon-mx8mm-avari # emCON-MX8MM SoM on Avari Base
               - fsl,imx8mm-ddr4-evk       # i.MX8MM DDR4 EVK Board
               - fsl,imx8mm-evk            # i.MX8MM EVK Board
+              - fsl,imx8mm-evkb           # i.MX8MM EVK Board, rev-B
               - gateworks,imx8mm-gw7904
               - gw,imx8mm-gw71xx-0x       # i.MX8MM Gateworks Development Kit
               - gw,imx8mm-gw72xx-0x       # i.MX8MM Gateworks Development Kit
-- 
2.25.1

