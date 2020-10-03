Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 81CFD282407
	for <lists+devicetree@lfdr.de>; Sat,  3 Oct 2020 14:07:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725777AbgJCMHM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 3 Oct 2020 08:07:12 -0400
Received: from mail-eopbgr00077.outbound.protection.outlook.com ([40.107.0.77]:47079
        "EHLO EUR02-AM5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1725778AbgJCMHL (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 3 Oct 2020 08:07:11 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AtrfSOdUe5XdDx2OG0rEiHOaeYbnMGoe3HKCAoTSobhI2JUnC8DOrPxeGh9NAMx/7MUqmSCmTpy8iufTUADo2AOAmHgqXm7lO81rgTXMtC7UpeoaLdNhwfughIcqVHpcJEcd7uvOa9XoRw4U9yj4yhdkGFft5HpE3japThUPWwstNAf1sO6LGYeMNoaDdh/6wl3cyLHhJvx3mUGziDPFioIF6GNjPnJxGJ0XIN1MN4tNPo/eSG+rEcvdyn2eIBmWO9Fk6wYjJxn6RNcBYPsZ81VoEHpOVt2nuo5ZCB9IcRn4tkyvzGE1qr8ecV04AjFCcdCaXkw3TVSiHSFhtQRvUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=20D0w+1RrilFVTaF6Of8iQzbA4N51w3/EVRvkbvrCuc=;
 b=HybwCAazDZzjuYwh7C6gvk9ni+WY4cXqZtr8iaXtsPqrEP1CV+DXbpGMkPei/mrXMZP0F3/d+PtxqUwQ2i5otzXA9YhSTVl/Xoqq0QTknD/PzeCfU+iADz44TY4m6yIvX+xDPG76GjsBcE7aMh0gSoLqfB2hceHzrkYiDPjkOYoAwDwyx0VHRpOMVtu6wyc4dDGMkVWvXinUEtt/qbYxR6222YLM0hyFsbETs/kdM8z1+WJOhzR2chToU6HfwlCyDuElm7H6PWhSWdybqP5ZoXQnAL4q+2y+R3g5dd9bU9/dlHJfGWwgro6OoxaUs8fmj06eEcxMkN1x6Q/VAgS9ZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=20D0w+1RrilFVTaF6Of8iQzbA4N51w3/EVRvkbvrCuc=;
 b=IrV5bGadOqnA0pwT52hY6oxc3DoPxj8XCVW+hBGVaXs95M7zAZHRrj3DdRmgK0HCoqVAVfouzBD5PNs/Nzij3p7F08sBr+hb38RA+aeWy3WQZbjYJ0xIAdhDC3qNMDKet3pKQYnRJWfc4X5xhZUfla654FgUTGYfQvuSxqoCtZc=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6528.eurprd04.prod.outlook.com (2603:10a6:803:127::18)
 by VI1PR04MB4064.eurprd04.prod.outlook.com (2603:10a6:803:4c::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3433.32; Sat, 3 Oct
 2020 12:07:02 +0000
Received: from VE1PR04MB6528.eurprd04.prod.outlook.com
 ([fe80::acd3:d354:3f34:3af7]) by VE1PR04MB6528.eurprd04.prod.outlook.com
 ([fe80::acd3:d354:3f34:3af7%4]) with mapi id 15.20.3433.039; Sat, 3 Oct 2020
 12:07:02 +0000
From:   Li Jun <jun.li@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org, balbi@kernel.org
Cc:     krzk@kernel.org, gregkh@linuxfoundation.org,
        s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, Anson.Huang@nxp.com, jun.li@nxp.com,
        aisheng.dong@nxp.com, peng.fan@nxp.com, fugang.duan@nxp.com,
        horia.geanta@nxp.com, qiangqing.zhang@nxp.com, peter.chen@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 4/4] arm64: dts: imx8mp-evk: enable usb1 as host mode
Date:   Sat,  3 Oct 2020 20:02:07 +0800
Message-Id: <1601726527-23326-5-git-send-email-jun.li@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1601726527-23326-1-git-send-email-jun.li@nxp.com>
References: <1601726527-23326-1-git-send-email-jun.li@nxp.com>
Content-Type: text/plain
X-Originating-IP: [119.31.174.66]
X-ClientProxiedBy: SG2PR0601CA0018.apcprd06.prod.outlook.com (2603:1096:3::28)
 To VE1PR04MB6528.eurprd04.prod.outlook.com (2603:10a6:803:127::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by SG2PR0601CA0018.apcprd06.prod.outlook.com (2603:1096:3::28) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.3433.35 via Frontend Transport; Sat, 3 Oct 2020 12:06:56 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 63600eae-8677-48e5-a568-08d86794d5fe
X-MS-TrafficTypeDiagnostic: VI1PR04MB4064:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR04MB4064CE139C35EFAA1857D56A890E0@VI1PR04MB4064.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:200;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MfiatJdbBrrpx+rqii6aiBhH5QW3NqdKqgfPviqFaF8/B6AWnOe2W8LcIW0v/NbyF2lY60fHd/nP+JgMsjDJaRhSrU43lE/9Ulkqv/HNqYG8PLfl0+sDTauN+yDAQZrzcgdK1vlW486KQsDuf/Er3LBcekIinwN2N0ARjJeDDF28fPdP2ZBMmBvYWv1mJu3MFDpuzfUCghG4beh6idXxLu2prAxxoddaT30f5xn5RLpXhCZawsR3+E50vZ74p5adKJeclPAB5rvjeJj7hPiXOhNH+ycHGSBmH3c/gmvWsBtqUvyGjZUIpUc4B5GbiM/dgA1uM8mGkrc8cT9zQIb6oEPY1DjRLtTFR2TqkQBMGOxcqqc309lOhIK86S+7S9+YZghu2wmdSFqF4e9FeRW30J+J3EF2nWoUgD+aCyycum4OZuFnSo94vDud0b/QWEW/gWlDRAqnu65ruK9YZhB1tA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VE1PR04MB6528.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(39860400002)(396003)(136003)(376002)(346002)(2906002)(8936002)(16526019)(66946007)(66556008)(66476007)(186003)(6512007)(6486002)(8676002)(7416002)(69590400008)(83380400001)(36756003)(26005)(5660300002)(6666004)(52116002)(478600001)(316002)(86362001)(6506007)(956004)(4326008)(2616005)(32563001)(414714003)(473944003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: J9zi+js5p7YfEIP2rmmq7FdfZLqArWDbANNlhJoTJ3UYKfE/3e1DStS+JQIkwKCPizUBlhqQkrwXHSSwUYqn0OHCATjPm91P3k4TrtQyJhmfWtSDnF3GtsG9UCrWl089BiSLgyB+fUa8Os4Dy78sB5G7+NiFpP1D10424mvGXjJEsJlSegp23YzPDpdv4cxkvE/5xR/YZPhSzc0yMUYsa4NurVuZwC/qlBnb+oIEFAJWeRCxYpr03XmG/R2SKYGYKFiN1FR7lXj6rrfpeauitqfcEXNwRkbwK+CNzqm3/v/9Z77WGryipXzv5+ecrGyVg4dmunW45Mdnr1iF2Kp5S6OUeT4HuMFe3kWew7CaQsu9Usw9CVpymJbe3LtnR3neIm6/FFYjaxFVNJp+9w8hioIKST/N7E628g3ukcpAk9EV3PPnNB6sc/6Qh8fxuyK6Lqb9ki/oJyrc6CGH/C1q03Vm6rXyhFlpc19Nxh/PU+f2BaYZLUmRGmygfJp+73BHsRdFiZHs7s9znjXMGdS2Dyyg20Uyw2cN9F34T1FM2Pew121BGcaUDc++5/D611pIsLPZ/lviZwByVGfTNwXnm+PWrsF0txPpXorvwGN3vc0XM9d7MxgXxvxuo9hXCpQ5rsCoUZ1RwOwAAqHeQEDckw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63600eae-8677-48e5-a568-08d86794d5fe
X-MS-Exchange-CrossTenant-AuthSource: VE1PR04MB6528.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2020 12:07:02.0258
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1YtTF6nzl7nwcTsDRHvcFvBvHDpBC/ZQArn3grVnHPkVunNdXSU8601iMsE+ysXQ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4064
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable usb host port with type-A connector on imx8mp-evk board.

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
Signed-off-by: Li Jun <jun.li@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mp-evk.dts | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-evk.dts b/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
index 432c1a7..0cb3b16 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
@@ -176,6 +176,21 @@
 	};
 };
 
+&usb3_phy1 {
+	status = "okay";
+};
+
+&usb3_1 {
+	status = "okay";
+};
+
+&usb_dwc3_1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usb1_vbus>;
+	dr_mode = "host";
+	status = "okay";
+};
+
 &usdhc2 {
 	assigned-clocks = <&clk IMX8MP_CLK_USDHC2>;
 	assigned-clock-rates = <400000000>;
@@ -276,6 +291,12 @@
 		>;
 	};
 
+	pinctrl_usb1_vbus: usb1grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_GPIO1_IO14__HSIOMIX_usb2_OTG_PWR	0x19
+		>;
+	};
+
 	pinctrl_usdhc2: usdhc2grp {
 		fsl,pins = <
 			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK	0x190
-- 
2.7.4

