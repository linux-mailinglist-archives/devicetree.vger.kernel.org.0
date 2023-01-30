Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4030A68178B
	for <lists+devicetree@lfdr.de>; Mon, 30 Jan 2023 18:26:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235917AbjA3R0J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Jan 2023 12:26:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44470 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236200AbjA3R0I (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Jan 2023 12:26:08 -0500
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2115.outbound.protection.outlook.com [40.107.21.115])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 050AE301B3
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 09:26:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NeMaMPNRPTBDOP6XQunGWnw3aDzo+P72qx9H7zzdwGsg/qxNlQR4veoBvX8uR6SFppQvsKfmR7TjZLhro9riiH+BKdTIjjq7p5fRaoTauvd5s2dkz9UJb6EfRXWN14QY5gCr0SwhOZqMAiVt3QjX2Efdii+9SL5KBiHtKF5URyOWW1vcjl3e1W1jidvNDvgOtRlG6X5Qh4hK5f8d4Fw7QALxqPbbWhSyWRmzwEZdVMBWe/XAPa5jE63q0lFvPatHE3UEgv2WZANYQDu0S0lUBuPTU0qbWZRwxNkRIeySY7h0NVlOgoPiGEbnhnGlV2u8SnkZUGH2qNU0hf0AM8c9XQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xAU0V96jqcAdXtk8hCya2hoL8lc1nvQe2HqTNmxMtSo=;
 b=KEY/WsgnYS76EaDMvYRyuXdiA8DDkIhEcy8Y2xvJ1gpnWmto1OsYbgUYjWm1oFipPt2bUcNTdaJDYJpoI227EZS9CKwRCIZPbWnk7H0ycb4lONAaDENe8gDWEr5kk5EcDbjGigLEBFHJ8KPj+JQgRZL01jFZtxfbPayj/iefBcmyBlJfYLtZVldA4JCU0cSwXMUsf4K8DoLC+9VT5ibVyHdk02KoWrQZmhVeXTPijT/IK9lwJnPMRwZbPCYbH8syHlWYLvlPzdRLm0NXUtoy9oFEXZQYxKEA0S5r9B03uonCN/aGRZGIvPUMR1CyB3cCPE0Ahr1hJ1egdEkHorUoTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=kernel.org smtp.mailfrom=leica-geosystems.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none
 header.from=leica-geosystems.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xAU0V96jqcAdXtk8hCya2hoL8lc1nvQe2HqTNmxMtSo=;
 b=e52bs8vBGY0RzEWsZX7SFD57O6w6E8JYN5UEq5BZhBJdeDgH/OqyAJ3lVvdlbi4J42G7isL1x4kcpIGV6IicojOGxnO5yHd0zUGR9kv39UsU1cXuRZWQ8lNGcg7nkf8yu4TCjfGEz2QiFrofN8awg9VaRcOjs5zitlFE3qHkIyw=
Received: from AS9PR05CA0221.eurprd05.prod.outlook.com (2603:10a6:20b:494::21)
 by VI1PR0602MB3533.eurprd06.prod.outlook.com (2603:10a6:803:7::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.36; Mon, 30 Jan
 2023 17:26:00 +0000
Received: from AM0EUR02FT005.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:20b:494:cafe::b1) by AS9PR05CA0221.outlook.office365.com
 (2603:10a6:20b:494::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.36 via Frontend
 Transport; Mon, 30 Jan 2023 17:26:00 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=aherlnxbspsrv01.lgs-net.com; pr=C
Received: from aherlnxbspsrv01.lgs-net.com (193.8.40.94) by
 AM0EUR02FT005.mail.protection.outlook.com (10.13.54.71) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6043.30 via Frontend Transport; Mon, 30 Jan 2023 17:26:00 +0000
From:   Johannes Schneider <johannes.schneider@leica-geosystems.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Li Yang <leoyang.li@nxp.com>,
        Shengjiu Wang <shengjiu.wang@nxp.com>,
        Richard Zhu <hongxing.zhu@nxp.com>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Johannes Schneider <johannes.schneider@leica-geosystems.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Marco Felsch <m.felsch@pengutronix.de>
Subject: [PATCH v11 2/2] dt-bindings: arm: fsl: Add i.MX8MM-EVKB
Date:   Mon, 30 Jan 2023 18:25:53 +0100
Message-Id: <20230130172553.2738182-3-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230130172553.2738182-1-johannes.schneider@leica-geosystems.com>
References: <20230130172553.2738182-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0EUR02FT005:EE_|VI1PR0602MB3533:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: a6038d37-437b-410c-10df-08db02e70e84
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1ToH/b9lApNO5oloo+mS/6gt09uAkuzvc5hnYQh2UTgh9tEajD+1R9NJ8XNLzDi1SfKOHlhxL4QWc5ew4PsHHZhCIB0bkGqTydVsFW2JXMPOiAF4csEHhpXhrn9cNFXtEPZynjVxNbHOIQcqlUQMDwR5fThZxE9z2XBAey+G4Wqlj6v92r+ps5SOGJvOGCL+eD1Bw217wJvOwaIvVbmgtuWHSfy1dUuwGMhTgmyTAuACzaDo3CKU9QDtG32SnK/q5O3krpIDKtAq1qN9PtOGBhxiUP56HYkZeyAB1vaQUolPg0cp0gGha5SY2lXayxjOP98qfejeyNsne2JqxuQNycwxiCKsvE3cfAH3txCUUEVEzm+NYnbmcsRLBjTi/4i0DRHXSRjfYkYf4kZi6bDGRxIRd4RYX244wCA31frdJPFgBnm6I+m2LRK7EtjGlUoncb+VMytad5CBZE4TIqtJQ3wAswteplNoUixN/nrhDWSHlJhGpdhLdqlxUO3oCy2wS8W1XQNuGM6MVcOIuxGVNUkQIFX8UzPT92CmrYIb9gCVGw3mIjqojbLgOhvWT33ayRF0ShPxudaDyX7ad0g/3ffhsal89hKQnbfgphYjwGp0AATbEsQo11ga083gE/cn818+y7aXhc1sP16i+TmbTpdftAHppWElZop+Qxk7FtCRufmh30qnl+8QaDdVdzgb1DxYIKtl5kWGnEHtu9qqkQ==
X-Forefront-Antispam-Report: CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:aherlnxbspsrv01.lgs-net.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230025)(4636009)(346002)(376002)(136003)(396003)(39860400002)(451199018)(36840700001)(40470700004)(46966006)(44832011)(7416002)(5660300002)(118246002)(8936002)(2906002)(9316004)(86362001)(41300700001)(1076003)(6506007)(70586007)(4326008)(8676002)(36756003)(110136005)(54906003)(70206006)(478600001)(6666004)(40460700003)(26005)(186003)(6486002)(6512007)(47076005)(336012)(82310400005)(40480700001)(2616005)(956004)(82740400003)(36736006)(316002)(81166007)(36860700001)(356005);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2023 17:26:00.3700
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a6038d37-437b-410c-10df-08db02e70e84
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[aherlnxbspsrv01.lgs-net.com]
X-MS-Exchange-CrossTenant-AuthSource: AM0EUR02FT005.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0602MB3533
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add DT compatible strings for recent EVKs, that come with a different PMIC.

The most recent revision of the 'original' EVK CPU module is C2 and the most
recent revision of EVKB CPU2 module is A4.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index fbfc4f99c01e..bae1040afc14 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -818,6 +818,7 @@ properties:
               - emtrion,emcon-mx8mm-avari # emCON-MX8MM SoM on Avari Base
               - fsl,imx8mm-ddr4-evk       # i.MX8MM DDR4 EVK Board
               - fsl,imx8mm-evk            # i.MX8MM EVK Board
+              - fsl,imx8mm-evkb           # i.MX8MM EVKB Board
               - gateworks,imx8mm-gw7904
               - gw,imx8mm-gw71xx-0x       # i.MX8MM Gateworks Development Kit
               - gw,imx8mm-gw72xx-0x       # i.MX8MM Gateworks Development Kit
-- 
2.25.1

