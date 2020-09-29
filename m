Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE37727C089
	for <lists+devicetree@lfdr.de>; Tue, 29 Sep 2020 11:09:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727843AbgI2JJj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Sep 2020 05:09:39 -0400
Received: from mail-eopbgr70045.outbound.protection.outlook.com ([40.107.7.45]:3234
        "EHLO EUR04-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1727831AbgI2JJj (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 29 Sep 2020 05:09:39 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KxkjnGIKjhl1JgifFlx+dNG0KkA/U9LKDJhs/GuJAAxDH3s0IQi3zotwdW43UGkgOqtIsYWCA8iwSaSoi0o9aqr1LozxkP+cnMrE85eY3TebsAbsM3dJ5e/Bib8hP0Mv7R+tLfcY0b7jdaja9cKw83wc/3G+SvQIObHTQlrrKpPdxjmiG8fqY6JaLNbY1kxs303aMKe5lcSImlb0MBeVs+mr0VlaaxNSUt0iucIDhLRbE07TA5GKccav6Z9TNOjNT9chnBSM1UGkaHdkTUxM3OCQN4CR2Mr+kfGBlBAIb3L/zs9mudTiatCrtIs8FlM9EZmAiaujDY9JeoWq96pbZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OTWwyiFbiwVG61XTf0kQGYC5orRmR5WbyG3H7za/bio=;
 b=Ne6YZlm92AsYuAya2QDvqyd4vUcnd/s9JoJ2nAXYkHXXf1e3Io5Igy2yBMn2Pfkyf7GXBuo4nXe5kqHKA9A4iP9AMNh80+3oyDF+xE1mTYLr75nOX/Ezod5lbSOt2vlyVIMG2jmveuJ8uPXOumP2k0vONpg7j4LrEAVc+B6XNbU8R8Jl5mD+z9f3yRCbCXUb6CoyF4pS8oXxI457fC8ccrEyK7A8G+gBEVpR2r9XcFwSYohx8aw9h3c3VXkR4kO3elbdTdbmyef1QnWvFAoBbr6zvHm2faMeOo0AOhlUC3pL31/Wb4HGq3B8FkCqrRxPeBBFguNbhQ8mSgVSoHBoYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OTWwyiFbiwVG61XTf0kQGYC5orRmR5WbyG3H7za/bio=;
 b=h76nSAvMpE3ftbM2Ctt5YO1PxAKL6SmKjo9QLGAZo8DYPmz7qF8cHUSxaB5iLknLu7HGzXQlHWkaC9+dj5jTEYBq/1cvwQtXDqAdQGNjxAnBS7CyZCVMUHPu05Pv5FHc+lLJnbqPeybP46hmXLzzEomNO6COPV0eZj78XYUJN1s=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from AM6PR04MB4917.eurprd04.prod.outlook.com (2603:10a6:20b:1::27)
 by AM6PR0402MB3638.eurprd04.prod.outlook.com (2603:10a6:209:23::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3412.25; Tue, 29 Sep
 2020 09:09:36 +0000
Received: from AM6PR04MB4917.eurprd04.prod.outlook.com
 ([fe80::8862:61c7:e29a:b886]) by AM6PR04MB4917.eurprd04.prod.outlook.com
 ([fe80::8862:61c7:e29a:b886%7]) with mapi id 15.20.3412.028; Tue, 29 Sep 2020
 09:09:36 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     shawnguo@kernel.org, robh+dt@kernel.org, s.hauer@pengutronix.de,
        krzk@kernel.org
Cc:     festevam@gmail.com, linux-imx@nxp.com, devicetree@vger.kernel.org
Subject: [PATCH v2 2/2] arm64: dts: freescale: Add pmu support on imx8mn
Date:   Tue, 29 Sep 2020 17:15:23 +0800
Message-Id: <20200929091523.2775950-2-ping.bai@nxp.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200929091523.2775950-1-ping.bai@nxp.com>
References: <20200929091523.2775950-1-ping.bai@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR06CA0093.apcprd06.prod.outlook.com
 (2603:1096:3:14::19) To AM6PR04MB4917.eurprd04.prod.outlook.com
 (2603:10a6:20b:1::27)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2PR06CA0093.apcprd06.prod.outlook.com (2603:1096:3:14::19) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3433.32 via Frontend Transport; Tue, 29 Sep 2020 09:09:34 +0000
X-Mailer: git-send-email 2.26.2
X-Originating-IP: [119.31.174.71]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 21bef28c-c4be-4e7f-80ed-08d864576328
X-MS-TrafficTypeDiagnostic: AM6PR0402MB3638:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR0402MB3638CEA9C3AC67C8099BC56887320@AM6PR0402MB3638.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: D2GgYI6BQg8HPe2Kqjkm53AWgZyuNg5PSLuEDCge+uQtWS/m/zVU/z0tKNhtDZU6XIDuhPKkxnFEdGZilvQlPr1I8j2dg1ckGDZDH5NeCMDR5gG1euhW6fHD9Yu2gPfmnhHwf3q/XbHSLT3cmgw1ZG+Y2ssXFfmZQUrz4VYZR8NV7/mevx7ju/3RsPBbm/plb7i2ClJjnmxW/Bn+jWLLDkCeXCBZzCP4uMTlqQ+qXjvUi3NV4PUB5j5QuQdJmkd7G7Glmr1wFstXeYowikatcVHoJT0zUZ8aw2OCCXZS/Spb5DPPSftZgbxkJhnoth41yzkopWScSD+OjjDi9D7M3WHZMxLsCS3x4lbdqLCwG0YHSLkKqUzDy3Fx+YARas+kIzPMugUaE8vgLT8JCh9vlDW/ZLwD9OaeJ1g6PPpcm9uNpYVrfx5Sm6qGlw5TJf7FJ8en/wjd5XCsaR1wVlrSjw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR04MB4917.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(376002)(366004)(136003)(396003)(39860400002)(6506007)(52116002)(66556008)(66476007)(69590400008)(16526019)(6666004)(26005)(186003)(5660300002)(478600001)(316002)(1076003)(4744005)(4326008)(8676002)(8936002)(6486002)(36756003)(2906002)(956004)(2616005)(6512007)(86362001)(83380400001)(66946007)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: SRY27bMGVSw5Tgl8/HOk1Axoh2oKOKBEqlZiH79mlDxOegFYTSGqQ0OA+mgwQlh3luTJSv+4V7Lagwsb98e3GR+vXqIUMHsenTBh5OAkx/5COIpZAJVSmg8hh9u9PbqGiGJ/XBT3PVeaXlLUUG632On326V3nMUsFd6eaUfxnTD/CRhHRx/nT5SzgplhIHAAbHrgPNs/az6c8FI1D27E5wBOtxowHfDK5w9gbze6l//xFBnwo9d9rZHnK9ydBZYIBBBrNXyePYRoGNg0vkUnnVSJNovy40mUHTY8ud6+CNYHpdrXAhT5HvGYrUMZfN8VZZ3MPolHU/6k/aKm09gFx8ouuq8kWbRmNNOJRCdYw8Ybsfw7hFXVGQInurrwxiwk8rq/aGnYGu6O4auKWbLkIYtKUEnhscRIv8BV7+E580B9L7ZMsDxU92xkiFMT3E3xTem6Uh11eAtTN8ztvjw1UwfZx8iMHS0ZGgEotJYOr+Zj0oEROQtkqGBYewaWzbDIIC2o/BPEdMG4QKaNV59nFnFcCfBxjfJ/rkWIlW7Em6tfmdtqaWV75O2mI5fyknupGlCNXYyiMaZhoo0+TlC9HaVRyGM2/Vt0hRcSF0vISpFefrIGgSrNpzSzSQ/Cl93wSq4lOdIHuanD5HNBznuhWw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 21bef28c-c4be-4e7f-80ed-08d864576328
X-MS-Exchange-CrossTenant-AuthSource: AM6PR04MB4917.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Sep 2020 09:09:36.4824
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: D+lWStjxPzFI2jTu2mMk0WZ7A5f9xwwIlQjc7TLjOc7tldJDsMMyznNFOI3hQRhojklYS0wI2W9yVuvTwXYqAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3638
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add PMU node to enable pmu support on imx8mn.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
---
Change in V2:
- Update the compatible string to ca53 specific
- Correct the GIC_CPU_MASK num to 4 as only have 4xA53 cores
---
 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index 746faf1cf2fb..184fd3285383 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -186,6 +186,13 @@ clk_ext4: clock-ext4 {
 		clock-output-names = "clk_ext4";
 	};
 
+	pmu {
+		compatible = "arm,cortex-a53-pmu";
+		interrupts = <GIC_PPI 7
+			     (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>;
+		interrupt-affinity = <&A53_0>, <&A53_1>, <&A53_2>, <&A53_3>;
+	};
+
 	psci {
 		compatible = "arm,psci-1.0";
 		method = "smc";
-- 
2.26.2

