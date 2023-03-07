Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C44516AD68F
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 05:50:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230079AbjCGEub (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Mar 2023 23:50:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38788 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229874AbjCGEua (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Mar 2023 23:50:30 -0500
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on20725.outbound.protection.outlook.com [IPv6:2a01:111:f400:7d00::725])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 150F7618F
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 20:50:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eErNXt/dCl95uzzVUuvq8Ty+dX5jZCJ4oHkT4B9e5uKbYd/hjxK2sfQ8sWXgeB2B+38PcULZ7BnsT5e0Jb0oQY1ZikAKaLEGIFms3znk07hAcbseGpdcWIebSNyK1K7F4MlD/8tdvnpT0ku5ZVuLjjGh7RWxdTJrw6SLw+Qco11CFSkyBA7vUMtQ7wNM0oKwODYx9lcaKu9LK1SN1uodQzrCK5M+HoAdV2vATknLEcBLe0jAeDNCw05JrLlp1ANuowWanmuSaenEZYb0IyRMPsvf99q8cjz/352IRle2RE+ilbDWDAMmmftrVLRkwUGh1Ugy0zkTlmKaz2Ulyj5j2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IUvyPRyyzAcWX6/Lw/noHUtzQTixc8rkblvIA/DtMQ4=;
 b=fpJgrb29GHmky34xhYl4H4575H0QU6aiAT0Y+Xu2Cijf/BWpbAIKgFiFeoWWXUMfY2rTESLXiRze9wS94PGj3Fyx3C0kp2/kv9L2HorH/UtJSIagdv4llROTSv0sGlUzlqWbSJSn24AMZenY0Nx0ReuxMTrfFm1bKZ6COmqNP+vEAiZmkRz5XxvUySqxJ9DWr1V7aEl/WXj/gL4e1p0OBB44MmLjSn5mublnUQOoLD7VZipZHBooH4KZ0U1QUoj7aYATDoCRKXzasKRTEiiS5ZGWqw+IeoCx67EfpXlA0d8+6vU/soMwCiGPVYpAHX0qzYnhlee9uHWgLhqG6o9GvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=kernel.org smtp.mailfrom=leica-geosystems.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none
 header.from=leica-geosystems.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IUvyPRyyzAcWX6/Lw/noHUtzQTixc8rkblvIA/DtMQ4=;
 b=LTsrC371LnTLfUb+1RDFnQ/d6cYHaJ/98wMuJU8ey4ak37L2NPFej/ZFYcFlvD0OeqokxUiPtz9TRxRg5txZcE8e0+/XT6GBiUCJF+8nq3nd0Yt+i25ySkAo4ZyjWn0fctPy6s+5CxwCGvCnQmKAR1pwn6UixeIYBZvA1gUX5ag=
Received: from AM6P193CA0113.EURP193.PROD.OUTLOOK.COM (2603:10a6:209:85::18)
 by AM5PR0601MB2484.eurprd06.prod.outlook.com (2603:10a6:203:72::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.29; Tue, 7 Mar
 2023 04:45:00 +0000
Received: from AM0EUR02FT063.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:209:85:cafe::39) by AM6P193CA0113.outlook.office365.com
 (2603:10a6:209:85::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.29 via Frontend
 Transport; Tue, 7 Mar 2023 04:45:00 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=aherlnxbspsrv01.lgs-net.com; pr=C
Received: from aherlnxbspsrv01.lgs-net.com (193.8.40.94) by
 AM0EUR02FT063.mail.protection.outlook.com (10.13.54.188) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6178.13 via Frontend Transport; Tue, 7 Mar 2023 04:45:00 +0000
From:   Johannes Schneider <johannes.schneider@leica-geosystems.com>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Li Yang <leoyang.li@nxp.com>,
        Shengjiu Wang <shengjiu.wang@nxp.com>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        linux-arm-kernel@lists.infradead.org,
        Johannes Schneider <johannes.schneider@leica-geosystems.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Marco Felsch <m.felsch@pengutronix.de>
Subject: [PATCH v12 2/2] dt-bindings: arm: fsl: Add i.MX8MM-EVK revision B
Date:   Tue,  7 Mar 2023 05:44:49 +0100
Message-Id: <20230307044449.2714529-3-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230307044449.2714529-1-johannes.schneider@leica-geosystems.com>
References: <20230307044449.2714529-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0EUR02FT063:EE_|AM5PR0601MB2484:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: c4067fb0-2b2c-4a7a-bc32-08db1ec6b5bd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wR7P1IEeLsF+3mEm1mXEMBoFdAnpH6lqXu9rX+/rkT6gSypoodgn2+X7rQMHmdsLIbGjkuDBJkPWuMVeFXfgKnwDsjX8s+Qcp06HT37ZYN95SRRlzQI1jyNzYrOblO1aEHIo3Nd1LtCZHMOOv2WBecGXIuT/pYl0EkU2oMbpfLgEES8hAfLu9qZdN+RgCAFtbzN+CPT9l2vbdMG7Aqq8nFeKaLppxBYnSwZOEOW1dnrUY9/aY2UVnnzJTp/zaBlvtU1vRN06gtZ5N5AaGP1VGJU6y8aHR6hds3DoZSMIgLImo03E8fqIf+RaaSxD0tR0FCsCRcjbggufA4vmtGO5faGbMo+lcMvyiSNa8SxvRAMNksJ0T5HdGv+lhhFeEHG7AAvsHEFyrVpYeXplnjs7EGALMT7uLEdC0vMIz6VmvW+CZL1uGIQ89UHLIgbbfQnorknM2RnUaMiLWoWDPGmfxd5JetTMFfVoS+6qgoX+djzbOoSLFhahuCtXadS5eoypgUvQiN1t6xSxVfemoGjOQcKrB1fqswRYUvvFBxXk6et5XgatGhGK4VhfZIadiG6y4xcyf2nc8R8SmhsnWxQFqOYGVuGBhYhhwrZu3Bb333lAcYbIxwqZ+spf4miO6+ggCNk+oxLTwRa1OcVlt6lMpgK+wBeOOgFmXTuFlmvEkYF1gYEjqDoTlyw2OUDOEBZMr9TJMsV43tGYI4027SgauA==
X-Forefront-Antispam-Report: CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:aherlnxbspsrv01.lgs-net.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230025)(4636009)(136003)(346002)(396003)(376002)(39860400002)(451199018)(40470700004)(46966006)(36840700001)(36860700001)(81166007)(82740400003)(86362001)(356005)(36756003)(44832011)(5660300002)(7416002)(2906002)(118246002)(4326008)(6916009)(40480700001)(70586007)(70206006)(8676002)(8936002)(41300700001)(82310400005)(9316004)(2616005)(956004)(40460700003)(336012)(186003)(47076005)(478600001)(54906003)(36736006)(316002)(6666004)(6512007)(6506007)(1076003)(26005)(6486002);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2023 04:45:00.0932
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c4067fb0-2b2c-4a7a-bc32-08db1ec6b5bd
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[aherlnxbspsrv01.lgs-net.com]
X-MS-Exchange-CrossTenant-AuthSource: AM0EUR02FT063.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0601MB2484
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_SPF_HELO,
        RCVD_IN_DNSWL_NONE,SPF_HELO_PASS,SPF_NONE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add DT compatible strings for recent EVKs, that come with a different PMIC.

The most recent revision of the 'original' EVK CPU module is C2 and the most
recent revision of EVKB CPU2 module is A4.

Reviewed-by: Shawn Guo <shawnguo@kernel.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index fbfc4f99c01e..d906896b560e 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -818,6 +818,7 @@ properties:
               - emtrion,emcon-mx8mm-avari # emCON-MX8MM SoM on Avari Base
               - fsl,imx8mm-ddr4-evk       # i.MX8MM DDR4 EVK Board
               - fsl,imx8mm-evk            # i.MX8MM EVK Board
+              - fsl,imx8mm-evk-revb       # i.MX8MM EVK Revision B Board
               - gateworks,imx8mm-gw7904
               - gw,imx8mm-gw71xx-0x       # i.MX8MM Gateworks Development Kit
               - gw,imx8mm-gw72xx-0x       # i.MX8MM Gateworks Development Kit
-- 
2.25.1

