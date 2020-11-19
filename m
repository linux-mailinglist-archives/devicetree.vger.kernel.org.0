Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 192AB2B8F70
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 10:54:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726486AbgKSJwx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 04:52:53 -0500
Received: from mail-am6eur05on2082.outbound.protection.outlook.com ([40.107.22.82]:2240
        "EHLO EUR05-AM6-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726553AbgKSJwx (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 19 Nov 2020 04:52:53 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XqoZv7y4v15JAuJkzxqgjP6O2U/TlFFX1Dahw4CbnWYCDXo9TqS+8xIWgbBE7BR1s92KK3goC50pv4E5vgXJNTw0AQs/ezj7FGgBI1B9XZyfuivuZzRkS7UB8tEKTHOwKRrEH9WBziY78i5i5XIGh0tsiQNJx1qzhYYAX71vFf6uQt5MM14q7rd+mxzw7WaO/EtfD9CkSB7lE2lB9LdCByEj/TiLoCQcybdijdElOPvOX9Umt6gnWPK27FCrXArs/ypsvBj0OH97RiXroWVZDZ7WJAsIEoe6JnmM12j2G3Fvnjf6umuBlnEJ+TWqtYSV1NENu6kFPvX7IQUMP2YMrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hYeyM8MVsVncxvOCtnDHehJAHCh6X9cUQnvqNa3jAbs=;
 b=dMr7x2F++pzAVhzWLb95KXgShdPmqb3dXJ4KHb9Wwm63Wwnyvuu2YBplSSUJ5IDfq5mKZY5JSWv2HvPG/xtkQEFHW9y+2MEcekbq99GsuQmXxvqeXbr21ijpO79+xC/mWT+FPnIszAeS8ODwOjEWsY/0v81oa0TV6M3X8id5MO+8HJvva/+jPPB0pIiX5xTg/4BOcQLW6or/sHfR0N2/kPGuy9lwqononrIx7P2G4Qz9AYE3014mwLhB/mSMJRLOMyC197+1i7uYVgMrwlZnXI6aTOkeGJrDlPYB4eRZihxeg2s23PN/N+/ddPrRDWBExZsd0D/GsHFv90X8WDN8UQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hYeyM8MVsVncxvOCtnDHehJAHCh6X9cUQnvqNa3jAbs=;
 b=BcOQHnm7BcKSRaQbjxqZgld0bAlqP3g//EckZQkot3Akbl+/05FHUQxLE2D2mNk4XkDRgWUIC/Yf+00snx9GqIWrwmrYMMZsauVKNGWmLERxY+mwYoIMpg7XU9aeBJJf61rxddTdpa06aQRejPlb7vbaSNmnpGNsa4KAkfBoIRI=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DBAPR04MB7429.eurprd04.prod.outlook.com (2603:10a6:10:1a2::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.22; Thu, 19 Nov
 2020 09:52:47 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::3c3a:58b9:a1cc:cbcc]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::3c3a:58b9:a1cc:cbcc%9]) with mapi id 15.20.3541.028; Thu, 19 Nov 2020
 09:52:47 +0000
From:   Joakim Zhang <qiangqing.zhang@nxp.com>
To:     shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com
Cc:     devicetree@vger.kernel.org, linux-imx@nxp.com, fugang.duan@nxp.com
Subject: [PATCH 5/5] arch: arm64: dts: imx8mq/m/n/p: add fsl,stop-mode property for FEC
Date:   Thu, 19 Nov 2020 17:52:49 +0800
Message-Id: <20201119095249.25911-6-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201119095249.25911-1-qiangqing.zhang@nxp.com>
References: <20201119095249.25911-1-qiangqing.zhang@nxp.com>
Content-Type: text/plain
X-Originating-IP: [119.31.174.71]
X-ClientProxiedBy: SG2PR0601CA0016.apcprd06.prod.outlook.com (2603:1096:3::26)
 To DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2PR0601CA0016.apcprd06.prod.outlook.com (2603:1096:3::26) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.20 via Frontend Transport; Thu, 19 Nov 2020 09:52:45 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 11b4e3e7-43ec-4e12-0d8d-08d88c70de91
X-MS-TrafficTypeDiagnostic: DBAPR04MB7429:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DBAPR04MB7429C78F05BBC9FBD442FAC8E6E00@DBAPR04MB7429.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:989;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: sTavqgcBY18az2NvY/QVw1+m2x/E1XcS+4lmLh6q5CZBlACMka94KHV3UvSZ0hN5AFb2OxfLDHKmkl6h0QMJc8He58fkI5cyQBrlQL2cbwsGF5OicMZ9iK8RGkTh2MMzm9dmQqqdECbjWM9yp8xX4bciuqJcQwZPe2EjF5rJs0kVwCW3GZjiqMsWTeAVx6F3UJGQ27GhPCmRz9dPeJDULJLh81SUwBGliPqWI8GcorMNwpnRBaEbM2kK4XqEv6gg26KqtaMe1vYM+7W16d8otJPnGZMmaThtJ6X7FuoudM4VJBKJfg7wBl//Ve7jUBIddwiBFSJ+sdVGfK7DBLOsOvbVr4k2Bz2Wgcqhwav1n8PocCgdKSFJ6Qm2jju/9rxYo/EO4jGABae4YpT25XEeBlS8LLrePLaYtAId6IlbrbY=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6795.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(396003)(39860400002)(346002)(136003)(376002)(66946007)(66476007)(52116002)(83380400001)(6506007)(2616005)(6486002)(69590400008)(1076003)(956004)(316002)(4326008)(478600001)(86362001)(16526019)(8676002)(66556008)(2906002)(8936002)(26005)(186003)(5660300002)(6512007)(36756003)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: E8Q/2DeH/QucYhLt359k01CiQQeQxSEsBte+KEG0UW1MekI64AV/TbiVp8hHgpFyAWym378YoqLfeWjZdIOlB1SgBa+AkfVLOih1YE7A/xJIndMTGq1NID+RLhlFsf9uxJcLAvIfryAkGXPokA3Qc0nFPlrUyPaxT4GU5c4K7YuDhvcAXMosa7W0vG5nLvQd1EQoiB/kBoL7N0mAPteQl3U9rxi666nCNcKAZOdbh0b8XZzX6v9lBdu2cfgRpO/zLohabb9UDjjVNv2qe3o09fL4IaqcZykCilgwrM6nh4c7RmqbmTaDJDp/jH5BIBuOsfQSuYLahDUQJyYAKcEhJbwIsU6vMUoh8/kP70qxf3RMeTW6Osr/LFQRLrFF+DHiQHMIcL/AR9rhCFscR79K2N58t7K+Zodx0OaJ/K7b49wwNWPt74bu5TaeLjRNmzfr/7+MQMY73B7gwKjjIDfep08ccHDWkfMHWGSzB8z/03OwC3drEWw4yG4xZvNA/cn1OlB4SHZzeG6/GTYbmQT8L5gDh2rnLo1SSQWfH7h1nze+Mjdat7VklBmKRvLNi250tZ7lG9K4Oyht3A9lE8wFGyVtbRo4PXFhH9LoO6o39vq8IP13n+UrH+wodPyRUgz2fIEup6aV0jsfrWpY2KOwWqyKFukoK3pR3GAH3nM3y9AltfzcZgaBQa7j8zslzNmDGanD8wJF9q+/GSBWPmwfa126G73mPx/5UjHkxGva6RWIZ0x5sPzH0jB/15DtcEXS0NnVvcbpWhgrJ2KuxCJSRldXS1/Z/cZS2OcgyNEcDeclFv6DmcTpvSrBtIwsicnzd4aGtiNfl3NbExh/hz17qZaMLcin+ZseT96mCSK3VXTdP5nJsu50kyGxDx7VZuVIlWbXsqlqif1WLp/3y3Qmaw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 11b4e3e7-43ec-4e12-0d8d-08d88c70de91
X-MS-Exchange-CrossTenant-AuthSource: DB8PR04MB6795.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2020 09:52:47.3986
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ENlBzG/8bV/f7KiUgeYFwDRSbnlYa/ZlbdNuOPPrF/vzZ9Ln0x4og0urH7GB+pKshA6LN6Idbe6ZH2hoBt6Q5A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR04MB7429
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add fsl,stop-mode property for FEC to enable stop mode.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 1 +
 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 1 +
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 1 +
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 1 +
 4 files changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 0fbff13a9629..37c8def9e4f5 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -924,6 +924,7 @@
 				nvmem-cells = <&fec_mac_address>;
 				nvmem-cell-names = "mac-address";
 				nvmem_macaddr_swap;
+				fsl,stop-mode = <&gpr 0x10 3>;
 				status = "disabled";
 			};
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index 6c16d09e47a5..c2b1f770eaad 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -775,6 +775,7 @@
 				nvmem-cells = <&fec_mac_address>;
 				nvmem-cell-names = "mac-address";
 				nvmem_macaddr_swap;
+				fsl,stop-mode = <&gpr 0x10 3>;
 				status = "disabled";
 			};
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 14176ee9a19c..1274fbb1af67 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -776,6 +776,7 @@
 				fsl,num-rx-queues = <3>;
 				nvmem-cells = <&eth_mac1>;
 				nvmem-cell-names = "mac-address";
+				fsl,stop-mode = <&gpr 0x10 3>;
 				nvmem_macaddr_swap;
 				status = "disabled";
 			};
diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 6eb773fe6cec..cbaaaf28e327 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -1170,6 +1170,7 @@
 				nvmem-cells = <&fec_mac_address>;
 				nvmem-cell-names = "mac-address";
 				nvmem_macaddr_swap;
+				fsl,stop-mode = <&iomuxc_gpr 0x10 3>;
 				status = "disabled";
 			};
 		};
-- 
2.17.1

