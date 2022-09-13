Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B9BA85B6C5F
	for <lists+devicetree@lfdr.de>; Tue, 13 Sep 2022 13:29:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231516AbiIML3D (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Sep 2022 07:29:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230520AbiIML3C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Sep 2022 07:29:02 -0400
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (mail-eopbgr70051.outbound.protection.outlook.com [40.107.7.51])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52CBB5B07C
        for <devicetree@vger.kernel.org>; Tue, 13 Sep 2022 04:29:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QsLWCF7vskPD4fHBIIp66ye6xdNH41Lejkpj3lVKur3kyXDSocvc5aW4DUdM8XGhs9Acr/S7M4eHdslQ/5fvODatmbeWWO0j3A7YBvOuOgiNE1lQ6VKlwlBHa1MPKO5T2rQsRgXMKTV9/tuH1motFvEOst0vY/lWeWC8Lhx3JLCTic5lrKDVth7VPj7rFiMuhTp0ks1fU+LLKF5YcXlGkOs4SeKqct9zfA/Z7XnQA5KeNYxr20Q7NkiHVC/RL7vhNFbXwebigNsPjHqK44Y94tSvKbWPM8nMdPt7PmlUDCa8Vti56Toen2a5JpChM/ebK9quctDLu/leg9jfpeLFJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/0Sa0FXlF3FBJbSTPpztz1EU/ToOKoZ9c7r9EvhkF5w=;
 b=BW9V/gUEvjY+BQ9Ipdh6KV4G7oYpxbmg9I3QnseQwHhAYNtdoaHSp7fCg/CvWBi4J7hvroFWPeYA03/1uKAM7aQrBvNeusFz/tFGUW43E2oPSJldkzozsVQvclclFLQL2TYyznnO0hxaSXzubLykKhfidB6i6KLNNngv3gqMCROjUfjDOl1Ud6qNEkU4e5tjZSL4YctkDVtK8YN2d4F879lhjyDFi1oS7XWJzhTMnjHKHxypvp8PnZJfJvUr7fHDBvqNgnw5F4e2afVjyVCdlM5iscK2+4ZI1EuvxIXI1/lm6VtRoMT2P9voXhHJP0pBWkl7HznAbR0ZIkcPzS3luQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/0Sa0FXlF3FBJbSTPpztz1EU/ToOKoZ9c7r9EvhkF5w=;
 b=emZbtDlF9NZ1DmxNFfBhJKKsRyaqNbPpBX79h46oXX3N/Srm9/2GXp3z2HjbJW8O7IhNmhr/m4ehMA7l992vLGWzGgCrBKrPtP92CxlKPuYZrq3UZfkZG2JDrHFFKuStBUwsIoFaXUsNymxGRDgLxfswyc8xrJbu8XisTPgKbdo=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PA4PR04MB9640.eurprd04.prod.outlook.com (2603:10a6:102:261::21)
 by DBAPR04MB7477.eurprd04.prod.outlook.com (2603:10a6:10:1a9::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.22; Tue, 13 Sep
 2022 11:28:58 +0000
Received: from PA4PR04MB9640.eurprd04.prod.outlook.com
 ([fe80::6032:6224:d89e:3655]) by PA4PR04MB9640.eurprd04.prod.outlook.com
 ([fe80::6032:6224:d89e:3655%7]) with mapi id 15.20.5612.022; Tue, 13 Sep 2022
 11:28:58 +0000
From:   Li Jun <jun.li@nxp.com>
To:     shawnguo@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com
Cc:     linux-imx@nxp.com, laurent.pinchart@ideasonboard.com,
        l.stach@pengutronix.de, marex@denx.de, peng.fan@nxp.com,
        paul.elder@ideasonboard.com, jun.li@nxp.com,
        Markus.Niebel@ew.tq-group.com, aford173@gmail.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] arm64: dts: imx8mp: correct usb clocks
Date:   Tue, 13 Sep 2022 19:10:26 +0800
Message-Id: <1663067426-29534-1-git-send-email-jun.li@nxp.com>
X-Mailer: git-send-email 2.7.4
Content-Type: text/plain
X-ClientProxiedBy: SI2PR01CA0013.apcprd01.prod.exchangelabs.com
 (2603:1096:4:191::9) To PA4PR04MB9640.eurprd04.prod.outlook.com
 (2603:10a6:102:261::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR04MB9640:EE_|DBAPR04MB7477:EE_
X-MS-Office365-Filtering-Correlation-Id: fdef17b0-91fe-4869-00cc-08da957b2664
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TvpCVImkTYQ7QD3FoM3QCm4h0J0mPsi0s7f/5xMEy9ZLR6tgWyXmbESHBKgAXUWoUVqxnWo8edB1BvKCnPJSd1/99cg8efi9CR8rL849FqroQd2GSFJ3iPn/mPY3ssIfFY8awLad75I15VHycHE+IvoUbWpe9FcxW9O/Tmcm2IGeXow5wg2POxWBDU0iPLm/KDZx+0SaVS5g2+joTy2TpYc51HufRfdxbm4JC0F7JkmZdltgtOKWHp8yWKnLEj3sY1eC+7yIvMbnR/Yf3oUFewqBRMo3YSsQRj+EsdozUOPYlyVd5vPF8xhpHArIKoXWeoEeZwZqrbjrXPayECXy0pPIk9JRXRWH9FF20io20vV8CpUfLFYxaRAeJZZPfVw/W+wB3q7RKmjYKVcm9DKJdbTGh5b1zaSICy54BSoJW+xD+eenTXSKlc4MJ/lXLzabKGNeFXFaseMCtCdyUUCSzwPopze2z8RP9p6lWFwrdGV1if9KcpUlzwaAubgq6vjwlUXFIRDBqHEgLUaqUyfwyHxRre9Z5Erk/WhmIeY2s1oqHyt6QdcHC50IiQCiaEemUlkkO04rt81IjkowpC0aChH0ou45JcruTUCOmYFt1DqzerL6+sJwi5qSVpAGXn0xs6RGuLhhEubq+wBynUQOkzJAxxbjlCJ953KLr7MGo0W9W/WrE/yf+wsD40sjBtRNqKx1qswZ9Tf9aoVLYrZnqo6x6dcrGHctN1cS+o7DOMONSJ1WKljNZxJu9sqVyFLIpbTmkZJG6z0SjIIHjxcCoFJnSlep5/SKY2lAAAmG5mw=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9640.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(39860400002)(396003)(376002)(366004)(136003)(451199015)(316002)(38100700002)(66476007)(41300700001)(6486002)(8676002)(6666004)(66556008)(2616005)(38350700002)(86362001)(6512007)(36756003)(6506007)(8936002)(7416002)(4326008)(2906002)(66946007)(83380400001)(478600001)(5660300002)(186003)(52116002)(26005)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?vhZ51kvj3uG+SElVGmaMqbIDz+naopUoUXCuCLrffjdjdTuk0DiVpa1Qpko6?=
 =?us-ascii?Q?DSL40tomnm+tzD5fcu/u+5YD8PM4B2opdCpSGUsL/0TR0SSF1XoPnlT6jKPc?=
 =?us-ascii?Q?NJPtce3o17H07EN9RxAyoyr+JSm5+5G3l2wjTn0JRRArWO+p/wyhEd346Scf?=
 =?us-ascii?Q?5RolsjYkIPh2wh/nk2sJ0RF2N1wp+0bN2uDcd4DWkEZow35AYGLnSEZLkbGY?=
 =?us-ascii?Q?lFEE7DCyHbXBqkDGflM/IQ4nsW0UeYx2hVQf21pDAUCHvjSh2SlBhzD0XAGY?=
 =?us-ascii?Q?TAsbZ3h2XKjf/DqY/BK6Kpa7mJC78a61txwFh/jbAJGyf2QVjJ0VruTi1H0e?=
 =?us-ascii?Q?TwJ6CPVWwIVTJgNAc7LCVAbkKGQf662TiMer4hbbFYC8hjBpdmWuJ4OFsusa?=
 =?us-ascii?Q?lGRTiW0OGP9ZVTLYmbR5qBAgyU6oLuGc9WyFD8tFQPQhaS7lfu6IRPOfGI6Q?=
 =?us-ascii?Q?BXSWb04xAPi6tsGaiPOmC9WcVUCf+hJorrEIY/9AL47nIyb7D+46C4LeoDEn?=
 =?us-ascii?Q?snwTeaeF8J7+vE6PDKIzcnT55t37Zmhflms3ihwgqpkQYhoq9wDBVg5XB/Z+?=
 =?us-ascii?Q?kguELgAo7HK9PRP7T6UkHWSxtfSbVgpuvMoAPwoZkD4bzNTOxPd7heKIEeQT?=
 =?us-ascii?Q?7LPEWeFBY5XMrBcBJKXODgCQ20KQpwD/2lPIVrp3HluvvAw/GmB9HTbGDwbZ?=
 =?us-ascii?Q?+sScxFia+lAIqLpYjrUV4metQcGAGPetX2tsi7E8pZMyZMecTNvTOIlm/Dnw?=
 =?us-ascii?Q?5YQVOublkVzI7iFfEfTzmSV2Yrl+zQr4TSd9qTmbBrRVdqbISaJfhGCBVUUz?=
 =?us-ascii?Q?xxGqkOvuHemgvMT2XXDinywrVkm8jJ0SpV5wcN0ohjoe0qEmXnwtfVIOtsKI?=
 =?us-ascii?Q?pvWCcwgQl2LaASL6P6SuRmvYnMeVroSTproXCiKicC/YmRZUuVyIuiAPJ+qn?=
 =?us-ascii?Q?PqZh2pbCF8s3ojVOpIG5nAo2xr70SLNb24QQHmqpuWxCRuPQwrMEUaVbRl7l?=
 =?us-ascii?Q?655sj7651UvQu8OV4U5wpYVFX69tNGcbJ0Q0qRcx7bMGij8YOAom73b3fBWz?=
 =?us-ascii?Q?ej7a3c8ggx9gyJJkr0mlnoabF9wqEULVn3c8l4BgvyHpBcP4B0/yr8lwasZm?=
 =?us-ascii?Q?LHAo0+Pip+qNSXUrI/bKs6IZBov6b/d6MP7p+RFhXZj2H7hy+aXIXb4GWKyf?=
 =?us-ascii?Q?xEwc/YOX+94+r3R5gRzllQXTeGhV71/mLjtJ/oWP9E/1xFXpKNnecH0rjngy?=
 =?us-ascii?Q?0YK/d+5jv4lIBdTMpSDbGX8eP88vJHj1uJEOIM41/dqfRD0BVG8Er0/LP/7i?=
 =?us-ascii?Q?j/MX2CxJhcJdOsQU7XATKPPhsLLsCzA4mU51ZBNR8ApMqYTnohdUZiXsQNQN?=
 =?us-ascii?Q?+29E6tBpsPVcRVaCLNy+8c2Rj6Vn0TPKWxNF2AKWHQ2zM4E/9DIx4TZ1F/FU?=
 =?us-ascii?Q?zUl4f31Pu3CddggvSS46Z6XCmiqxayy/oUDyYM4qVrUC/FEpXkeuPWVo/qap?=
 =?us-ascii?Q?DUW4XSY42IXVGcvbIFcF54OeFmaYiyV3RF9nV+h1xFXF/2gOYeSwUMLPAD6W?=
 =?us-ascii?Q?Vr0oa6tj2XLxWpSp64c=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fdef17b0-91fe-4869-00cc-08da957b2664
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9640.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2022 11:28:58.5512
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8pMCjmz3Tj8+c2+1s7SsE+b1/tb2ufit0JK0Ah52dh3XMHNkPF14YEt5dEH1Uaef
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR04MB7477
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

After commit cf7f3f4fa9e5 ("clk: imx8mp: fix usb_root_clk parent"),
usb_root_clk is no longer for suspend clock so update dts accordingly
to use right bus clock and suspend clock.

Cc: stable@vger.kernel.org # v5.19+
Signed-off-by: Li Jun <jun.li@nxp.com>
---
change for v2:
- Add stable tag to apply v5.19+

 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index fe178b7d063c..2f18778a057f 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -1169,7 +1169,7 @@ usb3_0: usb@32f10100 {
 			reg = <0x32f10100 0x8>,
 			      <0x381f0000 0x20>;
 			clocks = <&clk IMX8MP_CLK_HSIO_ROOT>,
-				 <&clk IMX8MP_CLK_USB_ROOT>;
+				 <&clk IMX8MP_CLK_USB_SUSP>;
 			clock-names = "hsio", "suspend";
 			interrupts = <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
 			power-domains = <&hsio_blk_ctrl IMX8MP_HSIOBLK_PD_USB>;
@@ -1182,9 +1182,9 @@ usb3_0: usb@32f10100 {
 			usb_dwc3_0: usb@38100000 {
 				compatible = "snps,dwc3";
 				reg = <0x38100000 0x10000>;
-				clocks = <&clk IMX8MP_CLK_HSIO_AXI>,
+				clocks = <&clk IMX8MP_CLK_USB_ROOT>,
 					 <&clk IMX8MP_CLK_USB_CORE_REF>,
-					 <&clk IMX8MP_CLK_USB_ROOT>;
+					 <&clk IMX8MP_CLK_USB_SUSP>;
 				clock-names = "bus_early", "ref", "suspend";
 				interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
 				phys = <&usb3_phy0>, <&usb3_phy0>;
@@ -1211,7 +1211,7 @@ usb3_1: usb@32f10108 {
 			reg = <0x32f10108 0x8>,
 			      <0x382f0000 0x20>;
 			clocks = <&clk IMX8MP_CLK_HSIO_ROOT>,
-				 <&clk IMX8MP_CLK_USB_ROOT>;
+				 <&clk IMX8MP_CLK_USB_SUSP>;
 			clock-names = "hsio", "suspend";
 			interrupts = <GIC_SPI 149 IRQ_TYPE_LEVEL_HIGH>;
 			power-domains = <&hsio_blk_ctrl IMX8MP_HSIOBLK_PD_USB>;
@@ -1224,9 +1224,9 @@ usb3_1: usb@32f10108 {
 			usb_dwc3_1: usb@38200000 {
 				compatible = "snps,dwc3";
 				reg = <0x38200000 0x10000>;
-				clocks = <&clk IMX8MP_CLK_HSIO_AXI>,
+				clocks = <&clk IMX8MP_CLK_USB_ROOT>,
 					 <&clk IMX8MP_CLK_USB_CORE_REF>,
-					 <&clk IMX8MP_CLK_USB_ROOT>;
+					 <&clk IMX8MP_CLK_USB_SUSP>;
 				clock-names = "bus_early", "ref", "suspend";
 				interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
 				phys = <&usb3_phy1>, <&usb3_phy1>;
-- 
2.34.1

