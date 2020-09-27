Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AA46F27A048
	for <lists+devicetree@lfdr.de>; Sun, 27 Sep 2020 11:35:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726262AbgI0Jfl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Sep 2020 05:35:41 -0400
Received: from mail-db5eur03hn2241.outbound.protection.outlook.com ([52.100.12.241]:37038
        "EHLO EUR03-DB5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726239AbgI0Jfl (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 27 Sep 2020 05:35:41 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=juWIeREYr3A121lyq8al4Wv5cAbsAi0j4Vg/yLuQBDWdVzjvb6/oRrR3mjU7yDoukzH9s+BeUDw8omgJk4X1eDHHD71wr2XU3e1+T30Jdl/U8qm8185uC8uo+Du0uvd4DdVyrW0VvGIKC7yNpgDsr+ALE0F5ld/Cw4qOFuOycHkQwJGLP9Bi1l+AMmkS6Jue3ehl3Z+qSZZPpuYQ5DLtVQoQJFM8cnd7ycer1PfdBb0/yyN5g6rtCBDoyG1Ii+Lgva8GLLOPgakmtLkOSrONFywmNAAQxf+kuwjcJuMKcWdruoFwZj6TX1dL+iZ6Q17b3kgQZEjCzzsh5QudoqR8ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kgPbzeZ6ztXu3O2tetp7zbPv0yJ4LVLATaVpq5ugy9U=;
 b=jYi5jpc2NkqWkd8DAIYqBynz8fC+UIPHE8MlA0j0T2QmSRPlXxJv4y+ozzUSjsQ58zYgTy18B8OxluU/vSADRiMz/1TPzzEB8kW64+cr6Ci29bIJqHqYYnVzummBUMBFsQqy58BG4nAySuIxZVHL5ZfpqwMUOtyqbmi3pvCtyokkkiDLQ7r0QIMbSyCcGR0AHcsw3lmhco5Upx25vuhkdSvBgMfpUbvmn9joWW700iwCjSEE1BUUSBPjJbuIOZOLoOyljho9KjDhOfHGC1bFO2PLiKf43/l0S+IxwyjipjLBULUPbi35QymP2LX7e/PuZtnECm7ZfI+TjUhUOIxW2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kgPbzeZ6ztXu3O2tetp7zbPv0yJ4LVLATaVpq5ugy9U=;
 b=jKSwGShi6cw9r2Yj4zhWgCIqPaOnMqaB984DopthT3+oyfPZzUaxQmkSAE8CpGBlumaJ05Y+sRkiNKki9L8s3VBMb1DGusepW1hh91+g45+/oXicEY+JS3LzAb60iGehHKpoXond6WEqGSIz09ccQw/Y/+NUWzxJ1vAo8bajuD8=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB4915.eurprd04.prod.outlook.com (2603:10a6:208:c5::20)
 by AM0PR04MB6324.eurprd04.prod.outlook.com (2603:10a6:208:13f::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3412.20; Sun, 27 Sep
 2020 09:35:37 +0000
Received: from AM0PR04MB4915.eurprd04.prod.outlook.com
 ([fe80::8de5:80f:f11a:5fa3]) by AM0PR04MB4915.eurprd04.prod.outlook.com
 ([fe80::8de5:80f:f11a:5fa3%7]) with mapi id 15.20.3412.026; Sun, 27 Sep 2020
 09:35:37 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     shawnguo@kernel.org, robh+dt@kernel.org, s.hauer@pengutronix.de
Cc:     festevam@gmail.com, linux-imx@nxp.com, devicetree@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: freescale: Add imx8mn ddr3l evk board support
Date:   Sun, 27 Sep 2020 17:41:24 +0800
Message-Id: <20200927094124.2714390-2-ping.bai@nxp.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200927094124.2714390-1-ping.bai@nxp.com>
References: <20200927094124.2714390-1-ping.bai@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR03CA0092.apcprd03.prod.outlook.com
 (2603:1096:4:7c::20) To AM0PR04MB4915.eurprd04.prod.outlook.com
 (2603:10a6:208:c5::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2PR03CA0092.apcprd03.prod.outlook.com (2603:1096:4:7c::20) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3433.13 via Frontend Transport; Sun, 27 Sep 2020 09:35:35 +0000
X-Mailer: git-send-email 2.26.2
X-Originating-IP: [119.31.174.71]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 23f8ef22-4707-426f-3bad-08d862c8b0e0
X-MS-TrafficTypeDiagnostic: AM0PR04MB6324:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB6324B022282E70C1C689FFC287340@AM0PR04MB6324.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1002;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: szD1tLAIGPXgd+YrESBCZ8EShqpr44MtVEqPBIW4eyApB2n8UGR0BeeQiqDbFqQf2ib6Z99T78IAxG2UelFlzi9M+OkNp+zTXWY4GIDIMTL5D/iChkQLwJG7r0AK8DUqQfQdTm2s3Zy2D/ixD4qpwgdwrX4SuQlF8fmO0NT++vhtvbRtmW0o1UX+f7+xirCo0vS8j6HYhTPDcV5t8TWw0Dt0h9Kx6p98J/sH2rxt3S9hYl/4KZujFlyqrilBnXPNN6erPY17LvfHOXsBlPodAXsHM47JebyiEFIameZkpAITf8M21l/4wu7ZgGNy9gnzm4wkPVeylVTPlj5ciy/+55QbNmVqbstPkCvG8ACTF1B/PhYEGiJ3Wgk10priMQAo9Ohpvrk7pgrlQlCogCEcbt0zamoV9UvN5pr2r0UPIFqfljq3i2pPisHbe5jlijHgiWkhM0NPmCh+SBi+5xZRPPpqLCdu1vyF2JAgT8gR6/54Fs+oD0cJtgnMwNIZmSmTdjiabX+UXc2417FSZN0jNUi3jIOXTnsGJftsHlKxI2wypI/rMb8ky8qzgPUV/mw8IZnE/09ixxaoZCBs3FzYqQzOoV5zO51eMMjHtDo4ubSd2ZLEIjvWkRwdmcQNCfmuNGQV2WytFxw/ygrv18/cRImdRrTJHT3ML1dVEkUH6YYKP3Ka8e5bKu31+GhPM13Q3j2AfJ1rNs34126BVgjLAnDn7cAla5zspRg28a6d3RpFD6yUAk+WPVrg85GA/yDrzg6Mc80Jpib2SASh/z8OEeMtq7cvTSRx4ThiGm/EZEY=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:5;SRV:;IPV:NLI;SFV:SPM;H:AM0PR04MB4915.eurprd04.prod.outlook.com;PTR:;CAT:OSPM;SFS:(4636009)(346002)(39860400002)(366004)(136003)(376002)(396003)(86362001)(6486002)(52116002)(6666004)(956004)(4326008)(26005)(16526019)(6506007)(8676002)(8936002)(2906002)(186003)(478600001)(5660300002)(36756003)(66556008)(66476007)(66946007)(316002)(2616005)(69590400008)(1076003)(6512007)(42413003)(32563001);DIR:OUT;SFP:1501;
X-MS-Exchange-AntiSpam-MessageData: 5s22SjlUJ69hATiXxOpkgyURSQrPGfU0TRqsyCPOcX8fsuvXUPOn6//oymLMBl22sxs0Ssg0fb8jy5jCkP0Cu4VOSJle1BxeyR72jUKRk6ljPpKZRTCnJLQmFwqA+CVHqYIkpQcmaYN47WYiNA9ZcpSuDq5RC5I4AinrcMxPkk3S5OZ1+M6PZc/TXjoWbbgxw2nm/V3/ZlnYS6861BoVym31IfIbkOxnEK4/ec0noOHyxDcaQXDI3oavhSlNgfyDaidejAF8NYu0vQF60Xejp4nFgv1H4L7VHHdTFPxbhvG62gJBXGPVOihZI2q+KywVWUjMKuogUCW9eY96FLyV6g7QYs2oucNSdPoHK444aSg1KoJlT7B1FSMCjWombmNi5lY/Ql7F15kgpZjSNJbNIy874E+ZWdMYOe0yXkBsGCyX+sAZwgsuX9fiUghHFwgAedTd3JdjwFBlpCnAGajLp5X3CM9qmEPOLO+5XX/Xs0W7k+zGTuuk3fWBScfCSDVKDAlsC+Eosk8kvERii041lZXNDRqZjiVB1YVUarQbGm9mzOqXCODcOMmd1Micct61Pw9FHQCQAXIykOeXEZTXUbNCAnLavImSxHhd/LyBB0TEI26om/ruPnqp6KCnQpHrFfKaLMQsWCSMbnQOfAEFLg==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 23f8ef22-4707-426f-3bad-08d862c8b0e0
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB4915.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2020 09:35:37.5960
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5QFbvSf+VC0ctSs5s0oZCpd11bzumz/MH83T3gbQyBLzmIwa02nvdJl8AopG/oxMTmAJau6+VAZ+Dq4YtGHGfQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6324
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

For i.MX8MN DDR3L EVK board, it populates with the 11x11 package
with no GPU, no display module compared to 14x14 package. For
the board design, it is same as LPDDR4 board except that the
display related interface is removed.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
---
 arch/arm64/boot/dts/freescale/Makefile             |  1 +
 arch/arm64/boot/dts/freescale/imx8mn-ddr3l-evk.dts | 11 +++++++++++
 2 files changed, 12 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mn-ddr3l-evk.dts

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index f8d59433af01..4edcbd920a8f 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -33,6 +33,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mm-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-ddr4-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-var-som-symphony.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mn-evk.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8mn-ddr3l-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mn-ddr4-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mn-var-som-symphony.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-evk.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx8mn-ddr3l-evk.dts b/arch/arm64/boot/dts/freescale/imx8mn-ddr3l-evk.dts
new file mode 100644
index 000000000000..854cb3a525f0
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mn-ddr3l-evk.dts
@@ -0,0 +1,11 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+ /*
+  * Copyright 2020 NXP
+  */
+
+#include "imx8mn-evk.dts"
+
+/ {
+	model = "NXP i.MX8MNano DDR3L EVK board";
+	compatible = "fsl,imx8mn-ddr3l-evk", "fsl,imx8mn";
+};
-- 
2.26.2

