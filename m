Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 823E4677571
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 08:13:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230266AbjAWHNk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 02:13:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52050 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229441AbjAWHNj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 02:13:39 -0500
Received: from EUR01-VE1-obe.outbound.protection.outlook.com (mail-ve1eur01on2118.outbound.protection.outlook.com [40.107.14.118])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A602310267
        for <devicetree@vger.kernel.org>; Sun, 22 Jan 2023 23:13:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D2hkpQqDGd0J2y3cTz0O5l9FFYrq4zPh4G2hBvgolbE5ZlUFKmRQWU+D1XvE4IVTtQWJIRDvxxWts/kFWIoxRbiwB9bl4TS+nCeSjAhderOypnpUEOPUmmthXfgmrzFKynjOkXS6SuF/gamo3VO4eFqFyHn2sbEb9Cr9fC9vWUHjotkG1Jwlnmbk88rPx9D+zNfVyAbUmSoK5i737Xue9imx3M47PCLjcXG/2XCubBNzm9dlRREOEx1QHd0HcFDcKG9kB4Bhg91MJ3b3ppvWV3Dd8GH2pC3h1uYZ35BWIggS0QcvGDbtXZi1EOUgOjv2pNOEX6r7Nho0f4w1jmdv5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S2NaeYjbrh5zPsMhDEf56x9Emmn5cJxFI/apF3RVFNU=;
 b=h7FlZHEl7bdQZCTKpit8Y8dcf9VVqzSQlXCZrk0qt2dL4jgl6a8xUzL55qsMEFSBcww5bjv79XMNO/S3QEF844Nz0MfhzROQr/+4JelJSboyiiJFhic6a5lFsbH8G9m4pT4LFHFSsgr3++zOcAgbIn9rnv9MfK97fGKZZoThAov9MjH4dH48MILM5CiOFgO5463sp1pQsPaFZaCMAWJykIy+HzJPmzmUpGBF/d3Rs5NTixGp39YdLxuO9VhInUBI9WkEsBb0nqZ7o2mXl37EIkb7q7/jKJ5iTi4ehL9D9ahcExrW04ZgDma891S7zSUdbt49Upm0jzvB4cIIiuWYXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=kernel.org smtp.mailfrom=leica-geosystems.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none
 header.from=leica-geosystems.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S2NaeYjbrh5zPsMhDEf56x9Emmn5cJxFI/apF3RVFNU=;
 b=bKYRags8Yub7HbW62azRSkG71klJU1dtzFypkAjt2Pgv1t3wLMSgzlyfjzs0NjqcUWkG1hyyHEAMmdLXnFnx+WdLrYiFovzVW1Ud93ZcFSlw++xRYkQv/ZheY4Thd1uBy/GpHafwoV2UIcPkEwo5IQM7ssC2/3/IjsXICKq9cyc=
Received: from AS9PR05CA0091.eurprd05.prod.outlook.com (2603:10a6:20b:498::6)
 by DBAPR06MB6694.eurprd06.prod.outlook.com (2603:10a6:10:185::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.28; Mon, 23 Jan
 2023 07:13:35 +0000
Received: from AM0EUR02FT021.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:20b:498:cafe::4) by AS9PR05CA0091.outlook.office365.com
 (2603:10a6:20b:498::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33 via Frontend
 Transport; Mon, 23 Jan 2023 07:13:35 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=aherlnxbspsrv01.lgs-net.com; pr=C
Received: from aherlnxbspsrv01.lgs-net.com (193.8.40.94) by
 AM0EUR02FT021.mail.protection.outlook.com (10.13.54.67) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6023.16 via Frontend Transport; Mon, 23 Jan 2023 07:13:34 +0000
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
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v8 3/3] dt-bindings: arm: fsl: Add i.MX8MM-EVKB
Date:   Mon, 23 Jan 2023 08:13:12 +0100
Message-Id: <20230123071312.3297210-4-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230123071312.3297210-1-johannes.schneider@leica-geosystems.com>
References: <20230123071312.3297210-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0EUR02FT021:EE_|DBAPR06MB6694:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: c42df7a3-b1ad-4e09-ee82-08dafd11576d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: u0wAuza/X8PMyQwJ80SiAgpRau0Hid9/xeYxQQYlZSPNglM4PsS2tRhSoUUkylYci3anYHBISmdwLLJ/KHRL1Vre6KaKwblmoNqtvSprafuzYq5dWjVhTOW6JkQzwOjt4u/I2h9Vj41fOvj5+TCLF8qqkjZX8aMNrJRSegj3KxQKy2w6PuaaputNy2PieOQZe15vifMOSl43MvGcnayy7BB74SRNqpzi00Jb7ZgeKvayR55PGcAnUv+wJCDdI0qs8La8Vsgh+ZyJaYElvcEPwpxfY3XY7m3gP7DiqTnzaaqAf2cvMEF3qx2TbMl8kqQ5DbYJVPoWqejLi+lKOWOQRfvdudx+Xe8XpNDrJUJHtSXuba9DbHDqlmvkmR07yEJ8c+v2IbR7NamHdGUvZXuU07QEryMNpwVq0YiARQRa8OU327Nn0EJpxt3gAWHMmRQwUT2+6Sz0aeY8S2i/kBBUaE0H1hqMxB2AzwxoLHNdX7a2Gtyo34bvctznC/ikVSEXw56zrNYDJXMJ+TibEs6r9SDxO788+/zjfQp1YHs1zRjriSDKjDJMqh9JiEqboPvs9g5D/Ec5Bompii+2ty/LCkaHU5HmHjyBSqHEWOZrCwE64sUi562UGxALPU11aYW36fnq5qgd9tNKysp2Z96RSlmiddqckWFeHxcbmSOt53WlsMU9uAs7gyhVDP28ROQDO58Z+7iLixzvWSrKAC+Bvw==
X-Forefront-Antispam-Report: CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:aherlnxbspsrv01.lgs-net.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230022)(4636009)(136003)(376002)(396003)(346002)(39860400002)(451199015)(36840700001)(40470700004)(46966006)(82310400005)(36756003)(9316004)(8676002)(2616005)(4326008)(956004)(41300700001)(478600001)(47076005)(336012)(70206006)(186003)(70586007)(26005)(1076003)(118246002)(86362001)(6512007)(44832011)(40480700001)(2906002)(36860700001)(316002)(110136005)(82740400003)(54906003)(40460700003)(6486002)(36736006)(6666004)(7416002)(5660300002)(6506007)(81166007)(8936002)(356005);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2023 07:13:34.6002
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c42df7a3-b1ad-4e09-ee82-08dafd11576d
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[aherlnxbspsrv01.lgs-net.com]
X-MS-Exchange-CrossTenant-AuthSource: AM0EUR02FT021.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR06MB6694
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

