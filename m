Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 466DC707C50
	for <lists+devicetree@lfdr.de>; Thu, 18 May 2023 10:44:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229904AbjERIor (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 May 2023 04:44:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37362 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230239AbjERIoq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 May 2023 04:44:46 -0400
Received: from EUR02-DB5-obe.outbound.protection.outlook.com (mail-db5eur02on2055.outbound.protection.outlook.com [40.107.249.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32EBA173C
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 01:44:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PeatG1gFx3+bb4trHMKBLxx/e5lMMa15c/WazpD8o2KNS36HcBuDfOi309rjalHuUlPd4V34qtAu9ELYbLDHUinvJ3u/qkviJ5g+hwVW4tHgpoPJS5XIqMVE1ptIvMJvTj63yBB0cjwZLeMYhMB865nhU07DoYniKzWfV4j5MnAaFEkE41WYC15G4iz7jQrMrwBPGDjxyj63s+qSQbes501+BWyGSARIZka4H6uBizDT4c4VyeObTF9EvNwvnFwVBWV79bgoH7ry04CBNpsNc3tmh4u2ntZJmcpvBmrDIH8IXW06BVoCwRMvMg17A9oNQNgpcZ0nU64ngFvbub+HEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O18iJgAEbg6P98eMdwvA6WCbJtzmx2RIM6CEdf3PACc=;
 b=dC/MICekvbAfvTKTW/MaoQZLO/f4z40nrpG6XPG6v7ghwZdN6kU2zCFy5fAJcdURQBEK21DuOCULFMs1SB9iWLS7vnV2uVIMhNwmOJ/gRw8ONwOeCcMFjRKtO4gs9mQlNS8xKznmt9aNKqJj4jc9slqeznR1q2nA+A4PGpZSxpuSrRSXGgPNKNUg6tLzhFNtBaoGjTPwm2kcNo4J2kZb17pvM+khZvFC7wF19ClaaJ9znuUP6bn16nnvuQ4Mc3gzi+Ux/LdSdk6+t585RnPcNiyzand5vUYts3oH/vVTg83czt3u/y/6BJ1HamWhbLPrsnPrNgmoXl0hn96wamuS7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O18iJgAEbg6P98eMdwvA6WCbJtzmx2RIM6CEdf3PACc=;
 b=el2HuCU0OssMVaS2F3INtQ9wM4uEzeCwZBJzCFT8AiRdaKS9mnb+6Ppl/F/ukUCN4FnyP0IywA9p/9G5sSWpdEXRHDPeV/D5+5+3bGG6Oy5uylRMfGOc1uL3AMJFNVCHnX9Vsp5gdYQ9BbcKWK6kQOTqLci33p9Onuoy1QjYAFE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DB7PR04MB4010.eurprd04.prod.outlook.com (2603:10a6:5:21::30) by
 DB9PR04MB8266.eurprd04.prod.outlook.com (2603:10a6:10:248::10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6411.17; Thu, 18 May 2023 08:44:42 +0000
Received: from DB7PR04MB4010.eurprd04.prod.outlook.com
 ([fe80::60f8:95d:fce9:16cc]) by DB7PR04MB4010.eurprd04.prod.outlook.com
 ([fe80::60f8:95d:fce9:16cc%6]) with mapi id 15.20.6387.033; Thu, 18 May 2023
 08:44:41 +0000
From:   haibo.chen@nxp.com
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de
Cc:     kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        devicetree@vger.kernel.org, haibo.chen@nxp.com
Subject: [PATCH] ARM: dts: imx6sll-evk: add eMMC node support
Date:   Thu, 18 May 2023 16:47:33 +0800
Message-Id: <20230518084733.344162-1-haibo.chen@nxp.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI2PR01CA0045.apcprd01.prod.exchangelabs.com
 (2603:1096:4:193::19) To DB7PR04MB4010.eurprd04.prod.outlook.com
 (2603:10a6:5:21::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB7PR04MB4010:EE_|DB9PR04MB8266:EE_
X-MS-Office365-Filtering-Correlation-Id: fc511dce-73b0-47a8-a836-08db577c1f23
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wu4qLvtjq1ZhO6lWgeItXmljJOU+ZS7+XQpDtQrvUwZdGpmK8o4xW3oQcRcR5f3C1mh6DlQn1XJlIzRXqqEoAfltqHTR9k+HrgPuy6DAcwHY1qfPIMk1+87RUi19vrcATtj7ULq2rcv/ktMzeZwjDDzi3DTLrEd5p/JDPEaarXdrgqYo6DMNsUmu2yqJCl92TpbgRbMNVNNaryg2CRiNPQnoWbYqXv/jMJpVWlmBrrSzu5Wb5Bc0HX/0yAl5fettxzLgDBsOSBkI39XDU6vSocU1v8WaOQJi+dz7Xe/k+9klICOgWecvwNreXBei5Ax+ttTFac1wX+xglrpI8CboLYMwuWHD6V93xH7y9oFUi2c+6X7aBI0ZBKtdHWEr9eSuVd9wNqvSrIw09fMUOR2WOr9MF1XPF076cmAdrEsk7ozD9HxdW1C7HwMK9gvkowJtVasL6tvx+hyKRCGiP77JXeJfSWIZXfjKevYeEUNTWkHy3M7vpmBfWnEgIUfSSORH/k7hNBpoif9hLQGwojQiH1o1PlR8dDP35EfYQDUvKbI9R79nM2gCtZbxkXk7WxgmkQFb3mp2jwc7nDnb8xxBJF+Zsu2nIggR0RcSCOcRZzkDwMqR0X8DLihcRpCfzdOcIWp+OKIg1vsZIwhNeBiM5A==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR04MB4010.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(39860400002)(366004)(376002)(396003)(346002)(136003)(451199021)(86362001)(41300700001)(36756003)(5660300002)(8676002)(38100700002)(316002)(66476007)(4326008)(38350700002)(66556008)(2906002)(66946007)(186003)(6506007)(1076003)(6512007)(9686003)(26005)(8936002)(2616005)(6486002)(6666004)(478600001)(52116002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KNoob7JazCSAktgPCFsxkYiXa80DUE3eQBY/cxD5oj6PyLdN5T7owehMe4Gv?=
 =?us-ascii?Q?8irgQ9u/xiccg0yIQFrlQ8IzV6m3X2UWLotDxOYoenKlsDMSJZ1vUeiy6h6U?=
 =?us-ascii?Q?+Ka+aQZDDsKFTWgR22/h592Tbz36GxdQ71ffX9P40lJ+95pUOdrQ+EV01Z87?=
 =?us-ascii?Q?/N4QljqqJIo0teDZWaXtUV+X+fwte+FO5mJ/KgUFcj6Qahb3DH1cZdQvdb+F?=
 =?us-ascii?Q?/+rvNSVEb86hg0PZLgxjpl+/0qUp1yiArgcwX2cT653hMftCQA36V0zPygSQ?=
 =?us-ascii?Q?+vJxiN0uxGrwbQb5QqVKxqZny+NE1AwDM1S+L3dxOcr3gQ57uwxiqk5k99IT?=
 =?us-ascii?Q?3vcRriXC8z+xn45NT5Skg+iUjtjJYpgF9LPbyZbN0ERtHyKE/3fy098sRQG/?=
 =?us-ascii?Q?bj/UBDHycuSBaC37xLhFWm3gC5AaEHgvSUfn1eoiViwBJXFGLD/cXzdouao9?=
 =?us-ascii?Q?ZEBTBfbZSYP2JzIM9Cq8DQJK4EbkaXBAxAXHdfaLemMPEK4dAr5Um+MEBwiS?=
 =?us-ascii?Q?Uxt7agmeExD4YKg/kl8EHKcUQbL/x4ZINBd5k1fzm6LhiqE+aDitTmq21SyR?=
 =?us-ascii?Q?ctBEse920uixYsDoWUS11jzvL8QuXpaH0oMoykm2rotg5lHIRTj0k1Fg+uO+?=
 =?us-ascii?Q?ntkY1Dj0pegDe/N7FT5pabVit/qx7FXK5Af18KFmooCHi+ePcggPB2rasFr+?=
 =?us-ascii?Q?FYmC2//c7dTfLssd7FFQV9C4ehS+Wdd1TxzmRe945H99ygjnlzyRIfcQ5GCA?=
 =?us-ascii?Q?usJ8RcbgYDUZpBuMgs/NEr9cOZfZOHCuCVLK8UFgeo2DAhIAJl3ZQpYGIJKr?=
 =?us-ascii?Q?zui7rFuaoXRhp4ebq+jdZQZyBhQ20YsrYiiI764wfep8Zsjrjpe2IY1UNw6+?=
 =?us-ascii?Q?w/ABpXuZhD+rQcJ9UHq8uQ/9t0PyotvPu6DuVYsTVYi58jk58jLQHOwAFfal?=
 =?us-ascii?Q?fIEo/qoWfykhO2Z9iOSWK2bNxtnx4v328TnrtpMfvaoJPFbrufBuvQX8w9l4?=
 =?us-ascii?Q?zDmk4H8WuRpv/uX68u4WpqsT+n+2PLuz/rOwYNQXi2iXQCPbwMXiqRqqqKxS?=
 =?us-ascii?Q?k3jRqL2v5YhC9K6MXw+AVEFVmnlfL+d2Xjb/GYpCsTEvx18EP/R9Tws3RFYr?=
 =?us-ascii?Q?bMSat1sCRo6JZD7sREqE42UUmfCDX6ljraQe3rVwyRyPwOb0zRn/AlWOlvkf?=
 =?us-ascii?Q?ra+dXW+UaCnT9TjOAdK72apyU2Mi6SxJwT3Po614gYeuOpAhnWG411YZ85+d?=
 =?us-ascii?Q?L9NfjEQwhPsjREbhYmjs4rZXScbT1xtIpFbW/VO7q3tHhSMpGFuirz2Ts0HZ?=
 =?us-ascii?Q?JmxMkK8YAhK8DL3AAqMMZXMBRAcuaeaySlg2NU8R293Bod81JxsgJC+IZ3rU?=
 =?us-ascii?Q?oD3W0zqaRWgMM6JVlnTMqe7tww7UaLN3WzIVkC/Xlypc3AoHwBEsP0w8/4yB?=
 =?us-ascii?Q?RrvMQiGr3o/FvKk+rrD9U5/ggXTlVlaDf/DXWRdSLwXyLZv1IloAEqnhFaXe?=
 =?us-ascii?Q?glBK7efGBdoV1koGTVpA8SfwffGO6WnYrLKiyGPFB55J83aO3mdQBqddOtGv?=
 =?us-ascii?Q?CXSBt4N871sxHOq4l87LlONTAGYTzhE5af0gbDRE?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc511dce-73b0-47a8-a836-08db577c1f23
X-MS-Exchange-CrossTenant-AuthSource: DB7PR04MB4010.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2023 08:44:41.4766
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EL6trX4m4nW1icKXtt/6mrNZuIIg6gNbZkAjHvR9v43fiMd/Wp2CWMdipiwqp5NCoHrAXYmFyJdpz8XTURNHEQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB8266
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Haibo Chen <haibo.chen@nxp.com>

On imx6sll-evk board, eMMC is connect on the usdhc2.

Signed-off-by: Haibo Chen <haibo.chen@nxp.com>
---
 arch/arm/boot/dts/imx6sll-evk.dts | 67 +++++++++++++++++++++++++++++++
 1 file changed, 67 insertions(+)

diff --git a/arch/arm/boot/dts/imx6sll-evk.dts b/arch/arm/boot/dts/imx6sll-evk.dts
index 269092ac881c..a83c133717b9 100644
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
+	pinctrl_usdhc2_100mhz: usdhc2grp_100mhz {
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
+	pinctrl_usdhc2_200mhz: usdhc2grp_200mhz {
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

