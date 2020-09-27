Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A8C7127A050
	for <lists+devicetree@lfdr.de>; Sun, 27 Sep 2020 11:41:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726196AbgI0Jlv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Sep 2020 05:41:51 -0400
Received: from mail-eopbgr80052.outbound.protection.outlook.com ([40.107.8.52]:16304
        "EHLO EUR04-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726149AbgI0Jlv (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 27 Sep 2020 05:41:51 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QXvWiFPQfsfNxNdsWLKWdlEVNRaToZBAO6ihkbTjMHDDenuH3cq8YoptZ29YXrf6W/aTDiwRQenalMlSnkY/IY53vAytOZB4YdMgq0JDJcPXg2k4qCSkAhMJ60EAD2/DFNeM2wL/YRJNmFn8T8cDNzmvCFFo87Wue4jTtc+JP6V9If3uLJEwa1lBTWF9VtqzapsNr4+KAOIvfKh5aBzZv8X0fK/urkSr/vIymF7FxjyvSwqVE6WQVOLqgqPbdljj+9e1vmAwjozzHgP0OPwcaUglAovz8KVm2S66MWLKLzKwGfWmrNc3aEZsznjntsWq4cf2/epuvx/Mz5jFhzPJYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mLiCSm3adoDLQ6uILFcjUZPZPmV3AS8zrNieiIsyYbQ=;
 b=L10v/HYFwpnweA6NTjI4SJRxz+0I/ZUfHMfIktBrGf23UrO+WYTbPSl4YUcJwUISp8n0lz6ccXmN/F2Y+2c5gVu/stEEUmuDvH0yMv4uvq/4lVpdP/OVBxYnjjaLL6AwGC/CmJLdu6AQwF3573OeBmr4jOKc3SaWpFupKoHVvaJu4Vu1YtWmnXrhQy20CeoGrls+qH5KIrrcncyXUynuSxi+0dRepDyLjhsXNCddMqnXtC7k8TvPK/+kqMV63UBOzR/Dd3bEeKcVOe+UthmBQhwnHjpThYlqdNKo+Dwvm7smIR5oNtxZiijnN5uwPKI3yXlKC9MFXTKLZWfRMXZhlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mLiCSm3adoDLQ6uILFcjUZPZPmV3AS8zrNieiIsyYbQ=;
 b=bfDS0LXNa5pyfOa4JQTcRoeClOit3kl90b/myaRq14/cIk6AuS/SgWeO9qQ9uZFeYQ/38fFE7bL6ENZngZZKRXlU04XfeI6hoR1dsMOqFCkLQIslzcC4JAf7yNmPpoyZQesznwU6U0FghC3bMaRs1rm0h+H38tn0wuDJF1MYqb4=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB4915.eurprd04.prod.outlook.com (2603:10a6:208:c5::20)
 by AM0PR04MB5747.eurprd04.prod.outlook.com (2603:10a6:208:12e::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3412.28; Sun, 27 Sep
 2020 09:41:47 +0000
Received: from AM0PR04MB4915.eurprd04.prod.outlook.com
 ([fe80::8de5:80f:f11a:5fa3]) by AM0PR04MB4915.eurprd04.prod.outlook.com
 ([fe80::8de5:80f:f11a:5fa3%7]) with mapi id 15.20.3412.026; Sun, 27 Sep 2020
 09:41:47 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     shawnguo@kernel.org, robh+dt@kernel.org, s.hauer@pengutronix.de
Cc:     festevam@gmail.com, linux-imx@nxp.com, devicetree@vger.kernel.org
Subject: [PATCH 1/2] arm64: dts: freescale: Add pmu support on imx8mp
Date:   Sun, 27 Sep 2020 17:47:41 +0800
Message-Id: <20200927094742.2714535-1-ping.bai@nxp.com>
X-Mailer: git-send-email 2.26.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR06CA0170.apcprd06.prod.outlook.com
 (2603:1096:1:1e::24) To AM0PR04MB4915.eurprd04.prod.outlook.com
 (2603:10a6:208:c5::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2PR06CA0170.apcprd06.prod.outlook.com (2603:1096:1:1e::24) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3412.20 via Frontend Transport; Sun, 27 Sep 2020 09:41:44 +0000
X-Mailer: git-send-email 2.26.2
X-Originating-IP: [119.31.174.71]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 4fc261f3-bdb4-4d1e-cd55-08d862c98d0d
X-MS-TrafficTypeDiagnostic: AM0PR04MB5747:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB5747373C304A2C95DBCA56EB87340@AM0PR04MB5747.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:404;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ptGPEcsA2D3qDNxVkwnRYcEcw9Huga2NQk3RqUsHJO5QQ8K2BX/GecbujiIuqMILQogL/luKMtEWHJa1msUcvEqL45rC24lc4PtHmEz2Hi/bg73v5KYQcS7IW1ZuVFDjVzTZ/xSaxTTgKSFb6ACp/vhzq/X3C1Y8k0ueMPNBJa12/+GJNvjOeQ0SwSnQ9IU4Ohrd6D1iyxNKqmb1ehJnHztt16Sq4mOpQemY1/eOmoOySHHCT/il7kB7z4h4hKts+teyN5XCNSvBV0Rw4SJ3FLR0Qw3nOcRv1gwINPZbo7fKURBuhAAp0LLHnMMfCsJWWYPXF1ylYRIfJRRlUvYb5VnIbXKNFUC08ScRwqy4bVSNhyR7UAzGhX4nh5oAk0ic89X3MVEHVnsxwDEQwvCSUqNc8DmKRNxPJas4j/hvyPcSbQ5NeKzsveY1pkJ3Vk4SxhobiRcK/sVrk2J85ZGgGg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB4915.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(376002)(346002)(136003)(39860400002)(366004)(16526019)(956004)(316002)(2616005)(66946007)(6486002)(4326008)(5660300002)(8936002)(6512007)(86362001)(6666004)(36756003)(4744005)(2906002)(52116002)(1076003)(6506007)(26005)(186003)(8676002)(66556008)(66476007)(478600001)(69590400008)(83380400001)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: Tb/+grLBphhYAtfKfS0q6ukldSuBNoHke9aGe8DROSC6oCNh67XJImjF4oDbqT6X2KxePhtGTbgVkIPEPYMCYAzrCBi4Wr9X60ZsZSxsb2Aq5CbdG7Cgiy3RTTea/XKQIwwyH4j7/av/OCMA5GoWw7wDM9pzlzQfp4TIMO7Fo6G/VFVp7TQ+46JEbekxon+cHVAVptjUVG/nzXSxNrC1x4e4aMr2DoZoRgFtmdFrTRhxxaLgVyCn358+4hpjlBk8jNjTRgju3VE+GFGT86ZCdxw69S197i78eIGVfEcgryhY7ckidq5lD7M0QdVGmsd9Nllog1sPAvKYJwjCYoHk3WvvhbfwnYUwcj9HMPO4HEc1a92jPSn5nDggYVtHfi9oPeo1QPLiVzeIgTXt6tWvBbttapiMqCg3RdYcAr9Lz8qEmVLqEXpqDDuwceLbWWvD+g6nmg5HCMjwy5hM4i+hNYYUdAtc5ao6RlliqKg/WynTgPJZ9VNWXnzw6KueOFWjstLNGl82O3bpmoAFS1GicCqXQtYL5MJiMI/gSm7MyCDcC0KHhckPMS6i2zEnRITQ+f+sxsSmGT75zvzkiLR6xD4HdInhYOzdUwe6kOi1Hg+oJgAPl035OZtFWa90Hck0WqabIIgIRHtK0zpxatVDNQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4fc261f3-bdb4-4d1e-cd55-08d862c98d0d
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB4915.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2020 09:41:47.1163
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dmx6xB9bYFTJMHEDpMopHxnrTgy1MJtVNFPisT6POk+tfhRi2N448h/1kX9WQihmlptjfOwFbOsNcsL/Xegrzw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5747
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add PMU node to enable pmu support on imx8mp.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 6038f66aefc1..8b07a70545f6 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -133,6 +133,13 @@ clk_ext4: clock-ext4 {
 		clock-output-names = "clk_ext4";
 	};
 
+	pmu {
+		compatible = "arm,armv8-pmuv3";
+		interrupts = <GIC_PPI 7
+			     (GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_HIGH)>;
+		interrupt-affinity = <&A53_0>, <&A53_1>, <&A53_2>, <&A53_3>;
+	};
+
 	psci {
 		compatible = "arm,psci-1.0";
 		method = "smc";
-- 
2.26.2

