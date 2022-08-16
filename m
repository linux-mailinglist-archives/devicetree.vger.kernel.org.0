Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3D262595600
	for <lists+devicetree@lfdr.de>; Tue, 16 Aug 2022 11:15:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230113AbiHPJPw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Aug 2022 05:15:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232473AbiHPJPH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Aug 2022 05:15:07 -0400
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (mail-eopbgr70083.outbound.protection.outlook.com [40.107.7.83])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D507B1D0
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 00:30:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fnzGp+SkT7bi9B8btfRNPpYITlmuiA7H9N5mfDXqWLkAgDtESAQEosiAWF5G/yIfq5mgHngr4HTCbHvqdDy2sD3vrQdH+GDwKaOIk6qpQp0TzCM5yxfPWagFBoMaGv7SyHTo4Foopqs1sduEFsLCcvMes8KMEQ8LiTqagrLGKqLPe1y3g9nyQ7tH2QVAXAzbza7MQ9IQ/KN8TOMBbaCjubUya0pU99BDugGEUb4BhuS55j3FWqFolCAw2CvzG5J927EoF2PdKMWiSg9UO0vJOomRe1fIDg/i5k+0QjWD74Vp54DOE18Puq3lJnIZXl0oJU/21c4DplgU309QDAI9sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e5YUKTfBnLF9EcHDAVbT65cPakSwVWipeCEUfp80aI8=;
 b=WXDDuaWsO5Rt7Tu81meMCgkZEsnINL3mLq+RU3dSKaoPI+i3JCrJ8ZeOBhkG28BePPgCBur5W5X19ruwl68qqCAQE3Knqawf6WRKxUYGmQ3XA8IEio9g4fMja6ovB42SYRhfJc/LbslZ8hKAYcpS+3a5KrSZn9/JfdavgMnCuSqT6Q6uv8MvJMafgQw/yK1wC3Yf9b0uGBeLon/Qe2uRSal7XX6qKjTolG40cALxm5MLZLhu9JSa9JhMNEMGXAcixboeHXT+0LjD7kMfKlsFphi/lt60tAwZt9PoD2ywu8sh8Psfd9kKuIGQTk8GN4klHwvAGM+wK8BJUzsv+GlObw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e5YUKTfBnLF9EcHDAVbT65cPakSwVWipeCEUfp80aI8=;
 b=IH9Nnr5gD4ySe+r2Btu9x7Z5NN1sfk7svPQanxazK/qDI/oI7l4DP66cQjwJwJzbchV+DUjIXhC5WE5RLvW4Zwzdl6LqJOlO8lr4dTNdZqSLOxNriJNg2404tRBTbJdS5XzziIPFb01HkECym+7fvJgA8T3PpXjb2Op+Y+Axqkk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DB9PR04MB8412.eurprd04.prod.outlook.com (2603:10a6:10:24d::9)
 by DU2PR04MB9523.eurprd04.prod.outlook.com (2603:10a6:10:2f6::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.10; Tue, 16 Aug
 2022 07:30:44 +0000
Received: from DB9PR04MB8412.eurprd04.prod.outlook.com
 ([fe80::38fa:c0c7:75b2:39fb]) by DB9PR04MB8412.eurprd04.prod.outlook.com
 ([fe80::38fa:c0c7:75b2:39fb%9]) with mapi id 15.20.5504.028; Tue, 16 Aug 2022
 07:30:44 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     shawnguo@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     tharvey@gateworks.com, marcel.ziswiler@toradex.com,
        philippe.schenker@toradex.com, linux-imx@nxp.com,
        devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: imx8mp: Update pin function file according to Rev.D RM
Date:   Tue, 16 Aug 2022 15:32:22 +0800
Message-Id: <20220816073222.1269380-1-ping.bai@nxp.com>
X-Mailer: git-send-email 2.37.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SGXP274CA0022.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b8::34)
 To DB9PR04MB8412.eurprd04.prod.outlook.com (2603:10a6:10:24d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e3938887-a0df-43c6-aa10-08da7f593a8f
X-MS-TrafficTypeDiagnostic: DU2PR04MB9523:EE_
X-LD-Processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: i5J2P1S6XuAbSOWDndqMIVa+DzlnwZCteg3Al4wSrPjSKnl8F2LvH85EtmXKBUT03EThkeV3LqVrXYlkg37cU709i2l7+0kxIgn58780OA6iz55jncaYLNhUyiYyfvg4gdwfufAeJrC9ymqsvCi/7OcD5VOH1wrwqIsxtyZzCfbrHTErqsQX00RHtxOFNA3YKFQxVL+nd4L0f5K1i3O68oXIep4DYqW8DXQxio+gYZj0roYxsySXtGVKFmA+ElFyonGMGqNKRBpUvMcpbM8V+KpWM8hnIM7CIz+iVbZ4ugGsHh/g/5Z7jJjqZgjWZKkLok2e0caa1zo7m5an2/xD/e3rfSUs8yRED4aktcn4qg18uxO4YUgt6urtV9DGSyzO+QSm5hARMQisfVjpf8We2eGPgTTpj52F5+IDner18b65bFVFDCQWALP9oso0w0pCJSO7II91Aau4X4iqivmwiPCbpjNZ3jBjpv2EDFXgeKP1HRSLcktOMsCCx1XRpBmLRzmlzZl9ZpwFoVuhpSoXjhbtBMu9TJFEQ65IoaFzBoZltF7+Bj2oOyoncpdyD6L0X/et0lzmBBwXxIc8xMsWVHtEnOOE31V5gfRPdis7rnzsKv1OepU2ijRbGQqiyiIyigtUFtXbH6K/+pPLD/5/d8TMl2BGNHptOj7WAdIXAKO0xrXVCEWuEVp8J5sQ3GPyDcOpzOe+RAVcKTSieJ5/dpnyzPQkJjJljaDJCaonAhQYzH3yaS40IYHaEKtN4yo3KPkqaPEp7ybuR2RhW8PkdJ/Ad2sUDW2MRvSAQ0zmmXiXRVnIbuBFvNfFv5k8QdeS586mgnOLtd5o09zEmw5JWT3GMD7TosSQSwoL26tw5LNRNattLP88gYNbRdn1sW5l
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9PR04MB8412.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(136003)(396003)(346002)(376002)(39860400002)(366004)(66556008)(186003)(36756003)(1076003)(2616005)(2906002)(5660300002)(8936002)(52116002)(6666004)(4326008)(8676002)(26005)(6512007)(66946007)(15650500001)(38100700002)(38350700002)(86362001)(83380400001)(316002)(6506007)(41300700001)(66476007)(6486002)(478600001)(32563001)(473944003)(414714003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?OwFLUwJlLswrHVPVMmJZZYftTo9b6aXhGgqKZEP0QkuDc5u+iNwHq+iUZ9GA?=
 =?us-ascii?Q?Rgq609iE95Td3evKVQITF/k6gxMWvQsFX2jMv5ja+JSHaDmfBHlJGGDd0WsC?=
 =?us-ascii?Q?yVtmjhoRqQgTQKwOp4mlMeduwg9nIRR+lLmZvnGj/DWWRGQ0za+muKuzwnjU?=
 =?us-ascii?Q?s7QNzHLygcmUHntSMf9Mhp1LhPdJ6pDVU9KGzUZHhS9XApEQl1DN3xOZljLa?=
 =?us-ascii?Q?/4+dW53oYqIJJazCuSNDzXSOxXUTYf2aPWQW6yqIRc97Qj3Z3jnG2yn6aaHU?=
 =?us-ascii?Q?WjswvFUScQGWObGGYv1GH533+oJGRLOg828/jqP9XlqqJSAoauoIiA0mV40S?=
 =?us-ascii?Q?O0WJ55RKiKtzCa7LCIPY56gV7ThbonpvTOobgC6FgpFRllGJogCcklEAwnRy?=
 =?us-ascii?Q?3qZJEearPhoBPwvU8R127AN21ebp+rUJx2gPb+sYTDKgUNMujtdnsp0eE+xl?=
 =?us-ascii?Q?6JGOPBB1+tH3xicEpRNKdp8fVaNQ8IgXf1amKJVh/zuxN9TnUkTy3r3nHhPy?=
 =?us-ascii?Q?IIJmtiDHAEJ2ajzoV0W6TzhBda5tYSZF4xknp1qm9Qa6UgvOpOfgwq/5cvkP?=
 =?us-ascii?Q?bE2C6zB7byb2qYmsrHiSxcAgpT4WTpn1eH2+G+lbu5YPr/SZWNDHkSRmy4nD?=
 =?us-ascii?Q?3c/hpgHHOSmVZl5gZbFOAFboEIKoTRU/euy5Ankf2YN52OZmApCuj59D0Z4E?=
 =?us-ascii?Q?HxWemwLdGqB1RKfKsmifmi93aQMqPybBFIQi4viNWvZz5lwXOxikMnACdf3C?=
 =?us-ascii?Q?ehZRuLaZ+eUqbhuE3rJRya8N4fXyBsPqo6diYLblfWyv6DYYFWIUFSaC2hbx?=
 =?us-ascii?Q?Ov5vHhPuphxJBDuPcXgpwx1kk1Xxa/Flr4UBhtDqhCNy1MNYwPoFpAhKy/v7?=
 =?us-ascii?Q?2xwO8Er6XaRIsxVhBBBcqlzi3KCBkNixgLiMdegPS8Nw2szWL8ofsujo9pzl?=
 =?us-ascii?Q?YbtjEs9cBxsYvg3zsstIRIDi4hFIGEyV1BmycuZQXfoFoEzPEejollj0TkvG?=
 =?us-ascii?Q?bY6riej1kSNZSruIKtD3XNvKxpoJF5Jic1m6xklADy2jEAO5Wujkm2FRHzc9?=
 =?us-ascii?Q?SDm0SMVLjarmk1teeukiwvhudH37emFoJep612mDgakpdkxDMC5naJUj1L6G?=
 =?us-ascii?Q?gwsJk0daXnmS6wK1sMdDB4DcimTXXXKldtTumO581tshVMbZeKsTpTnlaovJ?=
 =?us-ascii?Q?VbXWBAzsaunTk1y0Smb13U7unlI06tcxtBLi7+TMJ9866zuTK20M3XlSpYZq?=
 =?us-ascii?Q?A7xXXgSwrNnannUAyHUM5LOjbyfwq1QJ1R8rE0xg8bNfFFku0gPg32MIXx29?=
 =?us-ascii?Q?2ZNT1b5tE1L6Xak5qxiN+oJqxVfLWCDLmquDBeTkeR1KnQqosjh4PAEqREfy?=
 =?us-ascii?Q?SXjC/h2EptSXTFS15LqeZSY01W9RIVvZdKyZYp1PFcSWcstLxBMioh1ldZMo?=
 =?us-ascii?Q?93uTHj4LdmJqGehlBfYlueFP7OWKI9+8zGEhOhRw1HJRBjgcd94zQ+2BPFOu?=
 =?us-ascii?Q?zA+csBY/fHqdyG5+QHCYC/Zv01vXQi7EOwYuBAldloUkQMuXx3hUmvDNBfGS?=
 =?us-ascii?Q?YB1M7OdEa1rD+Q84JiSudyHgq+bmJOzv0ta7wev7?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e3938887-a0df-43c6-aa10-08da7f593a8f
X-MS-Exchange-CrossTenant-AuthSource: DB9PR04MB8412.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2022 07:30:44.0146
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xgMFndy87d9SvZzBC4Bf4q75EeGrBW5GUG352syLOnO/b0x5vFPgjefuv5piNabhSZfvNNpKAld6vvI6B4AXJQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB9523
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Update i.MX8MP imx8mp-pinfunc.h file according latest reference
manual Rev.D. As some of the pins' name are changed, update the
dts at the same time.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
---
 .../boot/dts/freescale/imx8mp-dhcom-som.dtsi     |  6 +++---
 arch/arm64/boot/dts/freescale/imx8mp-evk.dts     |  2 +-
 arch/arm64/boot/dts/freescale/imx8mp-pinfunc.h   | 16 ++++++++--------
 .../boot/dts/freescale/imx8mp-venice-gw74xx.dts  |  4 ++--
 arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi |  4 ++--
 5 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
index a616eb378002..dd896b6ddfe5 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
@@ -867,14 +867,14 @@ MX8MP_IOMUXC_UART4_TXD__UART4_DCE_TX		0x49
 
 	pinctrl_usb0_vbus: dhcom-usb0-grp {
 		fsl,pins = <
-			MX8MP_IOMUXC_GPIO1_IO10__USB1_OTG_ID		0x0
+			MX8MP_IOMUXC_GPIO1_IO10__USB1_ID		0x0
 		>;
 	};
 
 	pinctrl_usb1_vbus: dhcom-usb1-grp {
 		fsl,pins = <
-			MX8MP_IOMUXC_GPIO1_IO14__USB2_OTG_PWR		0x6
-			MX8MP_IOMUXC_GPIO1_IO15__USB2_OTG_OC		0x80
+			MX8MP_IOMUXC_GPIO1_IO14__USB2_PWR		0x6
+			MX8MP_IOMUXC_GPIO1_IO15__USB2_OC		0x80
 		>;
 	};
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-evk.dts b/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
index f6b017ab5f53..bdeccda5ddae 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
@@ -529,7 +529,7 @@ MX8MP_IOMUXC_UART2_TXD__UART2_DCE_TX	0x140
 
 	pinctrl_usb1_vbus: usb1grp {
 		fsl,pins = <
-			MX8MP_IOMUXC_GPIO1_IO14__USB2_OTG_PWR	0x10
+			MX8MP_IOMUXC_GPIO1_IO14__USB2_PWR	0x10
 		>;
 	};
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-pinfunc.h b/arch/arm64/boot/dts/freescale/imx8mp-pinfunc.h
index 0fef066471ba..7c266990aa3e 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-pinfunc.h
+++ b/arch/arm64/boot/dts/freescale/imx8mp-pinfunc.h
@@ -13,10 +13,12 @@
 #define MX8MP_IOMUXC_GPIO1_IO00__GPIO1_IO00                          0x014 0x274 0x000 0x0 0x0
 #define MX8MP_IOMUXC_GPIO1_IO00__CCM_ENET_PHY_REF_CLK_ROOT           0x014 0x274 0x000 0x1 0x0
 #define MX8MP_IOMUXC_GPIO1_IO00__ISP_FL_TRIG_0                       0x014 0x274 0x5D4 0x3 0x0
+#define MX8MP_IOMUXC_GPIO1_IO00__ANAMIX_REF_CLK_32K                  0x014 0x274 0x000 0x5 0x0
 #define MX8MP_IOMUXC_GPIO1_IO00__CCM_EXT_CLK1                        0x014 0x274 0x000 0x6 0x0
 #define MX8MP_IOMUXC_GPIO1_IO01__GPIO1_IO01                          0x018 0x278 0x000 0x0 0x0
 #define MX8MP_IOMUXC_GPIO1_IO01__PWM1_OUT                            0x018 0x278 0x000 0x1 0x0
 #define MX8MP_IOMUXC_GPIO1_IO01__ISP_SHUTTER_TRIG_0                  0x018 0x278 0x5DC 0x3 0x0
+#define MX8MP_IOMUXC_GPIO1_IO01__ANAMIX_REF_CLK_24M                  0x018 0x278 0x000 0x5 0x0
 #define MX8MP_IOMUXC_GPIO1_IO01__CCM_EXT_CLK2                        0x018 0x278 0x000 0x6 0x0
 #define MX8MP_IOMUXC_GPIO1_IO02__GPIO1_IO02                          0x01C 0x27C 0x000 0x0 0x0
 #define MX8MP_IOMUXC_GPIO1_IO02__WDOG1_WDOG_B                        0x01C 0x27C 0x000 0x1 0x0
@@ -58,26 +60,26 @@
 #define MX8MP_IOMUXC_GPIO1_IO09__USDHC3_RESET_B                      0x038 0x298 0x000 0x4 0x0
 #define MX8MP_IOMUXC_GPIO1_IO09__SDMA2_EXT_EVENT00                   0x038 0x298 0x000 0x5 0x0
 #define MX8MP_IOMUXC_GPIO1_IO10__GPIO1_IO10                          0x03C 0x29C 0x000 0x0 0x0
-#define MX8MP_IOMUXC_GPIO1_IO10__USB1_OTG_ID                         0x03C 0x29C 0x000 0x1 0x0
+#define MX8MP_IOMUXC_GPIO1_IO10__USB1_ID                             0x03C 0x29C 0x000 0x1 0x0
 #define MX8MP_IOMUXC_GPIO1_IO10__PWM3_OUT                            0x03C 0x29C 0x000 0x2 0x0
 #define MX8MP_IOMUXC_GPIO1_IO11__GPIO1_IO11                          0x040 0x2A0 0x000 0x0 0x0
-#define MX8MP_IOMUXC_GPIO1_IO11__USB2_OTG_ID                         0x040 0x2A0 0x000 0x1 0x0
+#define MX8MP_IOMUXC_GPIO1_IO11__USB2_ID                             0x040 0x2A0 0x000 0x1 0x0
 #define MX8MP_IOMUXC_GPIO1_IO11__PWM2_OUT                            0x040 0x2A0 0x000 0x2 0x0
 #define MX8MP_IOMUXC_GPIO1_IO11__USDHC3_VSELECT                      0x040 0x2A0 0x000 0x4 0x0
 #define MX8MP_IOMUXC_GPIO1_IO11__CCM_PMIC_READY                      0x040 0x2A0 0x554 0x5 0x1
 #define MX8MP_IOMUXC_GPIO1_IO12__GPIO1_IO12                          0x044 0x2A4 0x000 0x0 0x0
-#define MX8MP_IOMUXC_GPIO1_IO12__USB1_OTG_PWR                        0x044 0x2A4 0x000 0x1 0x0
+#define MX8MP_IOMUXC_GPIO1_IO12__USB1_PWR                            0x044 0x2A4 0x000 0x1 0x0
 #define MX8MP_IOMUXC_GPIO1_IO12__SDMA2_EXT_EVENT01                   0x044 0x2A4 0x000 0x5 0x0
 #define MX8MP_IOMUXC_GPIO1_IO13__GPIO1_IO13                          0x048 0x2A8 0x000 0x0 0x0
-#define MX8MP_IOMUXC_GPIO1_IO13__USB1_OTG_OC                         0x048 0x2A8 0x000 0x1 0x0
+#define MX8MP_IOMUXC_GPIO1_IO13__USB1_OC                             0x048 0x2A8 0x000 0x1 0x0
 #define MX8MP_IOMUXC_GPIO1_IO13__PWM2_OUT                            0x048 0x2A8 0x000 0x5 0x0
 #define MX8MP_IOMUXC_GPIO1_IO14__GPIO1_IO14                          0x04C 0x2AC 0x000 0x0 0x0
-#define MX8MP_IOMUXC_GPIO1_IO14__USB2_OTG_PWR                        0x04C 0x2AC 0x000 0x1 0x0
+#define MX8MP_IOMUXC_GPIO1_IO14__USB2_PWR                            0x04C 0x2AC 0x000 0x1 0x0
 #define MX8MP_IOMUXC_GPIO1_IO14__USDHC3_CD_B                         0x04C 0x2AC 0x608 0x4 0x0
 #define MX8MP_IOMUXC_GPIO1_IO14__PWM3_OUT                            0x04C 0x2AC 0x000 0x5 0x0
 #define MX8MP_IOMUXC_GPIO1_IO14__CCM_CLKO1                           0x04C 0x2AC 0x000 0x6 0x0
 #define MX8MP_IOMUXC_GPIO1_IO15__GPIO1_IO15                          0x050 0x2B0 0x000 0x0 0x0
-#define MX8MP_IOMUXC_GPIO1_IO15__USB2_OTG_OC                         0x050 0x2B0 0x000 0x1 0x0
+#define MX8MP_IOMUXC_GPIO1_IO15__USB2_OC                             0x050 0x2B0 0x000 0x1 0x0
 #define MX8MP_IOMUXC_GPIO1_IO15__USDHC3_WP                           0x050 0x2B0 0x634 0x4 0x0
 #define MX8MP_IOMUXC_GPIO1_IO15__PWM4_OUT                            0x050 0x2B0 0x000 0x5 0x0
 #define MX8MP_IOMUXC_GPIO1_IO15__CCM_CLKO2                           0x050 0x2B0 0x000 0x6 0x0
@@ -258,10 +260,8 @@
 #define MX8MP_IOMUXC_SD2_DATA3__AUDIOMIX_SPDIF1_IN                   0x0D4 0x334 0x544 0x3 0x1
 #define MX8MP_IOMUXC_SD2_DATA3__AUDIOMIX_PDM_BIT_STREAM03            0x0D4 0x334 0x4CC 0x4 0x2
 #define MX8MP_IOMUXC_SD2_DATA3__GPIO2_IO18                           0x0D4 0x334 0x000 0x5 0x0
-#define MX8MP_IOMUXC_SD2_DATA3__SRC_EARLY_RESET                      0x0D4 0x334 0x000 0x6 0x0
 #define MX8MP_IOMUXC_SD2_RESET_B__USDHC2_RESET_B                     0x0D8 0x338 0x000 0x0 0x0
 #define MX8MP_IOMUXC_SD2_RESET_B__GPIO2_IO19                         0x0D8 0x338 0x000 0x5 0x0
-#define MX8MP_IOMUXC_SD2_RESET_B__SRC_SYSTEM_RESET                   0x0D8 0x338 0x000 0x6 0x0
 #define MX8MP_IOMUXC_SD2_WP__USDHC2_WP                               0x0DC 0x33C 0x000 0x0 0x0
 #define MX8MP_IOMUXC_SD2_WP__GPIO2_IO20                              0x0DC 0x33C 0x000 0x5 0x0
 #define MX8MP_IOMUXC_SD2_WP__CORESIGHT_EVENTI                        0x0DC 0x33C 0x000 0x6 0x0
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts b/arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts
index 521215520a0f..ac59f36b82fc 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts
@@ -824,8 +824,8 @@ MX8MP_IOMUXC_UART4_TXD__UART4_DCE_TX	0x140
 
 	pinctrl_usb1: usb1grp {
 		fsl,pins = <
-			MX8MP_IOMUXC_GPIO1_IO13__USB1_OTG_OC	0x140
-			MX8MP_IOMUXC_GPIO1_IO10__USB1_OTG_ID	0x140
+			MX8MP_IOMUXC_GPIO1_IO13__USB1_OC	0x140
+			MX8MP_IOMUXC_GPIO1_IO10__USB1_ID	0x140
 		>;
 	};
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi
index c5987bdbb383..da66d8487651 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi
@@ -1205,7 +1205,7 @@ pinctrl_uart4: uart4grp {
 
 	pinctrl_usb1_vbus: usb1vbusgrp {
 		fsl,pins =
-			<MX8MP_IOMUXC_GPIO1_IO12__USB1_OTG_PWR		0x19>;	/* SODIMM 155 */
+			<MX8MP_IOMUXC_GPIO1_IO12__USB1_PWR		0x19>;	/* SODIMM 155 */
 	};
 
 	/* USB_1_ID */
@@ -1216,7 +1216,7 @@ pinctrl_usb_1_id: usb1idgrp {
 
 	pinctrl_usb2_vbus: usb2vbusgrp {
 		fsl,pins =
-			<MX8MP_IOMUXC_GPIO1_IO14__USB2_OTG_PWR		0x19>;	/* SODIMM 185 */
+			<MX8MP_IOMUXC_GPIO1_IO14__USB2_PWR		0x19>;	/* SODIMM 185 */
 	};
 
 	/* On-module Wi-Fi */
-- 
2.34.1

