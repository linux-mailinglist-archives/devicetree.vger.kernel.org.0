Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 384EF77B364
	for <lists+devicetree@lfdr.de>; Mon, 14 Aug 2023 10:09:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230418AbjHNIJH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Aug 2023 04:09:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234508AbjHNIIs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Aug 2023 04:08:48 -0400
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2047.outbound.protection.outlook.com [40.107.21.47])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C21BD170D
        for <devicetree@vger.kernel.org>; Mon, 14 Aug 2023 01:08:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ofYvMVCP/Qv4incxQZ+4WcGHO9vkYn/aIeB9GB/KsMMqO11ZqVKkIHAVC9xxA9Z2GFReiZyjfAf9GLfOGbhqUR0Ni5OStVTFK7CNQ1/IZG8EZPJyk7+595R6ARKn0ZFO1DrYHUFA4zHOYlZHoTP6uo4YWIyO5ch2F3663LzDAb8tIJzuLbCVrpCikmX9zzSspk16SIxbIlIn16Wlqi1qvjK7bn5A6+k5XXR0uqfGA17paZgh4K3yZUkmCWmWubKfD+hrh/QI2/mudYDSJdsoRiqmCbkp8hCoyOiu87nMJ/XVt1oUqCiVKh3fD+CirJxkS1eGZOrHJhSHspWOfjkuIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bc2WZOnU+1+XiSgdAj4lOFp8NZ7y/6fbaVIqb9iBGSQ=;
 b=StoB1Yh7qKGIVjzLp2Yh/lsvU/XsaFQj8zLTHYreGmTV8nciTKm3EMsxsCh5FqS39mK+Y3M+HVVUNSVZ0LYMG0KgWtU30zknNGJJtcyzaZjPvW//CMsfEtpPAPAdESp0kQq7WCAtlvLaUl6ilSboxDAfU4x1ZXDIraSH2useo4VGD2RoJtWUJl9D15pattB9Oit4sTFVso8KxFw+aiSBl7/d5BnXUDF08eukdeJumr1nf5ws66mwDXYdloS56vSHVmHoq0B9Lgq5yKhAx0T8SDxLGDEglFY25jlahPfM5XatbNQtBwK+nV6Tzu/t5udn/BHU55pqP+uiRzJJPMlalA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bc2WZOnU+1+XiSgdAj4lOFp8NZ7y/6fbaVIqb9iBGSQ=;
 b=E1qqHOuIxBh9qCm9CZDWSPSW8QN7ftnO2QE8lvnKRFE23Zy0+/GiqJWF96INf6CJgOzUqmEitdB0UC7QRhrHmWkLYPCcEZFSDEpSZW1rBcSWeXSFNjkeYsB06W+1YwxeSMBBNr1RWfd789cteDEbdF1H5fhWPwrWgEPaIZcltqw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by DBBPR04MB7785.eurprd04.prod.outlook.com (2603:10a6:10:1e7::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.24; Mon, 14 Aug
 2023 08:07:45 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::9018:e395:332c:e24b]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::9018:e395:332c:e24b%4]) with mapi id 15.20.6678.022; Mon, 14 Aug 2023
 08:07:45 +0000
From:   Liu Ying <victor.liu@nxp.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com
Subject: [PATCH 2/2] arm64: dts: imx8mm-evk: Fix hdmi@3d node
Date:   Mon, 14 Aug 2023 16:11:48 +0800
Message-Id: <20230814081148.4027053-3-victor.liu@nxp.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20230814081148.4027053-1-victor.liu@nxp.com>
References: <20230814081148.4027053-1-victor.liu@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI2PR04CA0004.apcprd04.prod.outlook.com
 (2603:1096:4:197::22) To AM7PR04MB7046.eurprd04.prod.outlook.com
 (2603:10a6:20b:113::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM7PR04MB7046:EE_|DBBPR04MB7785:EE_
X-MS-Office365-Filtering-Correlation-Id: 38c01b45-469a-4522-321d-08db9c9d8adc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +WPBuThjnxtSgRMQWQmr6JW8RfaqXYkbr7nzNxeRbFg17yJrx9Rp9GUqDEINbbOrYpMBnzJb+ZTSNt2bOqoOQSYrq+RZTo2whjj5PaqMUzER6SA0ujOhBOGh9y8neIiLWcj5NBInX6WHCPa11OMHEBYhItZefC3df/y3fVdzvbOAm96+jFgL0XP6t6xAMPOKWOLTtFFj4qBVBiJDyJWu1Sxfu69mKVcxS1GKCkpmBqUnxAYT+JsIxlKITPi8zv33Wrn3nZwx+YtHIecH/9xrZ5oalw3m/JjwkDZAgkA2M0cW0vE38yCLNMduy0k53ECGZP2+sAlPHDLBz0BI27CrNd8YIgnXfJHBaU69XOyWrd/5mLDfheGJpAuDPxm6YK+3P+7VP2kIrtGzQTlSnDwwpGuy9/kbENQ0k/5UvBParXx1HwWUsAJ/ldgOoxPpLyqy6Jh7fOPUl6n8JpbBZTc2IihB4sWKku5ci93D+8Oom4OuTHenJLtRVH4NlnMGsg3kjyZ6WmizCJ2Zyf4/iAmH/W8dUmLH64h4gBPMnX6hPRlM5XkcFN/BdutJQCIWAALytgZL0M5MmoO6RyhKZorR55qgvXzMyoZrflrBS74mzu/AmBfPwir1LiLF/MbU11C9QLD9nn8B2XA6FsXBVeMUvQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR04MB7046.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(396003)(346002)(39860400002)(366004)(136003)(376002)(186006)(451199021)(1800799006)(26005)(1076003)(6506007)(6512007)(36756003)(86362001)(38100700002)(38350700002)(316002)(2616005)(83380400001)(478600001)(66556008)(66476007)(66946007)(8936002)(5660300002)(41300700001)(8676002)(52116002)(6486002)(2906002)(4326008)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?VkK75H8IHTTyIWKi3uLWS2rxmBd8xP9eFBxe1TjKpm6jUWKDZiNAWS4i9xK0?=
 =?us-ascii?Q?v4iA3FqiRXrT1xWZcAoSsRgXmH3HNGIAzM3myJbHFSFXRnCGG04Jr5saiRS7?=
 =?us-ascii?Q?PbN/OsCbNvuthLHIlvDCLaOlzhxoFHq8asNvqsB61vDcJVrmYn7TOvYmFOv6?=
 =?us-ascii?Q?+VZZb0XtChfNU4GSTJlPF2Y2hmGW0wuc8Q9el+haL0t3NHMXsj9MYE/OwYdn?=
 =?us-ascii?Q?Km1T5a3T36ElwbEWwcmXIvOPMMSvXcwqFWvtazgFu6aj3LLTwrE4w/gi1kd1?=
 =?us-ascii?Q?N94xzW4Fggz9BN+sJ8A6w6q6IqsmJ3wrDeF4yFYAtTumhCCo7LH5m75sH7VB?=
 =?us-ascii?Q?RNp6wcbMhCxp+NKoPPiQ1t+ZAKZA8jwTMsPCHdqt8jEv67PlLybMFYwZjypp?=
 =?us-ascii?Q?bJsHFQr61bgNjTE4Mxa2f7A6P585+d5aZVxp005pSzwhs2PZA4YeX1ZA7AsG?=
 =?us-ascii?Q?XwRsfytnwp8v/COVkNpGqduF31kQMOJC9JUCAB4Bh7AKeytbEb9QYZn1ySgy?=
 =?us-ascii?Q?DubnocNQoylRj+AM9VClxq0r/tFX+bibRBdbGflIyjbQdfHacUUPnEQtrNcR?=
 =?us-ascii?Q?/GTu3g9rzdh4QVhA6QCJ/r2Lo4CfieZF4huRqNeQB/1Yq2R64QrL9tclyTZb?=
 =?us-ascii?Q?J7xRTe+srrgzZ+8zvBY4MMw1HnzOVDm943ALwRptP5ZRHDKJNnofNBSJS6WF?=
 =?us-ascii?Q?zr6pRTy0mAsecSq+9zhAES8Q1uRyc81LVP9C8qeT729Ss2B7Fs9xn8aUrXWr?=
 =?us-ascii?Q?/fda1WyiOPGl9MCsIMTN2koODglg+ff21/CF7E5cWU8a6JWCmjiw46aWt7o+?=
 =?us-ascii?Q?G9nP69PHPSKDkQXqmwEzndg+JcVAOOXkJoAMJhhux4fmYHOX2zWwbQ/81J0B?=
 =?us-ascii?Q?WurNvEJo+I+oKvE8yGk6y00tn2YiskMvu1TAzdZ6WAgDcwxGfhay8+WlihEa?=
 =?us-ascii?Q?51PHcfi+pGOCPx+3Jcp3DuruKt1F3jF8ladt2kqjLyozg7PuTyvAqee4Fzw9?=
 =?us-ascii?Q?MGD0V0RC7ZnTT7sne2I+arMwYoJdrxkcs6Caj79yIrkTKBqXSU3xfmHrQUTN?=
 =?us-ascii?Q?xpHcxVtGiDjI05+pJmNC8jidVksDOjhScrmUH4f1IFEpaEEFfLF/iBXm7CPB?=
 =?us-ascii?Q?MYbZ6L4ZXNJfGRHLQ/usFCd4uyoNezxtGKPZgl2vkmQusSGbImN1ytYHkmCq?=
 =?us-ascii?Q?gFi0kX8nYLtJH2Wq+oe6Uqxf2CdyaHKlleJTwByR7G3s3UvS65LPU55a6qZJ?=
 =?us-ascii?Q?HLs5fup/XSTJd5mE42w8a5Agcx72G7PhqCXlz/yedWpo8PB/rYdaNpC/nqX+?=
 =?us-ascii?Q?FUwkizA63wcfWyyHCHbpiJ+pmfDEQP2p0hu596kVqR1d8xSrcN7YJaEtbDC1?=
 =?us-ascii?Q?56KM5ZxzvHsSp08Z5+jiK39CTu3oK4867RZqZOEt/9C0fhUpSt7KEIwS8eMh?=
 =?us-ascii?Q?mGnWCA3LUll4Z4Etj4rhHzOSPFPF2CiIAf4pHz0dQyJqRl9nrOAUluKMAlgl?=
 =?us-ascii?Q?zzLbuB73SxhOC572h8UNM5i36o7VWyo1KVLi/98NH/LOneJZ04CPwVBSQoII?=
 =?us-ascii?Q?utR23CJ86O5kjyuIXcQNHBhktCq68490fmSKTTTA?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 38c01b45-469a-4522-321d-08db9c9d8adc
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Aug 2023 08:07:45.8385
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8859mb8pO9GGJo+CQDVwQNk47DjBfTPeBYqiIkluYiE5U2yoqOX4+AYdezHwJmrQv1gvZsSNDFidp0oN6TVbJQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7785
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The hdmi@3d node's compatible string is "adi,adv7535" instead of
"adi,adv7533" or "adi,adv751*".

Fix the hdmi@3d node by means of:
* Use default register addresses for "cec", "edid" and "packet", because
  there is no need to use a non-default address map.
* Add missing interrupt related properties.
* Drop "adi,input-*" properties which are only valid for adv751*.
* Add "*-supply" properties, since most are required.
* Fix label names - s/adv7533/adv7535/.

Fixes: a27335b3f1e0 ("arm64: dts: imx8mm-evk: Add HDMI support")
Signed-off-by: Liu Ying <victor.liu@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi | 25 ++++++++++---------
 1 file changed, 13 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
index 7cd1cedfa9e9..6752c3027436 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
@@ -26,7 +26,7 @@ hdmi-connector {
 
 		port {
 			hdmi_connector_in: endpoint {
-				remote-endpoint = <&adv7533_out>;
+				remote-endpoint = <&adv7535_out>;
 			};
 		};
 	};
@@ -324,15 +324,16 @@ &i2c2 {
 
 	hdmi@3d {
 		compatible = "adi,adv7535";
-		reg = <0x3d>, <0x3c>, <0x3e>, <0x3f>;
-		reg-names = "main", "cec", "edid", "packet";
+		reg = <0x3d>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <9 IRQ_TYPE_EDGE_FALLING>;
 		adi,dsi-lanes = <4>;
-
-		adi,input-depth = <8>;
-		adi,input-colorspace = "rgb";
-		adi,input-clock = "1x";
-		adi,input-style = <1>;
-		adi,input-justification = "evenly";
+		avdd-supply = <&buck5_reg>;
+		dvdd-supply = <&buck5_reg>;
+		pvdd-supply = <&buck5_reg>;
+		a2vdd-supply = <&buck5_reg>;
+		v3p3-supply = <&reg_vddext_3v3>;
+		v1p2-supply = <&buck5_reg>;
 
 		ports {
 			#address-cells = <1>;
@@ -341,7 +342,7 @@ ports {
 			port@0 {
 				reg = <0>;
 
-				adv7533_in: endpoint {
+				adv7535_in: endpoint {
 					remote-endpoint = <&dsi_out>;
 				};
 			};
@@ -349,7 +350,7 @@ adv7533_in: endpoint {
 			port@1 {
 				reg = <1>;
 
-				adv7533_out: endpoint {
+				adv7535_out: endpoint {
 					remote-endpoint = <&hdmi_connector_in>;
 				};
 			};
@@ -415,7 +416,7 @@ port@1 {
 			reg = <1>;
 
 			dsi_out: endpoint {
-				remote-endpoint = <&adv7533_in>;
+				remote-endpoint = <&adv7535_in>;
 				data-lanes = <1 2 3 4>;
 			};
 		};
-- 
2.37.1

