Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C525539D762
	for <lists+devicetree@lfdr.de>; Mon,  7 Jun 2021 10:30:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229545AbhFGIbd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Jun 2021 04:31:33 -0400
Received: from mail-am6eur05on2062.outbound.protection.outlook.com ([40.107.22.62]:42209
        "EHLO EUR05-AM6-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S230128AbhFGIbd (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 7 Jun 2021 04:31:33 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hAGDkfXRappCHt2llg0dNvkORmfy+LTC0lw9Nrt6MypA7SJwPkRos0S8x4L8qJxe+PWDreKO8T0l5jxMa0pJTqPS48k1AuJHHHpMDCDNbUJ42ljVvG1NWBNmUZ2Ymqj4dsVQaPp14KZC1Q95mLEh03vzVGs86WvdkuuZppfHumO8cjzcN5kDcNjF3e9cmuS0hDNsNFEhk2UBAsbvLwyOhEdhoZ1S2oVJUYW5vzo8d3AzwvBchb2y/UsECdkPLD+0ps2ZW3Kvho3UlmPDi8d6VtkON9kRIRm41VsqgXsB8g+9ouZ3eQOZYuNpba36DgS3RijIYbGkID+5p4s/61z7Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c/QgoaThD4pxRJVe/cGCfTsKQfyQAt7JPRJ7MUWh8Wc=;
 b=CpgOR0R4EbH6i3n8F+qJEMSnXj4UW7d+2t9OiPOjfJqtpC9Ihn/rBVeUBwcjPBrnJ516M+5NMxAvwpPWfuF4WcFXtB0d+J91n3K2mw19q5K4Rez3XdeFNiugPxAu4PClHu0tJyt3+BZozFAUgclxenftgZezwlgmvpewU/6ORUs4a8swLQK+tEBdloQb6KcV52iBv1mudNPpoqqzPU1C+Q9U0CS4bQJb70oJX8GbeCOftXV4u5Z3Z9RsRgXm2bdyz5uKoV4404sNaz0lLQDMih589/JcL+4igWmfK2x8PztMRdz9g9y2k0/EK/4JUwZMfoWBM37Wlm1/AR0xcCApBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c/QgoaThD4pxRJVe/cGCfTsKQfyQAt7JPRJ7MUWh8Wc=;
 b=iEr70QWAbayjZNzUVbQPloV1JwmqdMRoV32qqYRzGyGFkPZ7NQusz4U3BiOi4lz6DWWp91v6vif0z/qa0/KCXZYk05xH3xtX+lGEOtRPGq82iuTvz4RJV+sAifPC+tNEsweloCGrV3r4dCIBsD9lfkXdhO7q4RQf0jldfK7J0ic=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DBBPR04MB7595.eurprd04.prod.outlook.com (2603:10a6:10:20d::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.20; Mon, 7 Jun
 2021 08:29:40 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3921:acd6:3201:b209]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3921:acd6:3201:b209%4]) with mapi id 15.20.4195.030; Mon, 7 Jun 2021
 08:29:40 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org, sboyd@kernel.org,
        s.hauer@pengutronix.de, linus.walleij@linaro.org,
        aisheng.dong@nxp.com
Cc:     festevam@gmail.com, kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 00/11] Add imx8ulp basic dtsi support 
Date:   Mon,  7 Jun 2021 16:39:10 +0800
Message-Id: <20210607083921.2668568-1-ping.bai@nxp.com>
X-Mailer: git-send-email 2.26.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [119.31.174.71]
X-ClientProxiedBy: SG2P153CA0007.APCP153.PROD.OUTLOOK.COM (2603:1096::17) To
 DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2P153CA0007.APCP153.PROD.OUTLOOK.COM (2603:1096::17) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.4 via Frontend Transport; Mon, 7 Jun 2021 08:29:35 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8cf38d56-ef23-4bc0-1734-08d9298e643c
X-MS-TrafficTypeDiagnostic: DBBPR04MB7595:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DBBPR04MB75956A5FED6BFA275D9341F187389@DBBPR04MB7595.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: t+TQwbPX8zbbxfeP6YfbTpFoX6eS4LMWGJDgPLpQVy+Scenx6InPXCIa+XQjiSMma393hNZQgWL8NDxEUs1jhsRFvuwAC+ApYLU/z4AC9cne9vtr9v5GxHBXMdmJYez/5t2TLnCuMH413j9zkHQ6c8mTArYcoLGtRh2Ba9cerL9jzMYAp7gpZMZc5c4JjF4+iojw6+KuzTfrPygWmNfVT9U4ga5t4ov27SQExcWp73WfiSQU+KKDSfk1mKliGmLF1fpCZJkh/KcJckeuax1925bRV06YuH+kobcsPc6/jCnN9DKUZm8pRkms4Mfwl4E96HOirLNMr4hp1j7WaldxI8SF4uRpL6t//n4W6XolrCfaqpXN+eY5n/DkJ4fPqK035p8/kPw8+tPEH5ySueujTKODNHczjBg7BdToV4XnO08u+BC9b3nc6ox7RIdw1dL+I1Lv4j41Hw4PycpKDcxQ6DW8vKlPjgk0OUwbu5/D9hLhZXZElRmquca9t6uSE5nq7lWilx63sgloEAV+N2msEah8sKALwhIkPne8MqTL/KFZrYIQJfomPsSRCzeyA77nVczsbRE/00xP4zEtqw28KKC0LoskxSte5cmfQlZnBmQHG3T4NaCUamVGPvWoATA5Nb1gAyiOaDwkxNdhP0Lb30e1wslLqU7/32ryWzAoVid2USxDrHbP0nTAD800lPufZYRlOGMg8sSIf+ilX82pZw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(39860400002)(136003)(366004)(396003)(376002)(6666004)(52116002)(16526019)(8676002)(1076003)(956004)(36756003)(2616005)(83380400001)(8936002)(26005)(2906002)(186003)(6636002)(6506007)(38100700002)(478600001)(316002)(6486002)(4743002)(86362001)(6512007)(66476007)(66556008)(5660300002)(66946007)(4326008)(38350700002)(69590400013)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?/gipKkxR50FCCEsSm5lbuxkPtXUxUM+LSYuDvKOZDU51ICAN5ViNarH6VioM?=
 =?us-ascii?Q?7i6rNauLKaATCW1LXE6xOwjIk1JsxVFESWT9ilk02GRXJakuVDhxAbjLImCt?=
 =?us-ascii?Q?indcC8Xm7CMefzmwzuZht2AOPSKCqBfd71xpD94e0Dxyva5/AXKA479WgAOY?=
 =?us-ascii?Q?lFIMOC8DnnHIzvXGpDQaJ43cID0cV1PYLkHC9KJWp0ViT8AV/NouDKVEaZPb?=
 =?us-ascii?Q?/bycH2s6vD5/bjZgnBjX/G05TWXnK6A/o2WKhyZmOvbJLt6bBAOmsB4QhTwg?=
 =?us-ascii?Q?rk6IBsehU21I75y7tAotrbVWrQpd44j6s01nVj/IywI9jbiSjd/KTObegxE4?=
 =?us-ascii?Q?UqMxyeL5mE/UxE8GFloQniwrFad7mLhOzrYCDCQSOaq2xs47D0RRvNNTMBue?=
 =?us-ascii?Q?cxUixm1WrSmWc670K+edcEzXXbwmXQPIJ1l8zIIwUiK9n1NWUADZ9cIOKjaJ?=
 =?us-ascii?Q?jba7SkvDwCNWEdZ38QZhfP2DOA2m/n9hwlbSObJrzDIQ2JTb79p5j2SsoJIV?=
 =?us-ascii?Q?G6YMUvr8RNPTm9Rps0PEVSRROUW4G3/oZXT0/X9Po5UH20rP8YBL7lTTHlMC?=
 =?us-ascii?Q?TnGQk8dBuh7LqhUL+D7J5Kny9P4SWddphjyxfbC2Nwz3UVZGJg92PMYoHcOd?=
 =?us-ascii?Q?Ylhd1k9pI0a9WpMunCwoXDyvLif4j7Kj+omZRXmZjmzl830HY/iBdQsRazx2?=
 =?us-ascii?Q?uA9N+LtCMffdC17ZjY1ZioOWqp7WwmDkzJfHpwcN6beTzptQQynALfdWlT3N?=
 =?us-ascii?Q?vtM864u3EDGOmpQ5ohpg15y+HlfD21hNBSRBULiVhXauExbbB7jtCBCXgnhs?=
 =?us-ascii?Q?XjZuU86Ra0roSlSucPBg6S2bJ6Lid7SftiuojExfCJ2F1cslAMCOnFvkspqM?=
 =?us-ascii?Q?drfI7nrL5ZZTV9pCrAjn/+9TR4gMpwKFTf97izdbQmNbc5n9q0ygcY6qmkhP?=
 =?us-ascii?Q?UrCRFC8VST4hFBDGkCW6MTAAVSj9dFVg/HGaW/poGEUy1HXPKNWVWtfCEgvX?=
 =?us-ascii?Q?Ri7agERDn6kJbKuObQa9MjrPxvgYdZk3eEzu38T5soZxi4iKJx+EhYvkLgyM?=
 =?us-ascii?Q?IQG2JBfO4fxbSZvAWqvwShbVWnO0u8RQo15+9v2sB8VukIFJGB5WnQDYZLfB?=
 =?us-ascii?Q?ukQEcMZn36N5ZSoXk3y1XT+fAOWgQi+VQLp0YpG7bGzs9h3bNoupaabObI2Z?=
 =?us-ascii?Q?x8OhUGd/GNp1cjDbNC2BVHYVdB4DDMF70aB06G4h/Tt55vabK9qOwWZe5QSO?=
 =?us-ascii?Q?UsiRJGA6y4FAMdlhZl2ZfDdpsuracEPnDB82npUxzMJOpLoVigOwMuR6KTnJ?=
 =?us-ascii?Q?SAYRjgml4XXcANk9dANSJ1E7?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8cf38d56-ef23-4bc0-1734-08d9298e643c
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2021 08:29:40.2540
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vae71RCII/gwtcPROzdQucMrkbGlmXLpApKXDHU+qYjkeusA4ZTJ8zaqKzMFillLw5V8NRIRM8DA8lwScgQ3Cw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7595
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

i.MX 8ULP is part of the ULP family with emphasis on extreme low-power
techniques using the 28 nm fully depleted silicon on insulator process.
Like i.MX 7ULP, i.MX 8ULP continues to be based on asymmetric architecture,
however will add a third DSP domain for advanced voice/audio capability and
a Graphics domain where it is possible to access graphics resources from the
application side or the realtime side.

This patchset adds the basic dtsi support for i.MX8ULP, and also update the
dt-bindings docs for i.MX8ULP.

Jacky Bai (11):
  dt-bindings: gpio: gpio-vf610: Add imx8ulp compatible string
  dt-bindings: i2c: imx-lpi2c: Add imx8ulp compatible string
  dt-bindings: mmc: imx-esdhc: Add imx8ulp compatibe string
  dt-bindings: serial: fsl-lpuart: Add imx8ulp compatible string
  dt-bindings: spi: fsl-lpspi: Add imx8ulp compatible string
  dt-bindings: timer: tpm-timer: Add imx8ulp compatible string
  dt-bindings: watchdog: imx7ulp-wdt: Add imx8ulp compatible string
  dt-bindings: arm: fsl: Add binding for imx8ulp evk
  dt-bindings: clock: Add imx8ulp clock support
  arm64: dts: imx8ulp: Add the basic dtsi file for imx8ulp
  arm64: dts: imx8ulp: Add the basic dts for imx8ulp evk board

 .../devicetree/bindings/arm/fsl.yaml          |   6 +
 .../bindings/clock/imx8ulp-clock.yaml         |  72 ++
 .../devicetree/bindings/gpio/gpio-vf610.yaml  |   3 +
 .../bindings/i2c/i2c-imx-lpi2c.yaml           |   4 +-
 .../bindings/mmc/fsl-imx-esdhc.yaml           |   4 +
 .../bindings/serial/fsl-lpuart.yaml           |   4 +-
 .../bindings/spi/spi-fsl-lpspi.yaml           |  11 +-
 .../bindings/timer/nxp,tpm-timer.yaml         |   6 +-
 .../bindings/watchdog/fsl-imx7ulp-wdt.yaml    |   7 +-
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 arch/arm64/boot/dts/freescale/imx8ulp-evk.dts | 143 +++
 .../boot/dts/freescale/imx8ulp-pinfunc.h      | 978 ++++++++++++++++++
 arch/arm64/boot/dts/freescale/imx8ulp.dtsi    | 474 +++++++++
 include/dt-bindings/clock/imx8ulp-clock.h     | 261 +++++
 14 files changed, 1965 insertions(+), 9 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/imx8ulp-clock.yaml
 create mode 100644 arch/arm64/boot/dts/freescale/imx8ulp-evk.dts
 create mode 100755 arch/arm64/boot/dts/freescale/imx8ulp-pinfunc.h
 create mode 100644 arch/arm64/boot/dts/freescale/imx8ulp.dtsi
 create mode 100644 include/dt-bindings/clock/imx8ulp-clock.h

-- 
2.26.2

