Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 625F627A051
	for <lists+devicetree@lfdr.de>; Sun, 27 Sep 2020 11:41:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726252AbgI0Jl4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Sep 2020 05:41:56 -0400
Received: from mail-eopbgr80041.outbound.protection.outlook.com ([40.107.8.41]:31081
        "EHLO EUR04-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726149AbgI0Jlz (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 27 Sep 2020 05:41:55 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NXCfVjCAU99w6HQm/oMG72lgWK2TiDaeyIDkixt3u8aclZGyGUKoSjwIfIv2m7ur6u/zjHi87X33J3bjTHfg2940WxKE9ZhkIKDvwVko/0JpgLBIQycdEPsezSSAPggHcLAj5ghTt+f490OD76OpAfQTT3B3SdBG0fSIdo07ufAsYqYpNHssrR90t+FVMfZrB4yYcay/tkzPlGLwQlh+UROHGg22jVcqRLyFuXrQnGeldPNWxGdeXqjYfrpDX416M3bk7AVBqK8VfPSL7+MpRkyeFvT/DtmBZn4DNdmqtEs4eYb0BsVxYT2W8lVu2/Sx8ESpc8uZm+btytx+d7bfCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kji3nlf+vHy+uE3ZxAgujaJPojFgyiERSwymA3+XVqU=;
 b=Q/Fi4M67XOyMTJu0F8eZv90zDB/Uax+M1/q0HaeJ0i3ud1v7In0LKTprj3SKejjtBC5UKO26VFFj9BTOyNq9DALBr7L+GBXNw0a7NwNYMgvq6N76IlRs9d7uvPR/Wvsqb5YhyJlvYLDB2ohM+M/wgJ53I/Nm4NAELgQ81LOefIvw1kzvmcsRds4UR88KMZ+BTCgNYUmlg9hAXlGiGQYft+h30JsxH+8XQVNFHka4WqIpXQyPCP5d08f7qVLqkI0JuSyVGuxTv8GVaoeJ0Qko28ylLYsbjTUBt1pZMC+CFNa2NCiwHn6w6Q26Z075lzYFl7VT6ufh4r8Ht+8pLa+9Nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kji3nlf+vHy+uE3ZxAgujaJPojFgyiERSwymA3+XVqU=;
 b=Qzq3hS3E9i/bHS4jjCEW/OVcuewVyHls3wyupPqYzWNfWB01MAkZAbM1/Tcmgh7vu7slR6epZfQi0kq1RFoMCykqWo4x1v3/Fv0bunEj+7eeq7L/OSeT1NdVIf1mpivEgf7OO7sNt3qeofj6PPdanCt5jQ1zxPdpe8CMbnHk+Pw=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB4915.eurprd04.prod.outlook.com (2603:10a6:208:c5::20)
 by AM0PR04MB5747.eurprd04.prod.outlook.com (2603:10a6:208:12e::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3412.28; Sun, 27 Sep
 2020 09:41:52 +0000
Received: from AM0PR04MB4915.eurprd04.prod.outlook.com
 ([fe80::8de5:80f:f11a:5fa3]) by AM0PR04MB4915.eurprd04.prod.outlook.com
 ([fe80::8de5:80f:f11a:5fa3%7]) with mapi id 15.20.3412.026; Sun, 27 Sep 2020
 09:41:52 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     shawnguo@kernel.org, robh+dt@kernel.org, s.hauer@pengutronix.de
Cc:     festevam@gmail.com, linux-imx@nxp.com, devicetree@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: freescale: Add pmu support on imx8mn
Date:   Sun, 27 Sep 2020 17:47:42 +0800
Message-Id: <20200927094742.2714535-2-ping.bai@nxp.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200927094742.2714535-1-ping.bai@nxp.com>
References: <20200927094742.2714535-1-ping.bai@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR06CA0170.apcprd06.prod.outlook.com
 (2603:1096:1:1e::24) To AM0PR04MB4915.eurprd04.prod.outlook.com
 (2603:10a6:208:c5::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2PR06CA0170.apcprd06.prod.outlook.com (2603:1096:1:1e::24) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3412.20 via Frontend Transport; Sun, 27 Sep 2020 09:41:50 +0000
X-Mailer: git-send-email 2.26.2
X-Originating-IP: [119.31.174.71]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: feeb5a50-5c46-4180-16d3-08d862c99054
X-MS-TrafficTypeDiagnostic: AM0PR04MB5747:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB57477BEDEA366E83F9F487AC87340@AM0PR04MB5747.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:404;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wCSSXGD5SrPZT6fWbQDQ4HQYtGYbHTae71NoJfnJMXw3FNdNj/zA6xB8bVX2pvBuBI7nqperPnGtmzWzjVJIVAKW5aBlW66VqwQs3j/uUZeBfJ6OVuop5Sef2TFymlgTokx6dtZ0z5ZZnJVTW05GoX/Nu2/iA4bdOE0jiOq9Mqx7kKoUCX1xU7ZwnbsK98Gew+t/oLsf3ygGWfTTjOG0eAdo9uoX+OhM24m1l1Hb3BzbRR0vE+OJ2u9rGEEZebsyCljQLoSEmJ4GRvLHdW4dXvlLk/goB52VON5qYt1dWnnsr6vBYjUPrDvc5fKPQq0Du1Oavd9/WzmBIsr/gq0PCI7cz/uhlckAzPiYBFUk4UNDibD3BFpjD3Q0JTroKVQ7ahIXT/vHvP9Q+ZU/nVzgVUfngKF4BgBanyhpuVRhVvh1i8QCexfQktPgNr6mt8ImhpEINdjdSuN5UAFuiq9DsQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB4915.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(376002)(346002)(136003)(39860400002)(366004)(16526019)(956004)(316002)(2616005)(66946007)(6486002)(4326008)(5660300002)(8936002)(6512007)(86362001)(6666004)(36756003)(4744005)(2906002)(52116002)(1076003)(6506007)(26005)(186003)(8676002)(66556008)(66476007)(478600001)(69590400008)(83380400001)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 7CLmuNVNqd/LcVf84WmsxeLuZJDw1a0LYC5x4YttOrTSaznnIbuDvhEDRLK8nv01+JEzgFlQmdlsU3Ji2jYbgPvKlcWTBOWqKF5ZqmsItbQtEf2IRmUIqjgNODQdKKBebDYslHZZqts476TbODyEg5lAexLvDq+2L8c0C3x/W/AJuZQwzRSPvwlgPGUPVboa/JHQMfQ65CRZXRF7XTrJHng9pxZskEp+nZexX7/7oSaaudOS3zQEkgVXm1C/gLeJKRNBmpn1v0Rm6Sj58jeCcH38Tjw4BhToxkYUe31uB99rFsnaNCRWpYlR+k+7IaFwC6S3cdBaOggo2cWcHsIXDBMKm3TDr8flCc02W/ELt1dHR2rL+1gxrpq27DaUvpPw8kMZDJMjSUq29kDIynyExsdUaLcwtcF/WYtP4j1pAURODI2+1DCpYveSjptUKRr5BL1dZPHJZZywUYKi6fIHlRDO9bnnnQgVn5BZ9LwE7LMAiOJrDmVgL8RWxvgJ9yo+cGEB+TscwfUhyRVv6cDTPcpptYg351xW2OampRnUY0rxDXaVN0SdyN9LC58MIk4w314VaMzarD2qTS58s4/7o/gbPhfDrJf6cvURXDUfibQLnm66/z9epwbZpPGic7bzI/fwSQV2TgBFScjlYpICIg==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: feeb5a50-5c46-4180-16d3-08d862c99054
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB4915.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2020 09:41:52.5851
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +OEuyr+uskHIVXz0abS1FypHHlmiWmKbtvaB+PRLul/zv37r0nsQWIiIWmnHTXuCIrAzw1f2sOwLmPhVU3ZEPg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5747
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add PMU node to enable pmu support on imx8mn.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index 746faf1cf2fb..589835d78727 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -186,6 +186,14 @@ clk_ext4: clock-ext4 {
 		clock-output-names = "clk_ext4";
 	};
 
+	pmu {
+		compatible = "arm,armv8-pmuv3";
+		interrupts = <GIC_PPI 7
+			     (GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_HIGH)>;
+		interrupt-affinity = <&A53_0>, <&A53_1>, <&A53_2>, <&A53_3>;
+	};
+
+
 	psci {
 		compatible = "arm,psci-1.0";
 		method = "smc";
-- 
2.26.2

