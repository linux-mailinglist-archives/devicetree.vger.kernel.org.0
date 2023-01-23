Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 48109677788
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 10:40:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230371AbjAWJkU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 04:40:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230148AbjAWJkT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 04:40:19 -0500
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-vi1eur04on2130.outbound.protection.outlook.com [40.107.8.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B89F2CA01
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 01:40:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V5pfd898CINWeZJI6Zvn9Whzh2NPFoEUj2hhqh/lfZC153GHqkN04YeJROMVIBw9GC2T4xArBq39nHARShgp2jZV+fBz05ge8NTc5yAvNOECD3z7TUZjVwLU1BF8K8v0PEoPheOL2mZuhahKC757ObcXOpl+WX+eMgWVCdeoGl7RVpI/e+6V8iJdPxXcYnXbUIqn/eVXWRpsbCBbqJt6mIKubhT2N/qC2DeVsWQYYiL1uJlk31iJk9AavjCpHSSYPXtGUaE6O5lxJuCvB9e9Ebm+IF9WvmNnb5o9aoCPXMmPatZ6h3cbBfuv9FunQiFwIiD0MJ/cjuCIOnHknczCVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7Epqzl8GQGyk29j09aCcoGfBNbEUV3Ny4N17TaOoh4A=;
 b=a4BjQN1M25G7gRW3DnXrLVVFHRGsqxVoJV4MTrQZTFxVXwlsy0HEKorJ6WxQhBjZ4yT1smzIHQmptZXbBO+0ORTF/RF0PT7kRBpNDe6uZxcpBk9zzoY8dMMWbK/K2W6YZtYm00/DfRETPdvIXYIOT61pYKnH5lRWx+CeU+ZVrA3H8d+72wTbAik84CgZ4LSqIG4zc4whDBjpgYQwXs6aPditYIIWhYYYeoNxdjljl7yzlSM3Y2phaHZrAskQJmi9DK9Wf5KF42MXCz6YXVTyP7X9Hom8gub4VqKVdUds7TVYysZQu0UGt3zgLouD99+dl7Z5s0btauUCQ2aKw9xj1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=kernel.org smtp.mailfrom=leica-geosystems.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none
 header.from=leica-geosystems.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7Epqzl8GQGyk29j09aCcoGfBNbEUV3Ny4N17TaOoh4A=;
 b=iVJ6ARilxY0mVSPRsvrG+5r4TZJcxbQyKIUOZn/mQmrFzXMpHKClJ8x0ZzbIDOPXzkm00/J9s2GSvk+boCbdfDCELnC+m2nSfANSxpOGhow7HIA5eUwLiu4m68/qb28h9AlZ237XG6aGAXL/gj92cHW9crl/b6dE+AFwZBpkchk=
Received: from DB6PR0802CA0044.eurprd08.prod.outlook.com (2603:10a6:4:a3::30)
 by DB8PR06MB6362.eurprd06.prod.outlook.com (2603:10a6:10:12c::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.24; Mon, 23 Jan
 2023 09:40:14 +0000
Received: from DB5EUR02FT052.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:4:a3:cafe::95) by DB6PR0802CA0044.outlook.office365.com
 (2603:10a6:4:a3::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33 via Frontend
 Transport; Mon, 23 Jan 2023 09:40:14 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=aherlnxbspsrv01.lgs-net.com; pr=C
Received: from aherlnxbspsrv01.lgs-net.com (193.8.40.94) by
 DB5EUR02FT052.mail.protection.outlook.com (10.13.58.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6023.16 via Frontend Transport; Mon, 23 Jan 2023 09:40:13 +0000
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
Subject: [PATCH v9 3/3] dt-bindings: arm: fsl: Add i.MX8MM-EVKB
Date:   Mon, 23 Jan 2023 10:40:10 +0100
Message-Id: <20230123094010.341887-1-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB5EUR02FT052:EE_|DB8PR06MB6362:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 080c0776-bc75-4f92-6206-08dafd25d3f4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gonnM1I9KW+phF59AbMgtUgLLRJsJtQwNLWLqC+p6DXtedugwq7edXy5PgLpY7dZGlZbh6mJynoPf3dEnijK8ouDsWR1MPs6th57jxoh54bDj/0ORGGGyw3WY0pdlJYc/BwCs+kWHUV/b/mkFtv8dTALnPYag741KFkBHRqxDg8+UDbT7UIJgEj3GvMc6Ho7nUrl1hQxQjeRcQRgL5EbpEJTLyHRVjp4qRE5mGw4yILzbX9rPmJOP9tze3goEKIQSbq17YfuSZxQN2yQm6gC/jHRt8EEh3Z79vTeSFfX03jA3PIiIma93LXwvXMDCgcglqNfTa76FhDKGEUcMtdKqJ23uriY5tojG0gYZRBm3xY+LYLlYHqwNbZps55a/VqzwFsTNd4zxP5P52epjOkAD2+AhJSG+5kZdTpLR9BoOXmIHYy0667j4PpJPN5F1rJ6//Y87eYJWAw82AEU0TFkCcJg5nYN+7Mw3rtjtLtYEoVvgC+wEJpyNdsi7L+ctRJUMJau6IELDZigw1jTLLd7dBkPEwv7tZM/EhAcTuzpS2smlHLLWNog1MUpIwlZqTaPfM4j4MHV1I9IMODIoVUzXl0+MgyrfDsaw6rnQ72n5CQAHkFDwS+tko/itCOCcJOOQK3Iz0+6P8JLKFfl0m/5YQsH1GQgr0vyLFuBnGgyThP8mx/2OHHgaToN6MPYf3bi4QFytrR6SQu3WRqMYcL1Xw==
X-Forefront-Antispam-Report: CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:aherlnxbspsrv01.lgs-net.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230022)(4636009)(136003)(39860400002)(376002)(396003)(346002)(451199015)(40470700004)(46966006)(36840700001)(356005)(478600001)(316002)(70586007)(5660300002)(70206006)(44832011)(8936002)(2906002)(7416002)(81166007)(82740400003)(36860700001)(36736006)(54906003)(110136005)(47076005)(6486002)(6512007)(86362001)(6506007)(36756003)(336012)(8676002)(40480700001)(118246002)(4326008)(26005)(1076003)(41300700001)(2616005)(956004)(82310400005)(9316004)(186003)(40460700003);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2023 09:40:13.2660
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 080c0776-bc75-4f92-6206-08dafd25d3f4
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[aherlnxbspsrv01.lgs-net.com]
X-MS-Exchange-CrossTenant-AuthSource: DB5EUR02FT052.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR06MB6362
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

