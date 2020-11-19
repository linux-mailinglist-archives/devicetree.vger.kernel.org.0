Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 17E4F2B8F6A
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 10:54:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726594AbgKSJwm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 04:52:42 -0500
Received: from mail-vi1eur05on2071.outbound.protection.outlook.com ([40.107.21.71]:23457
        "EHLO EUR05-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726553AbgKSJwk (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 19 Nov 2020 04:52:40 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vbh3hokxKEezXGGt7JNyMCrglXatzF5gTEAxUxw/7tdNsikMAcaIIneGaIwPhMAlOnmvmKc1pA1DOt6bIJsjtj/EM09S7OELpaga29zy3nb5E7c+oHY2FRI3JcKRSxJ7JXnEucx8uUfL6fhUkOqzoxnV79sAdrC9VISg3lKDgY6Z7HvK7R7ONVLjfGu5hXXrJrU7tFMYVIXv7qpApiBUu4KdG/moUxSnP6OG26jtIjMM94ZWqGZeV3q21oxl1eyaPH4vEHQcPH8LQm3irA987sFh0qSfWY9bZEQYdYowjnGitp7lIfLl83/U2dhIqOZ082zYjSjFUJF2yXqeUELTVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BEUJDT9zIUJvNkuixru0zgbHLkjGOrF7slGR47qPBkQ=;
 b=I9ZHjm62bqW/Uqq9OQCGZKzFPup1KbqSHOmXJ1r0swR3FIkXoY8/i8GRVUTdGeOSo3r0JD4M2WGJ3IzgypjUoRCbKqof/t44t4U5LK/9cEOqzaIs6U8Wxmb52/CoUuNAdHqXDl16OkdxrrpSwlSmWn3BJzaBDLmUKpgqevB2Rn/DKupJWSj57pOkKQzGcbfeLnsVxV1kmdW275i98Z5L30RiUqJPvljZhWUsLu/YCPJE2zbr0JWBY5v6DkaGsUzQGHsNUgwAcQoQFCZltqdepvXMM3mN5T+J9GErwx2D/ZKGY/n0BDz0DeW/CzkPFwTYtTLsMKOZIEIqDZVBodPsYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BEUJDT9zIUJvNkuixru0zgbHLkjGOrF7slGR47qPBkQ=;
 b=BXi+yaQZg1JSr7mBqTX/pHwSJYkmmyrbyPFOzCsZWeW1M11psG4FNeyPovuhWfs2XwlYmoPObwXJd3KuTd2yVeXYTP8jdhsb4CVW3C84wll9EZoLq1ag4ZinM2UksrMic25kpiVLiTWuPzhcoBlhXYxn5Opd2a+tm0QzmyKXThs=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DBBPR04MB7900.eurprd04.prod.outlook.com (2603:10a6:10:1e8::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3564.25; Thu, 19 Nov
 2020 09:52:37 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::3c3a:58b9:a1cc:cbcc]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::3c3a:58b9:a1cc:cbcc%9]) with mapi id 15.20.3541.028; Thu, 19 Nov 2020
 09:52:37 +0000
From:   Joakim Zhang <qiangqing.zhang@nxp.com>
To:     shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com
Cc:     devicetree@vger.kernel.org, linux-imx@nxp.com, fugang.duan@nxp.com
Subject: [PATCH 1/5] arch: arm64: imx6ul/sx/qdl: add wakeup support via magic packet
Date:   Thu, 19 Nov 2020 17:52:45 +0800
Message-Id: <20201119095249.25911-2-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201119095249.25911-1-qiangqing.zhang@nxp.com>
References: <20201119095249.25911-1-qiangqing.zhang@nxp.com>
Content-Type: text/plain
X-Originating-IP: [119.31.174.71]
X-ClientProxiedBy: SG2PR0601CA0016.apcprd06.prod.outlook.com (2603:1096:3::26)
 To DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2PR0601CA0016.apcprd06.prod.outlook.com (2603:1096:3::26) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.20 via Frontend Transport; Thu, 19 Nov 2020 09:52:35 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: a46d2c88-66c7-4a7a-588e-08d88c70d88d
X-MS-TrafficTypeDiagnostic: DBBPR04MB7900:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DBBPR04MB7900094A61FCCBF39F6CBBEAE6E00@DBBPR04MB7900.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:216;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nGgWEFpl9Y6KT5LjlPRyiDMj+BKEWiwCftoQdy2kJXoDMWeU2O3i6OToLQkqZvdGiZywmltstsAblMPVa8jsTqem80pSS5Jly/MxiOSGo21qazOM8IDn9lFxiodKtzNSV1GxwmVRHXbkqYuhvIauPKViTqH1b9287R/vgtSbMx0w7yKjcKrvMVkR6KWpt7bWls5DZCivWGrwoeXFHqvNdBaFbSMadfRX7vEpAjja6KqsS/oB9taWlVR5U29hGotjpPjNAf0eBcg7j9GHdt50FBlL8WF//OHlYTgAsPC9blnSueTW4gDPsGHhxVuQlpogmcUIrkVWTMooAuaI6O2l7hwoV5rvkSkUEUBFcUP9V2ajKVHTP8xB+KoRzRZXI1KiT3KDuAMurf3Cw3dn0H9N6w==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6795.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(396003)(366004)(136003)(346002)(39860400002)(52116002)(1076003)(69590400008)(956004)(6512007)(316002)(6486002)(6506007)(2616005)(8936002)(86362001)(83380400001)(16526019)(6666004)(8676002)(26005)(186003)(2906002)(66556008)(5660300002)(4326008)(66476007)(478600001)(66946007)(36756003)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: o1TMjFqj/8G/Kmk8b4MxgEIwdoX+t0vtgNnAhCyESyTDhFI5DIG/xRVNWmZJmxXjd8WNGf1B9WLg31LNhmTOY8r3StPwredc9S+969eCBlAiecPP/drCUzxsoDzk81fhJZ11Wu79zudgPD6NRLvZl5aG66y4WsD30t9p2SCQkLNuH2zB5whR8UxeRyes5qyAkGOGF17bD2h5oNkDlKrPUL7Rcy8NF2GW+RywxPXe4Kv+4Z9eaaxxQo1beEGUbdsqh9spazgMMt0CvQ7ibNgNpWLgd7wPIIo168X8YSd0d6Y3nyDTIFQSxXlx21TK0+7nqwcRZPfP4XZ6OmaAHYIR8/R2kSF5AwQyZk3S2K3E9kUMU0QrHZi6g125WC1RK6MXpqEH8dO5FNuaomSPSkOqHoihHweh+lQIbAQorLXP3dv9u1UHOqymWtG6T30AdUvsSjnqAZDuQAx7l/chPc4OBqm2z8ppgV+BZwp9Sr/e9eOvlfeQILR4fhMuJpi0weYJAnzvUqaL/ZwmDjEsY3yn+vHMKsX44Wn3GogXHM+XtzJzFjd/Xe8LOiGCD1bb0ftGOHg5fKHqxdTEa4Aeguk7/9szBYMSfK19NoaCk4Wr6RgF/Q2sLuYaEUBV7b0ENnkfRLX14UyhiMN2nXanfTLPpE+0xYbeL+Mkc7fV7GsYLlxc5X94v/WBECc8H+4Yqsgn0m9R/tkIkIv14eK2vBy+bs93DMBLgbX/R4W2C1Q8eR+H5XW7hhYB68uBKOpN1BMBY7HD9YvzG703hdRrni7F7MhbaZ0T7zgXCcjbcR1TkwlTUBmaQETFJo3f267yQh3SIL1CSiU0WXwRq3bsjH+qTLFBsIArbAfQMo4NwEkV+Gm/Pur8DSjXFin10tteWBnSzCM0SWJ4YLeFbg7e+y03cA==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a46d2c88-66c7-4a7a-588e-08d88c70d88d
X-MS-Exchange-CrossTenant-AuthSource: DB8PR04MB6795.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2020 09:52:37.2055
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tYQ9R3ZYCALNSI/H+17ciB42G+pPXYW/HFL0LV6R0ccLde6izJ2SnQUujk+3UqXZ3HGhqichzoxJrpEsPune/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7900
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add wakeup support via magic packet on i.MX platforms.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
 arch/arm/boot/dts/imx6qdl-sabreauto.dtsi | 1 +
 arch/arm/boot/dts/imx6sx-sdb.dtsi        | 2 ++
 arch/arm/boot/dts/imx6ul.dtsi            | 2 ++
 3 files changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/imx6qdl-sabreauto.dtsi b/arch/arm/boot/dts/imx6qdl-sabreauto.dtsi
index afe477f32984..5e58740d40c5 100644
--- a/arch/arm/boot/dts/imx6qdl-sabreauto.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-sabreauto.dtsi
@@ -298,6 +298,7 @@
 	interrupts-extended = <&gpio1 6 IRQ_TYPE_LEVEL_HIGH>,
 			      <&intc 0 119 IRQ_TYPE_LEVEL_HIGH>;
 	fsl,err006687-workaround-present;
+	fsl,magic-packet;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/imx6sx-sdb.dtsi b/arch/arm/boot/dts/imx6sx-sdb.dtsi
index 1351d7f70a54..c6e85e4a0883 100644
--- a/arch/arm/boot/dts/imx6sx-sdb.dtsi
+++ b/arch/arm/boot/dts/imx6sx-sdb.dtsi
@@ -206,6 +206,7 @@
 	phy-mode = "rgmii-id";
 	phy-handle = <&ethphy1>;
 	phy-reset-gpios = <&gpio2 7 GPIO_ACTIVE_LOW>;
+	fsl,magic-packet;
 	status = "okay";
 
 	mdio {
@@ -227,6 +228,7 @@
 	pinctrl-0 = <&pinctrl_enet2>;
 	phy-mode = "rgmii-id";
 	phy-handle = <&ethphy2>;
+	fsl,magic-packet;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
index 9d3411cc597b..afeec01f6522 100644
--- a/arch/arm/boot/dts/imx6ul.dtsi
+++ b/arch/arm/boot/dts/imx6ul.dtsi
@@ -538,6 +538,7 @@
 				fsl,num-tx-queues = <1>;
 				fsl,num-rx-queues = <1>;
 				fsl,stop-mode = <&gpr 0x10 4>;
+				fsl,magic-packet;
 				status = "disabled";
 			};
 
@@ -885,6 +886,7 @@
 				fsl,num-tx-queues = <1>;
 				fsl,num-rx-queues = <1>;
 				fsl,stop-mode = <&gpr 0x10 3>;
+				fsl,magic-packet;
 				status = "disabled";
 			};
 
-- 
2.17.1

