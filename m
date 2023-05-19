Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 02350708FDB
	for <lists+devicetree@lfdr.de>; Fri, 19 May 2023 08:24:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229616AbjESGYs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 May 2023 02:24:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229901AbjESGYq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 May 2023 02:24:46 -0400
Received: from EUR02-DB5-obe.outbound.protection.outlook.com (mail-db5eur02on2065.outbound.protection.outlook.com [40.107.249.65])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31DDE1AC
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 23:24:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WOrI9F8oS2Mls5D2THhvzto5d1HDzpEbTMKqsYwPqvpKPPm6KoB3Quwl4NLEW5IePE/yDBJUM1XKO9Xj11i/W6rZOb4fxvLgKB7DFZB2g2/eSPhGVhBDwMM3DQEGy3+5k4Z6TCEHZibKrLUecjG8VI0fD3K+c4guYBMDQpuVKWX54mXVrhPF9JKt8ckTiUCiGA9XfFWCaKsW05wFEem8IN9p4kfkvZNl2wneg0CsPwzICPQJQeMqOsv4yngPrRnWZy5et0fT5HdyU+rGuPdPa3niRlJZK+Jy6q8V0dguK+yB+CBOn3Kfy9EouQ5UwVrmFkVBZpZbzd5bVL1SgJ7SIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xFlc34CKBqrV2QXw2izrt63CorRHL4SRChe4RKE0Dnc=;
 b=Yh3uYlFfCzPzDz1zFvUXJU+tFy8kfPl4vcgCzQqDlIOdJp/4eAH8xEmN8CN8gik0w4A8O8mEvFC1RBUmbDsBf2VDm2Oy0hAg5QAxy37kBuJZN4Ry+Q571U8xccDyP2jNIhiJCg6lTmUbE4OIgCT3mmckoyei0B3gwfOM7Kp8+yB0yuintLWDtxXQt7ftXBBeJMYYJ/vqnhLCIkui20c+BW/+NcZjHMJXYbQqgSC+DpgsY22ajFrL+/tuqNc3gKh5q++cuM9avx6pFef4GkSjih0lNPLdw5+F+WXVxXzIuTzKmP4C6gXMMe66qb0XdrY2X6o/Hn3EZNcV1S9hl/djug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xFlc34CKBqrV2QXw2izrt63CorRHL4SRChe4RKE0Dnc=;
 b=o9CXUQDTnprXy3+5Ro+xW7BHsPp1leypNgXfz8/uy9fZti17kPNEG6BOao0x+1s0/kHBNZ8eww9KRfTsMxc1FYWxAb/9ue34sPwEgBYriS58/BqqRfKpI3Dfhha11Ke8DdJwvHkC9d5CoEeQKFL0kiGMCL74k1hFOxEzxts6V6o=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DB7PR04MB4010.eurprd04.prod.outlook.com (2603:10a6:5:21::30) by
 VI1PR04MB7054.eurprd04.prod.outlook.com (2603:10a6:800:12d::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.21; Fri, 19 May
 2023 06:24:41 +0000
Received: from DB7PR04MB4010.eurprd04.prod.outlook.com
 ([fe80::60f8:95d:fce9:16cc]) by DB7PR04MB4010.eurprd04.prod.outlook.com
 ([fe80::60f8:95d:fce9:16cc%6]) with mapi id 15.20.6411.021; Fri, 19 May 2023
 06:24:41 +0000
From:   haibo.chen@nxp.com
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de
Cc:     kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        devicetree@vger.kernel.org, haibo.chen@nxp.com
Subject: [PATCH v2 1/2] ARM: dts: imx6sll-evk: add eMMC node support
Date:   Fri, 19 May 2023 14:27:30 +0800
Message-Id: <20230519062731.504082-1-haibo.chen@nxp.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI2PR02CA0038.apcprd02.prod.outlook.com
 (2603:1096:4:196::22) To DB7PR04MB4010.eurprd04.prod.outlook.com
 (2603:10a6:5:21::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB7PR04MB4010:EE_|VI1PR04MB7054:EE_
X-MS-Office365-Filtering-Correlation-Id: 63914af4-e7a7-4258-bbe3-08db5831ba8a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GzhGK/AiuYnAdEYH4Vg3AX28hcnL/mA1FIFdhxb7MZ+O75DuGSy7QEB2Na3QHiNkBEUGmSYtcUqcbFlZCVn2qbrgU1PCeR3rvw6mCiFeWofOPE6owSSvWiHeiK5QOMS2+M4D9huWe+o8/Kz4Gyy1n1aBJABTUsI0vAJAKWVahcOl4vMtIwtHZ514v2b4icsxNDFufoluFVtkcEqJQ61GbTWTbCDqr5b+0yh5NIz8GDgXBa2icWNLhnMKwUK1zmhXxGfWQgOVUU0yg8i/l8a7I9KFevNNh5hYu0aFt8GklV2fSeaGqMDYClgqRUfQWcWaEVJ3FMQL0wQ6rQT7zZvRM7chk/o2jlYgTyLTvhnLU292Ige0JGyszp1H3+WUBasxfR5yx4YQVMYQrhMyCFIRVXBwuTHk6QxpeCP6igu3sA6WlKBjBONZt5UyAMhd+zjAtXjz7p0fMxlg3E2kNPxOfl8gVT1qQBQ8BwuoPavOaa5NUfq3DEMbSEr8i3oTdYHtDwxwyP7TyGLcrRsqH4QbjZ9C8qwY0oAGPIOoDHJrZHhNvAtwJc/pirtavLhppI/TiryDxk73GIaiRxpPaKsO80ycbqqXO7DvZaNB+bMbpu3j0PTiTJ3ZHkOI/dKcRl9r0xcMhc2xKLJ1EX9mJJr65Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR04MB4010.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(39860400002)(396003)(376002)(346002)(366004)(136003)(451199021)(66946007)(66556008)(66476007)(478600001)(52116002)(4326008)(316002)(86362001)(36756003)(1076003)(26005)(9686003)(6506007)(6512007)(2616005)(186003)(41300700001)(5660300002)(8676002)(8936002)(2906002)(6486002)(6666004)(38350700002)(38100700002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hBUCzcduE54tws4uCGwPSrIM3CakU4xuT9TVWBYC4zZdbl7kXIGp81CI1eR0?=
 =?us-ascii?Q?b1QP14DmkicYq5zp1Mkg9irQxP9D8tLXMlGXElakMhObC3n3COdln8kDIGv9?=
 =?us-ascii?Q?6dPjKUJUoQoeFakCvX8REF8EQ8kbmfjbSwD/4fBVn6yDdGvFlof9MqeFXEl6?=
 =?us-ascii?Q?1vv8JCHCSt5AJIpDt/B/jijRKNyJKfdBeuaPNTkddbRRusE37z4z9QbJbMHB?=
 =?us-ascii?Q?3k43ZtWdWHWrYEsn9m7EErNS28i52bf7f9eWNCLvgy3Qg4uoWrA/5TFJxk6H?=
 =?us-ascii?Q?kln4uQ7ncS5TCrDQB2YNPj15KR2kdsgACZzYsZA1lwqP7VREf6YpWxYMJran?=
 =?us-ascii?Q?B+zzc6LRaJRfRFsMnm3MkQS598QCKFsajGS7qLAthnIn+W1kW9wOu369VsbM?=
 =?us-ascii?Q?fAetp227HyDrW2I+5GEj6wsD5bmV4dd+HTFBZMuR78mbFbOFWMko/qqDfBEX?=
 =?us-ascii?Q?CMOKFwk59+RsdO6UeCHogDihQ+YYL+uYLSaNCeFX1Ugt1sVO0usKirk+Tapg?=
 =?us-ascii?Q?GkIF+QuKLl0EbF4WN5c9TMg8dBVy6T/Dt55G136wI841l7YWltRAGVie10Zo?=
 =?us-ascii?Q?cG/p3hKT2g8KRuB09mNx/e2Atl/LsihSfyAj3ZggTlQmUzHW+dMc1QOmEvYx?=
 =?us-ascii?Q?oNF3AkBxI7Flcj0rdAob0HU3hNyD0bJv5iMKUPi6QmQ/hHSbSPZLSWUmNoxE?=
 =?us-ascii?Q?FvRF03u99HubIrPrhO0LM11xLzzmsf/lpwu37BVmvoBl/a3c3GNdVK6B6jRL?=
 =?us-ascii?Q?UMZvV09uNLCpCmaaBDEM+iYwT7KPCCr2091FJTBzPdLqMhS+M5ZaDM79tw37?=
 =?us-ascii?Q?Fgl4gTGhAVtO20q/JVi/ILA7nB5i0o67tAr9meU2972DsV7dxSZ9no6nBWtV?=
 =?us-ascii?Q?mPd7FEF/7LXqbeDki4+yvSl9td8kchXf46/hmQFUY2FJPlMbUlpCmaBfPEb4?=
 =?us-ascii?Q?XySjSwBF+oA7Q55RqX3RiLbbpAcWM03aBxhsrUORhwgwhTjeNAcMGnH2cDwA?=
 =?us-ascii?Q?9JUGSfH86uq0T0V4/snQaumuFszFmbLVU7ADtOLHwcXFb6P1sIznWPo6GgkG?=
 =?us-ascii?Q?lSA9IRBilaZLmMQOo2ymBc+L7wSXtI57WH1lPcC8gGmN9rlZBo4H1SD6KF8I?=
 =?us-ascii?Q?Jw7NOVJV3091vPoTt390u8BNfI78azLqDfW7DpxN3samj5tUiUu/S2jbnorL?=
 =?us-ascii?Q?p/Q/QVT2tSd6MvEvEgPkGBWN4KbH2/TFUYrj5sOMLcI0Jb1fEmQL8DQG19p4?=
 =?us-ascii?Q?WE9sXWJVTB8Ysphh8e6W9HdCOIPTfe+p2T/DlKOkklHww5xeNq5sLx6KBSba?=
 =?us-ascii?Q?wqBHugGCuDwYzbIefaShRSFcIhFO4/HgF/mNpI06UGYXZWZ8FZ82R3uFLVZn?=
 =?us-ascii?Q?wXxNVxd5eTtaD751GMbL80lYbrD/3Raj7ZfypZfgjEghSBKHXepebsEQFgNT?=
 =?us-ascii?Q?QpAZ4Lhs4A7V+5k7FoHxs4XKdDLfpcK7610DrOS2o+6Qs9K78CELupCXGZc2?=
 =?us-ascii?Q?K3zBVLlqXQrIx/uZ9Q5OgUSUWNuPDtHAIes3bBfLsHpiLY0zWzhuIfXfzo9o?=
 =?us-ascii?Q?e5cZxBi71dyGn/S/Mj84KpqJVnjPwpEUsucIHpfL?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63914af4-e7a7-4258-bbe3-08db5831ba8a
X-MS-Exchange-CrossTenant-AuthSource: DB7PR04MB4010.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2023 06:24:41.1403
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pIMVLq+YDWprp0uJQuZ0PSjo+b31uCfUw2cdkWl1f4UBSyDBVuCzs3JRDXGg2AXCNreJ452GrnC4tqPlx5b6LQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB7054
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Haibo Chen <haibo.chen@nxp.com>

On imx6sll-evk board, eMMC is connect on the usdhc2.

Signed-off-by: Haibo Chen <haibo.chen@nxp.com>
---
v2:
  use '-' instead of '_' in node name

---
 arch/arm/boot/dts/imx6sll-evk.dts | 67 +++++++++++++++++++++++++++++++
 1 file changed, 67 insertions(+)

diff --git a/arch/arm/boot/dts/imx6sll-evk.dts b/arch/arm/boot/dts/imx6sll-evk.dts
index 269092ac881c..ad219a647d9c 100644
--- a/arch/arm/boot/dts/imx6sll-evk.dts
+++ b/arch/arm/boot/dts/imx6sll-evk.dts
@@ -109,6 +109,14 @@ reg_sd1_vmmc: regulator-sd1-vmmc {
 		enable-active-high;
 	};
 
+	reg_sd2_vmmc: regulator-sd2-vmmc {
+		compatible = "regulator-fixed";
+		regulator-name = "eMMC-VCCQ";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-boot-on;
+	};
+
 	reg_sd3_vmmc: regulator-sd3-vmmc {
 		compatible = "regulator-fixed";
 		pinctrl-names = "default";
@@ -343,6 +351,17 @@ &usdhc1 {
 	status = "okay";
 };
 
+&usdhc2 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc2>;
+	pinctrl-1 = <&pinctrl_usdhc2_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc2_200mhz>;
+	bus-width = <8>;
+	non-removable;
+	vqmmc-supply = <&reg_sd2_vmmc>;
+	status = "okay";
+};
+
 &usbotg1 {
 	vbus-supply = <&reg_usb_otg1_vbus>;
 	pinctrl-names = "default";
@@ -466,6 +485,54 @@ MX6SLL_PAD_SD1_DATA3__SD1_DATA3	0x170f9
 		>;
 	};
 
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <
+			MX6SLL_PAD_SD2_CMD__SD2_CMD		0x17059
+			MX6SLL_PAD_SD2_CLK__SD2_CLK		0x13059
+			MX6SLL_PAD_SD2_DATA0__SD2_DATA0		0x17059
+			MX6SLL_PAD_SD2_DATA1__SD2_DATA1		0x17059
+			MX6SLL_PAD_SD2_DATA2__SD2_DATA2		0x17059
+			MX6SLL_PAD_SD2_DATA3__SD2_DATA3		0x17059
+			MX6SLL_PAD_SD2_DATA4__SD2_DATA4		0x17059
+			MX6SLL_PAD_SD2_DATA5__SD2_DATA5		0x17059
+			MX6SLL_PAD_SD2_DATA6__SD2_DATA6		0x17059
+			MX6SLL_PAD_SD2_DATA7__SD2_DATA7		0x17059
+			MX6SLL_PAD_GPIO4_IO21__SD2_STROBE	0x13059
+		>;
+	};
+
+	pinctrl_usdhc2_100mhz: usdhc2grp-100mhz {
+		fsl,pins = <
+			MX6SLL_PAD_SD2_CMD__SD2_CMD		0x170b9
+			MX6SLL_PAD_SD2_CLK__SD2_CLK		0x130b9
+			MX6SLL_PAD_SD2_DATA0__SD2_DATA0		0x170b9
+			MX6SLL_PAD_SD2_DATA1__SD2_DATA1		0x170b9
+			MX6SLL_PAD_SD2_DATA2__SD2_DATA2		0x170b9
+			MX6SLL_PAD_SD2_DATA3__SD2_DATA3		0x170b9
+			MX6SLL_PAD_SD2_DATA4__SD2_DATA4		0x170b9
+			MX6SLL_PAD_SD2_DATA5__SD2_DATA5		0x170b9
+			MX6SLL_PAD_SD2_DATA6__SD2_DATA6		0x170b9
+			MX6SLL_PAD_SD2_DATA7__SD2_DATA7		0x170b9
+			MX6SLL_PAD_GPIO4_IO21__SD2_STROBE	0x130b9
+		>;
+	};
+
+	pinctrl_usdhc2_200mhz: usdhc2grp-200mhz {
+		fsl,pins = <
+			MX6SLL_PAD_SD2_CMD__SD2_CMD		0x170f9
+			MX6SLL_PAD_SD2_CLK__SD2_CLK		0x130f9
+			MX6SLL_PAD_SD2_DATA0__SD2_DATA0		0x170f9
+			MX6SLL_PAD_SD2_DATA1__SD2_DATA1		0x170f9
+			MX6SLL_PAD_SD2_DATA2__SD2_DATA2		0x170f9
+			MX6SLL_PAD_SD2_DATA3__SD2_DATA3		0x170f9
+			MX6SLL_PAD_SD2_DATA4__SD2_DATA4		0x170f9
+			MX6SLL_PAD_SD2_DATA5__SD2_DATA5		0x170f9
+			MX6SLL_PAD_SD2_DATA6__SD2_DATA6		0x170f9
+			MX6SLL_PAD_SD2_DATA7__SD2_DATA7		0x170f9
+			MX6SLL_PAD_GPIO4_IO21__SD2_STROBE	0x130f9
+		>;
+	};
+
 	pinctrl_usbotg1: usbotg1grp {
 		fsl,pins = <
 			MX6SLL_PAD_EPDC_PWR_COM__USB_OTG1_ID 0x17059
-- 
2.34.1

