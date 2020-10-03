Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9CC41282403
	for <lists+devicetree@lfdr.de>; Sat,  3 Oct 2020 14:06:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725772AbgJCMGt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 3 Oct 2020 08:06:49 -0400
Received: from mail-eopbgr00077.outbound.protection.outlook.com ([40.107.0.77]:47079
        "EHLO EUR02-AM5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1725770AbgJCMGs (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 3 Oct 2020 08:06:48 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gy87BQ7GmO0Gqcp7IdVxqeuX26D5lsQRH1885Wt/Qyy7wndu+gofD7a+idjOceb9WqbQ6f4U51+9V41c4peF+vJ7/AXgARROr3Yuzt7n2m5B0XHJwemCqb8d72N+qB79q3lY+PjM3lSOx13z/aDh6EDKH3rHOfDkc0wGWBUcXMQ+C1RGMFnKCr2HI5rfXk++UcQkQg/ZsnnvO6fLk7J0c6uKTCxh0GEwDYvnXHgjprtWajlvq9XZ17QY0iW6L0Xx/QbwRzdTsfDzY7eEGKcuRIq8g+KnP4ues52l71rY4lDbQJMRe05V3cidK8FyoX7r89pumuE5pwFQI9dUwvuFew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LeZ4mjVsyY9AmprKH9MwhlGSISNfTd611i1v3Jkvqbg=;
 b=kEUjPmyvN2BLlrii/qR1gu5dfVefmykTOZu0LpTsSoyiSU0hyf74InQ1h27aJ5oswFLEtiXyGG3k8Fp45pOivBtktAs1LOxzYsgf6jCy6+LicJLCsRNlnZq23DQYhYkZlScrQHMJgVigTt06/0Fro73LAx2/XWLv5eA7/SUF7/7LjIeq9zOz+cBeChjvp28TeBd37m+b08UtaWOQp3iNR0m0C/3NCJMgwCI+Ih45ZoPXhxdO2oDnMxWZzgBIJQT1iKBeL41jNs0fpXwMsz+ZZu35CAVeweCHyoD6T4ZCjifGNB8JkGZBYQ5PF2htZmiLVQvghFSpL5daIltkHn2j4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LeZ4mjVsyY9AmprKH9MwhlGSISNfTd611i1v3Jkvqbg=;
 b=pr0A09o/m/flRXWZeTTJw8cBWd+tyytZSVBmdEp8HZaILVrrgzpoejVTGTd6X8Cno3YKtdQSd4axCE2ub2W6A/cl5EajwdoMwCAmD5gMq39ydJvfOFkTza6tk/sb3ogIiCmtTo52JxHbpTz0m9e+WxMViCmvOY9+Ul7+bVs36f8=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6528.eurprd04.prod.outlook.com (2603:10a6:803:127::18)
 by VI1PR04MB4064.eurprd04.prod.outlook.com (2603:10a6:803:4c::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3433.32; Sat, 3 Oct
 2020 12:06:40 +0000
Received: from VE1PR04MB6528.eurprd04.prod.outlook.com
 ([fe80::acd3:d354:3f34:3af7]) by VE1PR04MB6528.eurprd04.prod.outlook.com
 ([fe80::acd3:d354:3f34:3af7%4]) with mapi id 15.20.3433.039; Sat, 3 Oct 2020
 12:06:39 +0000
From:   Li Jun <jun.li@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org, balbi@kernel.org
Cc:     krzk@kernel.org, gregkh@linuxfoundation.org,
        s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, Anson.Huang@nxp.com, jun.li@nxp.com,
        aisheng.dong@nxp.com, peng.fan@nxp.com, fugang.duan@nxp.com,
        horia.geanta@nxp.com, qiangqing.zhang@nxp.com, peter.chen@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 0/4] add NXP imx8mp usb support
Date:   Sat,  3 Oct 2020 20:02:03 +0800
Message-Id: <1601726527-23326-1-git-send-email-jun.li@nxp.com>
X-Mailer: git-send-email 2.7.4
Content-Type: text/plain
X-Originating-IP: [119.31.174.66]
X-ClientProxiedBy: SG2PR0601CA0018.apcprd06.prod.outlook.com (2603:1096:3::28)
 To VE1PR04MB6528.eurprd04.prod.outlook.com (2603:10a6:803:127::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by SG2PR0601CA0018.apcprd06.prod.outlook.com (2603:1096:3::28) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.3433.35 via Frontend Transport; Sat, 3 Oct 2020 12:06:34 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 14082536-f863-4b3d-9cd3-08d86794c8b5
X-MS-TrafficTypeDiagnostic: VI1PR04MB4064:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR04MB40647313B507D9EE3666DD4F890E0@VI1PR04MB4064.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Z21og8hnBV7in8j6+Q5BQnn8iNTeoM8z9/mfc1QTbrNGyzPoY6pXYlMN8PCcNwc5C0afDPoStvWt5Ai8LF16S/19OLysW7SPVh9qUHEIBL4tspGRlJULzKjvV10HS+DR0giIk/uVlOla/PWlYPz98wt64j3WD2/hZ1QH/RqE4phBm4+IJ9DsHaLddQGqxe+lBqYOnlv+wy7rXMmOxDT08QJ3Orebjk09vV90TI+L3P9cOJH7pKKapZ56Z5FtSh4t6z1zdlw6ZtZ5RCLW0WKtQtOSUXG7sI1jlmWgk4BewP4zcAwe0nq5OOs2qLe4GgGn0UOQSY5WcoKn7G/wWT6PHugTjeUVaCkAMRaZkzfOJal1PAsBwjj1RYSdowCk18GzLgNiAg8+dmuxab7hXCruaHBNMXhol2h9gUFCeMTHbn45km0OCiXX+dFmC18bHjPtbE1tQ6LhFC7YAFX6S8meU6pK99tt0Gn6CenQUWd3Brg=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VE1PR04MB6528.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(39860400002)(396003)(136003)(376002)(346002)(2906002)(8936002)(16526019)(66946007)(66556008)(66476007)(186003)(6512007)(6486002)(8676002)(7416002)(69590400008)(83380400001)(36756003)(26005)(5660300002)(6666004)(83080400001)(52116002)(478600001)(966005)(316002)(86362001)(6506007)(956004)(4326008)(2616005)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: niSZYOzVVP6p2YzH8hPXucS+peRxrfGKM+RjNH+gJOfqCNBLe50pm2cN+QiEgS8p5FS78n2zp1o2yB0rIMBMCZgCs1XU8E/q6mF1omr6y5n5QzjQqLLG4gdvtaGDGWG1pufCeNTfw7KcKlxEIN5a7wJ1n00VwFrEaw6PCDfxkQjmqTYm/Wh24Epf5AUuq0aArpcW0bBjtI1siwsCR2iAYmNaq+VE8NrBCiFMiPn2C6SDaaShzEKkd1SZF/qZfvOVVGKf/n7F9Yu1t55bRm/sUtBjvO/RAHRC6kkE+jERM51juXUnoLruq4qpHzBHQEtvMccnJ0RIlG0BHECU5kPiT2lkof63HWVzgbRoYnZy4mMzRzJl1dsVf938yGa16ziZ6Bfy4qfGNqlvQJcoDkoNXhiC4W3Twy3vNZBGtNqUZc0KsusR6Td2NkatbDUuDklQQyX5SVJkTxvpMlMzfpB7ZaZ7t0sjQClhzEtvGHJ332+ojz0uI20+adT5OMoN4ohcxKOktKgndkzfLtnoEyqlZJbwrHQ9zelaBc/FJYB5UZ1SHwIyY9DCxTF2A0rCE2DMoz6fFF/L554QccT8ZMQmcFTrf5qnNWU8unlZUQDIKjON60JUh8+ZDKJXE5hpkWweD7xyfXAA7jjU2Ztq+4SYbw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14082536-f863-4b3d-9cd3-08d86794c8b5
X-MS-Exchange-CrossTenant-AuthSource: VE1PR04MB6528.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2020 12:06:39.6349
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: equhxYpxcQ3+vVSE4VbV4mJh9HEBwp0HlJk+zLvOSFqkI3NK0UeyUTFYPrpe03/M
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4064
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

NXP imx8MPlus integrates 2 indentical dwc3 3.30b IP with additional wakeup
logic to support low power, this wakeup logic has a separated interrupt
which can generate events with suspend clock(32K); due to SoC integration
limitation, it only can support 32 bits DMA, so add dma-ranges property,

changes for v5
- Remove "Items" of compatible in binding doc [1/4]
- Add Krzysztof's R-b tag for patches [3-4/4].

changes for v4:
- Use dma-ranges property to limit 32bits DMA, so don't need the new
  property "xhci-64bit-support-disable".
- Fix binding doc to pass dt_binding_check dtbs_check.

changes for v3:
- Add dwc3 core related clocks into dwc3 core node, and glue layer driver
  only handle the clocks(hsio and suspend) for glue block, this is to
  match real HW.
- Change to use property "xhci-64bit-support-disable" to disable 64bit DMA
  as imx8mp USB integration actully can't support it, so remove platform
  data in v2.
- Some changes of imx8mp usb driver binding doc to address comments from Rob

Changes for v2:
- Drop the 2 patches for new property("snps,xhci-dis-64bit-support-quirk")
  introduction, as suggested, imply by SoC compatible string, this is done
  by introduce dwc3 core platform data and pass the xhci_plat_priv to
  xhci-plat for those xhci quirks, so a new patch added:
  [1/5] usb: dwc3: add platform data to dwc3 core device to pass data.
  this patch is based on Peter's one patch which is also in review:
  https://patchwork.kernel.org/patch/11640945/
- dts change, use the USB power function of TRL logic instead of a always-on
  regulator to control vbus on/off.
- Some changes to address Peter's command on patch [2/5].

Li Jun (4):
  dt-bindings: usb: dwc3-imx8mp: add imx8mp dwc3 glue bindings
  usb: dwc3: add imx8mp dwc3 glue layer driver
  arm64: dtsi: imx8mp: add usb nodes
  arm64: dts: imx8mp-evk: enable usb1 as host mode

 .../devicetree/bindings/usb/fsl,imx8mp-dwc3.yaml   | 105 ++++++
 arch/arm64/boot/dts/freescale/imx8mp-evk.dts       |  21 ++
 arch/arm64/boot/dts/freescale/imx8mp.dtsi          |  82 +++++
 drivers/usb/dwc3/Kconfig                           |  10 +
 drivers/usb/dwc3/Makefile                          |   1 +
 drivers/usb/dwc3/dwc3-imx8mp.c                     | 363 +++++++++++++++++++++
 6 files changed, 582 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/fsl,imx8mp-dwc3.yaml
 create mode 100644 drivers/usb/dwc3/dwc3-imx8mp.c

-- 
2.7.4

