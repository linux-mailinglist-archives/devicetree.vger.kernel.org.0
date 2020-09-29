Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 45CE727C088
	for <lists+devicetree@lfdr.de>; Tue, 29 Sep 2020 11:09:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727893AbgI2JJf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Sep 2020 05:09:35 -0400
Received: from mail-eopbgr70089.outbound.protection.outlook.com ([40.107.7.89]:41536
        "EHLO EUR04-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1727831AbgI2JJf (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 29 Sep 2020 05:09:35 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QZh2H9OV3qbfkrzgvvq7Vf8RANOOVcWy6zrrnq4JarnzPnrYCj5TrPGcL89B0JqKXkvIfVsJBhO8v+VLAbuEPD43CIuCsOVMIHEwxWS1KVojVmG1auzMmxZb0VFY3SHrm9WgtK5PJolhdhUCoXihrWm2AR2oqMuDatYWrZSQ4TL/Pe3dnmYcyA8jqeMiWD7ZlN3WNFvo26r4Z/DbqhESZubu9LSUAwpeZuza0QepHy4fiKKJGaOsb0BJGoBP9YQZxG9+aEI4ZTHxeh/APyhK4BQpg7fDJCMs+6OxJNttD1dCJuwVZKeTI/fbJPKPs8Z1X2MS0mxItTAQTjpmXjLLFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Loa5vb7faSuMqJvA0DPhhNVNol+MxOkXWsD1D+hcI38=;
 b=k3xUg7HmrHf6PeURl1G6vrfowIBfxV7oo0H2zHgZex6Ag24HqrbANDQn4uhO9Q26RV7t7QYe/MPtfn7e+eHLOpqXWyCKhHn4MmygCEcXCYc1WPSoWdh6gPL6yZta9BjClkNZX+B9bIZ4CfAQLH7wj6bGwSMkQ1Ubzc/jSQmI117mY/Lj/d7nlaDWF+uRjlH4uwGEt4xCGcrMUtSB5+dq0xA5g+OmZ37IjbP1nGTlfucHXt5dj6Yx2BjJ1/p4j41oNg0/155A+5uB/1fy3La9x9YfG3eYDE/2lXQ4QEBEn4krcLLhB8XHaRsAfaDAwPJ8x3duLOsNnVYKTu2qeuAGVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Loa5vb7faSuMqJvA0DPhhNVNol+MxOkXWsD1D+hcI38=;
 b=Fz4EvXcSoaEL+Y2oC0D69ydYY1xHcrDbeHM8+zVr2i40ztdtJMxTq2uNI7WY7no1hwGy2vupfrIge1mb26UtN5U3yu0UyBqZyDeebsTr7Ag6XrhHGCF2kpTt/Jl5Xf5jisBsOtuW/4jERa7kF/s1elT6cgq9pQs2kjDKVMKrcDM=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from AM6PR04MB4917.eurprd04.prod.outlook.com (2603:10a6:20b:1::27)
 by AM6PR0402MB3638.eurprd04.prod.outlook.com (2603:10a6:209:23::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3412.25; Tue, 29 Sep
 2020 09:09:31 +0000
Received: from AM6PR04MB4917.eurprd04.prod.outlook.com
 ([fe80::8862:61c7:e29a:b886]) by AM6PR04MB4917.eurprd04.prod.outlook.com
 ([fe80::8862:61c7:e29a:b886%7]) with mapi id 15.20.3412.028; Tue, 29 Sep 2020
 09:09:31 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     shawnguo@kernel.org, robh+dt@kernel.org, s.hauer@pengutronix.de,
        krzk@kernel.org
Cc:     festevam@gmail.com, linux-imx@nxp.com, devicetree@vger.kernel.org
Subject: [PATCH v2 1/2] arm64: dts: freescale: Add pmu support on imx8mp
Date:   Tue, 29 Sep 2020 17:15:22 +0800
Message-Id: <20200929091523.2775950-1-ping.bai@nxp.com>
X-Mailer: git-send-email 2.26.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR06CA0093.apcprd06.prod.outlook.com
 (2603:1096:3:14::19) To AM6PR04MB4917.eurprd04.prod.outlook.com
 (2603:10a6:20b:1::27)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2PR06CA0093.apcprd06.prod.outlook.com (2603:1096:3:14::19) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3433.32 via Frontend Transport; Tue, 29 Sep 2020 09:09:28 +0000
X-Mailer: git-send-email 2.26.2
X-Originating-IP: [119.31.174.71]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: d8510b58-5e0c-413b-2f55-08d86457601a
X-MS-TrafficTypeDiagnostic: AM6PR0402MB3638:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR0402MB3638B7F609D81545A115FC2987320@AM6PR0402MB3638.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: v5SRIa9o3yw5BifXi9n3c/p8qNQ725ZyztgbCMtqs1hqqVBiKOQjtcUG5A7b4mBS1e2t1Aci4i5lEzHIay9TO7VS9azeqFoGlwaCcpB+T+JjlZ2S4Cr5fzdlY0eAyHzcz2r/WkZtBBo/UKGyRlMvdGrFmPQfRWEdd9UHhRVaSmzpt7kuqMWAs36SuJRkjYtE9ZXwLrgME1W6PdvOn9eXS8mho5XqOMgENu6Fj2IrKSODkonJikf0h8T/2i0SzbjqLGXmWV6/wj/KaHe93unJgAC6oeee1Ar51ulfruE3YijITPEGzfqFqjYgC/vixxbAEG81MOLlMYmP1VeypbuIr8kwDa0XGwym6A3jJcPnhwgUho67wBxGlfrQIAfI8/V/uR+P8ONXlg+ctCDSuVzIL+PjessC+pNS21fEUMmqGaaKp0K1EchjPhU6CgzGAmb+Xzg+CYK2ZCWGvvzzkrv8EA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR04MB4917.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(376002)(366004)(136003)(396003)(39860400002)(6506007)(52116002)(66556008)(66476007)(69590400008)(16526019)(6666004)(26005)(186003)(5660300002)(478600001)(316002)(1076003)(4744005)(4326008)(8676002)(8936002)(6486002)(36756003)(2906002)(956004)(2616005)(6512007)(86362001)(83380400001)(66946007)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: ytXO5f53GL3UEKTHnGB+WGz/mgSormr4iBFiwvDE/5rpAUq0K71n/aBy4T2cqWbM0m2idV5QkHntX5BZEDGul71OBfz1GRH0nmheh+/7fJtlgvbgxCKfg/WJuUo0/5Eo5677IlNMzAnf36Jg4dn0zgDeJ+tRrdFiAJh3Op5RR/yxek3jgpINHtXVajUZi9VT1WIGQbcGVNt+GY54O3mFh0jl4e/I0QdJiAiYy2VToZSLMlQkabmCH77hP7kepFE06voQgAT3Mhy5jA/JhOqxwI/ATwI4wzIm2CBtfqe2aQLTMyGHSUzsY4TzOp/G5B0sbsnJ0zrDEw0cdJrqG2lXD4wlDvqvnVlgsGFM1GlgDngEOAv6/wvUbEi2sNkh++G7W0UPKZzEG9fXyXRubwUihtVIpds4OqoAD5qkZDzcj7+ZqgCVDPsZGXA9lceEBGpnWYQpXH2nLjtI1dU0fWWNrbHCdn4QZodhccy+V3Vnv6H29ugl9kcSdvaWPhagNMlM1ZyZXzWi9P9h023WJuuGXC3tCk6DE/IqmBOAEIktr0dzZHl0lkA5cf/HvU8DM2r84pyUMaINj2sT9KopDfJIR9wShHD1xdeGr9ywFpF0ofYe8r3RsBsDMxGvazW6t+xyjrxBCQT38ApHm3UBfmYQqg==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d8510b58-5e0c-413b-2f55-08d86457601a
X-MS-Exchange-CrossTenant-AuthSource: AM6PR04MB4917.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Sep 2020 09:09:31.3464
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6LDcid+dNAkO34eU8gxwA0tEw+nN7hx3IjNVhhJZ0JLvYCbW8jPKSlxMawr0iLrOoXFSOsofaZ3hUxdL0b/n/Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3638
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add PMU node to enable pmu support on imx8mp.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
---
Change in V2:
- Update the compatible string to ca53 specific
- Correct the GIC_CPU_MASK num to 4 as only have 4xA53 cores
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 6038f66aefc1..2a7bbd4d68ac 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -133,6 +133,13 @@ clk_ext4: clock-ext4 {
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

