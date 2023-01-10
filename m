Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 95AE9663F60
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 12:40:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231144AbjAJLkp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 06:40:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231866AbjAJLkm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 06:40:42 -0500
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2092.outbound.protection.outlook.com [40.107.20.92])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57F82113A
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 03:40:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i9drJZWgw/Yh0fjRAOgGS69AfnsSIIZhr/kPwWFwgAt1bUtoV2jcVqijfJkGKKROeVRJ/z+jk8ZmBuaU9mYt/erBPSUlk5rJPVp8axElY7w3fHFUrdAQMJseGeWY1Q8AJETdzxufYuMgXZJVh+5tv35x2d65N2gZQ6qEIyoMzJpWHKtDOivHzFKphAbv8/G9jASvWt2QQ4Dd6sQIzvAozsVhWQhj1gLpSjRmV8GAaon92LU2+yrGWJP11UyLcRxVuTcB0n23jKTEbUe509dtt+GNm6LDSImJl17YeTEsoHTa7J5sK+62nBwKUkKmmUg6xwWTXBPodegh39Q/PN75pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wgbtbHQdu10mjQXacs7Zcjg1mOHWijWAihVGLnp5bAU=;
 b=PhHO+KaiNvol1RPehHGD+hqS8K9cSu8z9zS85/wp1SFPhz1HWS21kT5Snw2IbketFUY6osdqgIRjnSd9Jm6QEaY0WBYHFruXs0B4ZJtEfRY46uiRykitJ8gSnii1lRVcqUIe/r2UQGfs4kg8aXtGW/VLHLxoSwBKAMEmc5W4j5OfSUeL3JgOI/Lp3XqNA3NxNStD21FAOX3qME728zfR0dAXjDYZu5Hnw7Ff7MpzzIy7VdgSKzwdXCoc1NhWPO/HvX3MyzHYMfC6HENVuzoF3QOpigaMuXavvUYf1V4vSnpLaBA/o0cQW1hq1krumQPYBO9PAgXb4tPLTI2i/qFOCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=kernel.org smtp.mailfrom=leica-geosystems.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none
 header.from=leica-geosystems.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wgbtbHQdu10mjQXacs7Zcjg1mOHWijWAihVGLnp5bAU=;
 b=W2vQiCST3TAs7tBwuMpF0YSv90eyxn8u848RjXg88aHQvrA8wrfj8kcGMvkF9s67a7/Ihyc43eAe6I6+NGbVtdcs2mopyLPYQGHcxSumSv4cGDZr8axKFUofA4OWw7eLOXR9nEadPpxnb7MTVbKrb8VWtpcwzVe1VZevmtyI15Y=
Received: from AS8PR04CA0199.eurprd04.prod.outlook.com (2603:10a6:20b:2f3::24)
 by DB7PR06MB4636.eurprd06.prod.outlook.com (2603:10a6:10:61::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Tue, 10 Jan
 2023 11:40:36 +0000
Received: from AM0EUR02FT045.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:20b:2f3:cafe::8a) by AS8PR04CA0199.outlook.office365.com
 (2603:10a6:20b:2f3::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18 via Frontend
 Transport; Tue, 10 Jan 2023 11:40:36 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=aherlnxbspsrv01.lgs-net.com; pr=C
Received: from aherlnxbspsrv01.lgs-net.com (193.8.40.94) by
 AM0EUR02FT045.mail.protection.outlook.com (10.13.54.112) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6002.11 via Frontend Transport; Tue, 10 Jan 2023 11:40:36 +0000
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
        Johannes Schneider <johannes.schneider@leica-geosystems.com>
Subject: [PATCH v6 3/3] dt-bindings: arm: fsl: Add i.MX8MM-EVK rev-b
Date:   Tue, 10 Jan 2023 12:40:27 +0100
Message-Id: <20230110114027.634719-4-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230110114027.634719-1-johannes.schneider@leica-geosystems.com>
References: <20230110114027.634719-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0EUR02FT045:EE_|DB7PR06MB4636:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 49de8eff-e8b0-4a02-8bd3-08daf2ff7dc4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VBzAKQPZjD6ve29zkV+s5qtF5jVmn6nkWn6yUZhYTMFcAPwZCdGXiee7TjIry3oLaiG9C8eR5QhDgV2B0c0GxkqyCWUI5ZbiRvNDv5H+UE6zEP7WEe10pKmDJ0zI+wxAGFOCoqz5WhzzH7OHr/g3mTfoaO1GpCCR90ksctCKMJvktUg06TMFMbNjTGcmWMqWzwqUz3K8A0KUmecAYULBk22uZu4CSw1lkeeCkD9n3ZLrDAmkUTL9dKF+VONa44tL5opCbfEDvwIij3vdQKcWs/HPliVGHh7XRLJVAK2Xjvv2RUMvXd48lnsEbMcENAvjivXkcmmMQLJ0l9ZzQqHZB9VVK0bVpXU8gsjM3j07/VImkWheQVTXhdyVXOCEbaJk2KiRZWvZYIpS/foluyUYtaw15bIvBnHdAK4PsRlR3cyxDmmlrcugbq4X9GTuvAyl+VRktolIYUai5JkSp5hIxpkb0q2y87xcdJNWt7kGoPexBCSLuyCcd6dQC8JTpQPcuB1aDSa4bYqn6i9N9acTamabeMfhqA/0ofE2wEYEnq/yTmoDkLiasfU9XniwdSgw82ucdDJS4MHdcLJcQQH68yTb6PDGhFonidxexQZY4+BntfDODY0q1x9BtzndsNnqr0CrgZ+nEer6hdCZUyFhEBJyV0l42YitYf/8NNVOe/P1VgtTexYhw5wZsoB1jhMbYLQXbSLcxgXZjBu4BinR1Q==
X-Forefront-Antispam-Report: CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:aherlnxbspsrv01.lgs-net.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(396003)(346002)(136003)(376002)(451199015)(40470700004)(46966006)(36840700001)(2906002)(6506007)(478600001)(186003)(26005)(107886003)(6512007)(6666004)(6486002)(110136005)(70206006)(2616005)(36736006)(4326008)(1076003)(336012)(70586007)(36756003)(54906003)(316002)(956004)(8676002)(47076005)(40460700003)(41300700001)(40480700001)(8936002)(5660300002)(4744005)(82740400003)(44832011)(7416002)(36860700001)(82310400005)(9316004)(86362001)(118246002)(81166007)(356005);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2023 11:40:36.3524
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 49de8eff-e8b0-4a02-8bd3-08daf2ff7dc4
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[aherlnxbspsrv01.lgs-net.com]
X-MS-Exchange-CrossTenant-AuthSource: AM0EUR02FT045.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR06MB4636
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

