Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 926635BEE80
	for <lists+devicetree@lfdr.de>; Tue, 20 Sep 2022 22:25:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229905AbiITUZN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Sep 2022 16:25:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53462 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229644AbiITUZJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Sep 2022 16:25:09 -0400
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2058.outbound.protection.outlook.com [40.107.21.58])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EB716547
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 13:25:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cNy5ZIECRRZX7LuHFqudbMchiX9KImCAgpINh39uC+dMKMEOoJxZWOQ8/RmNjVnFl3XmjIBq4mG8+7xuRn35BWspqv+Tj2kfx7GicbB6SXkxHroLvwRYdRR45zynX09qf4HMV7fgJbBS3IXegcdcjChGGT4NN1/h1zFJvcY2aQH3cj9t/vfs6/+DBQZoeBjkz0csc5CHDmv/zh2cNwp2teIfi7mQM55Lr81L0oRw+C8kKl9JAXfJidPpbyM0XlTQid+lyypi/X/VOIsk6mbkiwwYK+YDeJUbD3otn69rAAA475eLG7k5j/olVxmRFWX4r31S2bd0ozm7KOi3G/ledA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tmiMEy9s8VTqo+U/o+r/srwiHgqgVnwvLhjLiMh0Oyw=;
 b=i9ivmZ4RQVuHFCIE1ayNFA49/RshZj62x2CXqXfXe7dmKru/hxW//94GeqC+TaijVkMep5seiY9eQrOpbWBw3YmMve+Oi4CmQjI0YJ7NqtpXGvSGkInsZC6575Ijxn/CudFVBWmZ7hJjOpWj33wSKZ35GfPgeV7HOGraXatfYQ2y7BNGt3M+5ebXVUlUUk8lCg8CGeAsm00TPglvu/6a8l28nAMJ2mUSy3QQlCvJpGXMDgBRc/dazSF9mhkFzI2QqWufQLxDx1rtKNDfSwpzxsNINT7n2UhV28+Cdv8/tslnHb/PndZx3CNyQA3lNKFeLzb8btMllqadVYVIDp2xhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=seco.com; dmarc=pass action=none header.from=seco.com;
 dkim=pass header.d=seco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tmiMEy9s8VTqo+U/o+r/srwiHgqgVnwvLhjLiMh0Oyw=;
 b=eIZ0Oo4zoEE4/dMSmlJKvnO/J+oREPvedmxB+2Rlk/VGr9Z4OleapQsIDb5TB1BxVLJxBEDlq5kLKt2aRH3zYpUrsH0b/75QRRosog6Mevc6Xz1W/S854DFYRD7U9esIe79JdEaYfjS9ASNguJygLmmgITEGK4Gmb2QyUNukCi4p5IyhWZLOEVu0zEfg+rwUo+4qzHy6jhTUFH/A6rutlo6mxqA6mDdEXofhYnog+bqI7iGWFbhZsDR8Mh3rNvgdcBUX7semRJ5OUPGKgbl+SJ3AD72vY1J7YTSob+4ugche/TI9oIJKVtwRQOsqzIXc1uzbYrr2eRL2enQ+cr55Bg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=seco.com;
Received: from DB7PR03MB4972.eurprd03.prod.outlook.com (2603:10a6:10:7d::22)
 by DU0PR03MB9566.eurprd03.prod.outlook.com (2603:10a6:10:41e::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.21; Tue, 20 Sep
 2022 20:24:27 +0000
Received: from DB7PR03MB4972.eurprd03.prod.outlook.com
 ([fe80::204a:de22:b651:f86d]) by DB7PR03MB4972.eurprd03.prod.outlook.com
 ([fe80::204a:de22:b651:f86d%6]) with mapi id 15.20.5654.014; Tue, 20 Sep 2022
 20:24:27 +0000
From:   Sean Anderson <sean.anderson@seco.com>
To:     Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        linux-phy@lists.infradead.org
Cc:     linuxppc-dev@lists.ozlabs.org,
        linux-arm-kernel@lists.infradead.org,
        Madalin Bucur <madalin.bucur@nxp.com>,
        Ioana Ciornei <ioana.ciornei@nxp.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org,
        Camelia Alexandra Groza <camelia.groza@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sean Anderson <sean.anderson@seco.com>,
        Li Yang <leoyang.li@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH v6 8/8] [WIP] arm64: dts: ls1088ardb: Add serdes bindings
Date:   Tue, 20 Sep 2022 16:23:56 -0400
Message-Id: <20220920202356.1451033-9-sean.anderson@seco.com>
X-Mailer: git-send-email 2.35.1.1320.gc452695387.dirty
In-Reply-To: <20220920202356.1451033-1-sean.anderson@seco.com>
References: <20220920202356.1451033-1-sean.anderson@seco.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BL1P221CA0014.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:208:2c5::26) To DB7PR03MB4972.eurprd03.prod.outlook.com
 (2603:10a6:10:7d::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB7PR03MB4972:EE_|DU0PR03MB9566:EE_
X-MS-Office365-Filtering-Correlation-Id: aa694195-0f47-49b7-2340-08da9b461d57
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: a2sHcb2JP62SY/3537AB+Q+hTDdaqvZBlMWXRbzGbZnN9S9hZQLmlxjSYNfhU+zImdDPRRPkSjW8VGuGHFVgXPE+WPh8GHpbsqgVwSnhu9JzLYyFxdh/d2Llgrr0oovDLv/Co0pHQ+WBfwPZPnLKWIYq8lvwRHrQWpf5tXtSdnTRLNRPASGhC+iuZu9eSL9bywXUa6yWi5Co2fpQevtZVy9+92NNgReOe1lnsEmyilxN6MqCnRHyjSSCmQMK/RaBjtr4A1YshiATaaSfzAPDXZgbpzwSbYyiGleFAI9/m0nsOsWOyuLek58TDLrzTkhM7KHbXbTVzPfHEiM7LWUzgdYhooaqYQHyW2jD9nVHb/lmYVoWnVZOO+0FF9CQ/6Dl74rQ3jT6YlRg9Rtts8k5KXRyvbzm5h77nSzj/kHJQymL2CFkksx/3HD5Q+xoF3G50Exit1xfN8mDDbiCbDW8syrQIXrCvC8KLvSKp8GDosjZkqbw+a5W3uGMd6nLmcoBmwN07ZGSpYHk2YKSeOe+olgOZOOM6uIOxvDP4BBAw9HgOjbUAhGeHW8Emxs8GYmuzAdyBWTkrsngnIHhCFbFjm/dvOTcQHMSmporhzfVkvjNmax2kBYPQdy074NHzhSe14jAOTmsxp+e5O8TCAm5DuzWvQov+S8uggxTs2cfavOkOaCG7cYaku6GCHrJSxBjV4LdcJ9sgmPTymmAae1vujyQDsiHyUxYOGlCxI648RPmBwdSHQ/OsqDopXDcgstD
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR03MB4972.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(396003)(366004)(136003)(376002)(39850400004)(346002)(451199015)(41300700001)(38350700002)(7416002)(52116002)(6666004)(83380400001)(36756003)(6506007)(8936002)(5660300002)(110136005)(54906003)(44832011)(2906002)(86362001)(316002)(478600001)(6486002)(1076003)(38100700002)(186003)(66946007)(66556008)(66476007)(2616005)(26005)(6512007)(8676002)(4326008);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dYxllZGxv8YWrFn2pHA6i7XYAzB2R0pIj9z0dqmj7N3CUrVQbRPTvVzVQfr9?=
 =?us-ascii?Q?GPtHwRrqYKPQKWho7UTd5Rno2xNF8NiYm7PPILlte02JXrGm+kJJz0s5FW3q?=
 =?us-ascii?Q?5iPiZoVNngiVT7UZFB2DbphKMR/yvEwYkIiFWGSXLlRAbv3LKBZ2qertLsLA?=
 =?us-ascii?Q?5ErIxA09H1Dp37lw/HN52A6VI92s7MTq5oGJxP2bKoeRwu/huHOAFixcRmTt?=
 =?us-ascii?Q?Lrla4oMO99B6s+zp5xGtaUXHa8VBEB88jQuagY/Ns/5uZQVg6iIwAFM/Mf97?=
 =?us-ascii?Q?qAbaE/aYizn2BMKVsnT1Bl6ozLK14A+H2iuMPAUGOWplaHTT1W9OZmYhR4eI?=
 =?us-ascii?Q?UzcJY471J+RnQRnM4VZ+k+epEQAPKftRqXt+EiKFkNcv2yD50KtFL++GPsya?=
 =?us-ascii?Q?pa9C4dMF1LsWh4sGY5k/1GtH3zMCuuor6b1HUTdzFrCS4VXpAy3DyJGSvvT5?=
 =?us-ascii?Q?3DnzDeQjHIRq4LAwKuFosjOaYHhUlzWJybPq2DDk8ZpC9c6ko1cE46eggd/Z?=
 =?us-ascii?Q?0juOGUVd+Peyn4G0bHGPThHWEfyrTN2LdAQCaFacWj6DvTgIu4pyqK2GkKBQ?=
 =?us-ascii?Q?gTpwDY2h7LYVBvcIH6MJ0ZamhgL+XG3EDXvRNE8A+0qQAOB+gjYVnCCfRonY?=
 =?us-ascii?Q?mNrWkZwUIkYM1U0QvPfylhWCbZ6jYa3sVIf66yncQtvNIGWyOrPdE6UIroqE?=
 =?us-ascii?Q?9TTOAb65iRWYrKtQpq4ySrKqCvjf4N9sZij52B4s3MhcikICxBb3AtCrTdWp?=
 =?us-ascii?Q?3CV/OMaOZYVgLpTeQoo2Gmxb+QcIp8HMzgf1Zt2fML4u7AsJH+wDFobk4I23?=
 =?us-ascii?Q?1lYYq450NajtrYfPIS0qbNLqjOU3vuo8YgWCgx2/jByyMXYtv2eF7EOIfwfn?=
 =?us-ascii?Q?iWh6jSrLqPdxHsr0iISGFcAtfLUvmRX1eNjLkWceJA/Gx+dExp2f5C6wFBOX?=
 =?us-ascii?Q?cChOLJ+xs5Qyyrb5G1t4JD2JkNSWg7GEGb/8bFaKBv/X+weU8bKSsizONzwS?=
 =?us-ascii?Q?2wwBSS7Em8FsHrOXSlsLQZ7t/WYob5F3UU4m1Sn/u+jLBI0DqNBK0GZXwiKu?=
 =?us-ascii?Q?HxfXCnrVpGAESfI6AFclSYAssdgvdd3+96lNRKLdLWZ7Nv3zUSsPZAWcNnHh?=
 =?us-ascii?Q?cAL4NdIFaNcAxpNUCTwa5vLbLHbzo3ovYolNG9fYh93wv6ODS32BFBpPpTwQ?=
 =?us-ascii?Q?ZcJjc/C6rIFfPjXN88V8Wf+zPUhBstj660RrHieHbca9fhhrCKBguWiAU0Uv?=
 =?us-ascii?Q?B1H27Rm9Vgqmq/mcKomE2CiKM1NVAYvspstmfZXcyvTLOl0gtb06RZMRDVhj?=
 =?us-ascii?Q?oXoE5maFZp31NKPUYdnVq8Pz2jJ/kefYC19m/TrkEYU0nKQV9eHwxDCmIhuw?=
 =?us-ascii?Q?GGowyOJu8QMOEQIbgtvTmMOY4U6d3QWRJdYccdKGDBqPLay03R3dV9DQK/a4?=
 =?us-ascii?Q?hW4gyrxLP6zlECwc43ljbNvVvjOruiRnUzQbQ+ir80eofTy1VnyHXiVy5bdA?=
 =?us-ascii?Q?DPoeAz/bVcgTeypOFlNmDEY+5wKC4HFfrbtMQg3s4FBOw2o2PLH6NC+56cLL?=
 =?us-ascii?Q?XAy6gV9YT1TnQdRP38D5DTc1gKTaZ8sfGjL0d6ec9nT9b1uUtaohaPFCqqnb?=
 =?us-ascii?Q?6g=3D=3D?=
X-OriginatorOrg: seco.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa694195-0f47-49b7-2340-08da9b461d57
X-MS-Exchange-CrossTenant-AuthSource: DB7PR03MB4972.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Sep 2022 20:24:27.0331
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: bebe97c3-6438-442e-ade3-ff17aa50e733
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /0RhbXsrehOSlDBzvJT9tdQE3BuNa+DUY7XtPdb6ber8HOiiUmNkwV5LLv4V3kT3Lt981XICb/UHnN8szrBCzg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR03MB9566
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is a first stab at adding serdes support on the LS1088A. Linux
hangs around when the serdes is initialized if the si5341 is enabled, so
it's commented out. The MC firmware needs to be fairly new (it must
support DPAA2_MAC_FEATURE_PROTOCOL_CHANGE), and the DPC needs to set the
macs to MAC_LINK_TYPE_BACKPLANE. For this reason, I think this will be
difficult to do in a backwards-compatible manner. I have not really
tested this, but hopefully it can be a good starting point.

Signed-off-by: Sean Anderson <sean.anderson@seco.com>

---

(no changes since v4)

Changes in v4:
- Convert to new bindings

 .../boot/dts/freescale/fsl-ls1088a-rdb.dts    | 161 ++++++++++++++++++
 1 file changed, 161 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts
index 1bfbce69cc8b..5c502048d887 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts
@@ -10,17 +10,138 @@
 
 /dts-v1/;
 
+#include <dt-bindings/phy/phy.h>
+
 #include "fsl-ls1088a.dtsi"
 
 / {
 	model = "LS1088A RDB Board";
 	compatible = "fsl,ls1088a-rdb", "fsl,ls1088a";
+
+	clocks {
+		si5341_xtal: clock-48mhz {
+			compatible = "fixed-clock";
+			#clock-cells = <0>;
+			clock-frequency = <48000000>;
+		};
+
+		clk_100mhz: clock-100mhz {
+			compatible = "fixed-clock";
+			#clock-cells = <0>;
+			clock-frequency = <100000000>;
+		};
+
+		clk_156mhz: clock-156mhz {
+			compatible = "fixed-clock";
+			#clock-cells = <0>;
+			clock-frequency = <156250000>;
+		};
+	};
+
+	ovdd: regulator-1v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "ovdd";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+	};
+
+	dvdd: regulator-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "dvdd";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
+
+};
+
+&serdes1 {
+	//clocks = <&si5341 0 8>, <&si5341 0 9>;
+	clocks = <&clk_100mhz>, <&clk_156mhz>;
+	clock-names = "ref0", "ref1";
+	status = "okay";
+
+	serdes1_0: phy@0 {
+		#phy-cells = <0>;
+		reg = <0>;
+
+		/* SG2 */
+		sgmii-3 {
+			fsl,pccr = <0x8>;
+			fsl,index = <3>;
+			fsl,cfg = <0x1>;
+			phy-type = <PHY_TYPE_2500BASEX>;
+		};
+
+		/* XFI2 */
+		xfi-1 {
+			fsl,pccr = <0xb>;
+			fsl,index = <1>;
+			fsl,cfg = <0x1>;
+			phy-type = <PHY_TYPE_10GBASER>;
+		};
+	};
+
+	serdes1_1: phy@1 {
+		#phy-cells = <0>;
+		reg = <1>;
+
+		/* SG1 */
+		sgmii-2 {
+			fsl,pccr = <0x8>;
+			fsl,index = <2>;
+			fsl,cfg = <0x1>;
+			phy-type = <PHY_TYPE_2500BASEX>;
+		};
+
+		/*
+		 * XFI2
+		 * Table 23-1 and section 23.5.16.4 disagree; this reflects the
+		 * table.
+		 */
+		xfi-0 {
+			fsl,pccr = <0xb>;
+			fsl,index = <0>;
+			fsl,cfg = <0x1>;
+			phy-type = <PHY_TYPE_10GBASER>;
+		};
+	};
+
+	serdes1_2: phy@2 {
+		#phy-cells = <0>;
+		reg = <2>;
+
+		/* QSGb */
+		qsgmii-1 {
+			fsl,pccr = <0x9>;
+			fsl,index = <1>;
+			fsl,cfg = <0x1>;
+			phy-type = <PHY_TYPE_QSGMII>;
+		};
+	};
+
+	serdes1_3: phy@2 {
+		#phy-cells = <0>;
+		reg = <2>;
+
+		/* QSGa */
+		qsgmii-0 {
+			fsl,pccr = <0x9>;
+			fsl,index = <0>;
+			fsl,cfg = <0x1>;
+			phy-type = <PHY_TYPE_QSGMII>;
+		};
+	};
+};
+
+&dpmac1 {
+	phys = <&serdes1_1>;
 };
 
 &dpmac2 {
 	phy-handle = <&mdio2_aquantia_phy>;
 	phy-connection-type = "10gbase-r";
 	pcs-handle = <&pcs2>;
+	phys = <&serdes1_0>;
 };
 
 &dpmac3 {
@@ -28,6 +149,7 @@ &dpmac3 {
 	phy-connection-type = "qsgmii";
 	managed = "in-band-status";
 	pcs-handle = <&pcs3_0>;
+	phys = <&serdes1_3>;
 };
 
 &dpmac4 {
@@ -35,6 +157,7 @@ &dpmac4 {
 	phy-connection-type = "qsgmii";
 	managed = "in-band-status";
 	pcs-handle = <&pcs3_1>;
+	phys = <&serdes1_3>;
 };
 
 &dpmac5 {
@@ -42,6 +165,7 @@ &dpmac5 {
 	phy-connection-type = "qsgmii";
 	managed = "in-band-status";
 	pcs-handle = <&pcs3_2>;
+	phys = <&serdes1_3>;
 };
 
 &dpmac6 {
@@ -49,6 +173,7 @@ &dpmac6 {
 	phy-connection-type = "qsgmii";
 	managed = "in-band-status";
 	pcs-handle = <&pcs3_3>;
+	phys = <&serdes1_3>;
 };
 
 &dpmac7 {
@@ -56,6 +181,7 @@ &dpmac7 {
 	phy-connection-type = "qsgmii";
 	managed = "in-band-status";
 	pcs-handle = <&pcs7_0>;
+	phys = <&serdes1_2>;
 };
 
 &dpmac8 {
@@ -63,6 +189,7 @@ &dpmac8 {
 	phy-connection-type = "qsgmii";
 	managed = "in-band-status";
 	pcs-handle = <&pcs7_1>;
+	phys = <&serdes1_2>;
 };
 
 &dpmac9 {
@@ -70,6 +197,7 @@ &dpmac9 {
 	phy-connection-type = "qsgmii";
 	managed = "in-band-status";
 	pcs-handle = <&pcs7_2>;
+	phys = <&serdes1_2>;
 };
 
 &dpmac10 {
@@ -77,6 +205,7 @@ &dpmac10 {
 	phy-connection-type = "qsgmii";
 	managed = "in-band-status";
 	pcs-handle = <&pcs7_3>;
+	phys = <&serdes1_2>;
 };
 
 &emdio1 {
@@ -142,6 +271,38 @@ i2c-switch@77 {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
+		i2c@1 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0x1>;
+
+			si5341: clock-generator@74 {
+				#address-cells = <1>;
+				#clock-cells = <2>;
+				#size-cells = <0>;
+				compatible = "silabs,si5341";
+				reg = <0x74>;
+				clocks = <&si5341_xtal>;
+				clock-names = "xtal";
+				vdd-supply = <&ovdd>;
+				vdda-supply = <&dvdd>;
+				vddo8-supply = <&ovdd>;
+				vddo9-supply = <&ovdd>;
+				silabs,iovdd-33;
+				status = "disabled";
+
+				out@8 {
+					reg = <8>;
+					silabs,format = <1>;
+				};
+
+				out@9 {
+					reg = <9>;
+					silabs,format = <1>;
+				};
+			};
+		};
+
 		i2c@2 {
 			#address-cells = <1>;
 			#size-cells = <0>;
-- 
2.35.1.1320.gc452695387.dirty

