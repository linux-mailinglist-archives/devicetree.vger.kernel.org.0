Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E4E6C66448F
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 16:24:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238651AbjAJPYR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 10:24:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239036AbjAJPXg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 10:23:36 -0500
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (mail-db3eur04on2117.outbound.protection.outlook.com [40.107.6.117])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A3EE78E85
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 07:23:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k1GNgneLZVji2/m8vfPc++rmPBUTwKlYa3CEw9TsqQjSTMedWbZk4RgfrXjsF+BLdZYA1BPt0T+ub+E0AzIQ5bwi4vADl7fJaX8Ko447gC85CtErHMtLiGU93Er/qLsXgZGo4MdgBqwFhQQfqJpohktNmmMsSIXrJY8oEErO6AVcHQaFPzzegvhu5ocdETkfyUYzGQveZagB8VFkdIIVpG+DYYVvN6wAflSwdj5ged2Kdy0m6jaF162OdMHkLBhIWTf3S9PTwjqaqS8a95SgUlQxSq7ndqI2WVdIWd6TGDKTLNdAjOJm2ht6PJUVy8/3K+qfaLfO10G65swl4sSruQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PPnU/lD0Cd0kXZFKgOjvvC2XJjBnQYbbIOBB7cRy5BM=;
 b=j1rCopHQlr5Z9HA48eFCObGKJ5QUu8wrhYHSovuFCn6YoLriaCCrFKQe0FV8Ka8ERUxJsX7cuxgUSloaI8zg5TJlZCzxvyuiSdU/0SpBLGYm+rMJdm7at3Z9tEKfaxDUqbc7YCJf5DWY4iVGS1g+jt40swlWoa4AJc3WA+EQtjfuMZWggjVPdSW7wLe2bgXOasUfxcWtloS8QHaJ+XrdzX2AwyL2+7HZPlad7nT0oXnQ00qYfjVREGE+Xglc81T1Mj/jmq3oygKa5VmRtwiKlotlwdZiDv0mZAxA4JCWHdZr/nX6WM2cR6FIyk9WVy+b7qx1qyeER8sjMsSnUy2Ukg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=kernel.org smtp.mailfrom=leica-geosystems.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none
 header.from=leica-geosystems.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PPnU/lD0Cd0kXZFKgOjvvC2XJjBnQYbbIOBB7cRy5BM=;
 b=NDERwuL9CN/HVjBtPCJVkEi99h6YHLUrGiynatB0eY5zWU2brRsW0iT/5kvqPuKX3Xl+10gYPqQ4wo6S42/L2rWBkDmycpV6jEkOHKLtsMdQ54c/gH+PUPPTJzOJHrrJO5/XIQkxEdum/5VHNpMRN6HTeV3s8IySEp8ZipFHbBA=
Received: from AM6P191CA0023.EURP191.PROD.OUTLOOK.COM (2603:10a6:209:8b::36)
 by AS8PR06MB8332.eurprd06.prod.outlook.com (2603:10a6:20b:443::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Tue, 10 Jan
 2023 15:23:25 +0000
Received: from VI1EUR02FT065.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:209:8b:cafe::11) by AM6P191CA0023.outlook.office365.com
 (2603:10a6:209:8b::36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18 via Frontend
 Transport; Tue, 10 Jan 2023 15:23:25 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=aherlnxbspsrv01.lgs-net.com; pr=C
Received: from aherlnxbspsrv01.lgs-net.com (193.8.40.94) by
 VI1EUR02FT065.mail.protection.outlook.com (10.13.60.105) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5986.18 via Frontend Transport; Tue, 10 Jan 2023 15:23:24 +0000
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
Subject: [PATCH v7 3/3] dt-bindings: arm: fsl: Add i.MX8MM-EVK rev-b
Date:   Tue, 10 Jan 2023 16:23:16 +0100
Message-Id: <20230110152316.1149940-4-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230110152316.1149940-1-johannes.schneider@leica-geosystems.com>
References: <20230110152316.1149940-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1EUR02FT065:EE_|AS8PR06MB8332:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 230db8f8-ffdc-46b5-f727-08daf31e9dfd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Y0hcX0i2DERa56ScZAMB8n0jA7jO2PVFRn0Wyb2aFoCiC9S2mmwXuPSstJuYPp+AYr/RT8VQNmS75E38znsOwDpeXNzrpuYFs8ZksGSNNVe77FQEIFpKel055pe28kTqgN66A1CJZBv+7TO9CQA++1mYFyGd2/UGYYHZRKe/n010l+zbaGVHvR0EQ5EOLJld29xVd/zpKnWmeQhR7FtKzRv/ih6wi4FFk5tDvT5lXPWQPYgMA99axSqc9Gc6xJoQnS8U8Zq14kpeQ1jT3m0udNUtEWIVVQAo2g+75C25MXdPCjyI+x3gMcNbcmxoCw25zfV68dbJB8GPf23QV10EtVsP/c7SRDWeHvIL+QE7PIzDYSh6b76MlNS0u4vHEipoZmIaElgY8WskhZ3Hh4Pw7/cMv3FbpqnBOYkDuTgeJpmPrz0jKZl0G0+ZWlxj3pq1lOk74kEHLgEwGULR84PfAiHRCqzw/4P/voEW6874KOMsj15nWLIGVBFz63FHEBTyUCQR/O1wi22AUT0X7NIgQg/7uzSLGnHg/aQn0a1IOTiPW80rCUThOEh7i5/HNDVhwcEf2lB3WV1wfVexM14igb4Rg9uGoR0S3FKPHIAnjJF/u5PBPfaKO73E3teRyQPDr4WCaDgLIcW3BZPOUts341zFnN9gOlUSTkozIClKyAJuZgzOIbhtTbDFc/tAkVvgKZM+R23jUb79X/5pVKSyrw==
X-Forefront-Antispam-Report: CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:aherlnxbspsrv01.lgs-net.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230022)(4636009)(376002)(136003)(39860400002)(346002)(396003)(451199015)(40470700004)(36840700001)(46966006)(8676002)(70586007)(36736006)(316002)(70206006)(4326008)(110136005)(54906003)(356005)(44832011)(4744005)(2906002)(5660300002)(40460700003)(47076005)(8936002)(81166007)(7416002)(41300700001)(36756003)(36860700001)(6666004)(478600001)(6486002)(6506007)(40480700001)(2616005)(1076003)(336012)(6512007)(82740400003)(26005)(186003)(86362001)(956004)(82310400005)(118246002)(9316004);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2023 15:23:24.8769
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 230db8f8-ffdc-46b5-f727-08daf31e9dfd
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[aherlnxbspsrv01.lgs-net.com]
X-MS-Exchange-CrossTenant-AuthSource: VI1EUR02FT065.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR06MB8332
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

