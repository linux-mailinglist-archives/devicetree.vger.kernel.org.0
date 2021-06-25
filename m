Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CD83D3B3A52
	for <lists+devicetree@lfdr.de>; Fri, 25 Jun 2021 03:03:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229712AbhFYBGH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Jun 2021 21:06:07 -0400
Received: from mail-eopbgr50040.outbound.protection.outlook.com ([40.107.5.40]:28039
        "EHLO EUR03-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S229643AbhFYBGG (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 24 Jun 2021 21:06:06 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MjaUMHgrHeg68IUUUDykJtlr16S680jhQuceYorJ/FmNQQ0gqiM9nxpAHBYNhQ10JYr8JYGMYxwavXOFjWmZYQzcOb0LuNO5on89K00siXTU6tYZBbgGIQXOZ6ow8jS1x3ZD+wn3jMsECt3a13s04QSbOmL5zaUMX/V7jx14JDidSO3WbiM2K6JwPab38WVr0z6bVA9UeYY2KceeM2yHMmlepEMase5L1ygaG+Mcl9AQ2d4yh/syyqMgNfvRLXygLunr5cc+vAua/QlZTng/ygamHwhLt+aygwuwk6tEXf6eZfMhjViqOR/NNrY3EZqqB3loIuQ+jaxxXn/g6FZQ+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZKjoYbPEoJANvH3lpi7z8tS4tdB8eNbG7hgANsIeLC4=;
 b=dIjUf7X+nKdrvzm6QusvxC9D52EMdr0HszZOySTP/e9x9NhA7dtkk2N52ZPey4fv9nDJ/eRBWJBZMvNPOTvOAbbbT0gj5HGJMBXYuKr5CnkAQxkfEUGeS9wy6WtmEkpSromgn7bBQ+48t0guLFroRiyxX6ZOenDb8jrni9rpNc94xfFeYD8wq9AYxpZS6hHhO01x7DUOELD4OnUZGC/HZN1ty/uGSquh5wiX25UX0OsIej40oEW6Ok1xmNuufoLetEoBVICq7eOsHuBtXMnGRjd7X5qCrh955sDgXrVn3T8tfjs0LJsaS+0yfIUPkRI24RAJBsUfSc+uAWoWHp90Xg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZKjoYbPEoJANvH3lpi7z8tS4tdB8eNbG7hgANsIeLC4=;
 b=REBRIumTpbF0QZcprwr1nfEC0PgSnVWDdzdWvwS4I9jJHoN7s1LD5cT3FGs0KK+bAUKCRx4u4uXd4KDVl3XfuI/2ZqqJKfM0BUQbiAbzce3UXA/sxKLfrxLSKxwuZZXoYtadtRart2jfzoOw4imI0DuTpF44CtNaG9cUy0ofY70=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DB8PR04MB5801.eurprd04.prod.outlook.com (2603:10a6:10:a8::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.18; Fri, 25 Jun
 2021 01:03:44 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3164:e047:376d:4a4f]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3164:e047:376d:4a4f%7]) with mapi id 15.20.4242.023; Fri, 25 Jun 2021
 01:03:44 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org, sboyd@kernel.org,
        s.hauer@pengutronix.de, linus.walleij@linaro.org,
        aisheng.dong@nxp.com
Cc:     festevam@gmail.com, kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 00/11] Add imx8ulp basic dtsi support
Date:   Fri, 25 Jun 2021 09:13:44 +0800
Message-Id: <20210625011355.3468586-1-ping.bai@nxp.com>
X-Mailer: git-send-email 2.26.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [119.31.174.71]
X-ClientProxiedBy: SG2PR06CA0188.apcprd06.prod.outlook.com (2603:1096:4:1::20)
 To DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2PR06CA0188.apcprd06.prod.outlook.com (2603:1096:4:1::20) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.18 via Frontend Transport; Fri, 25 Jun 2021 01:03:40 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b7c4b27f-ace3-4c65-6a18-08d937751439
X-MS-TrafficTypeDiagnostic: DB8PR04MB5801:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB8PR04MB58017E7CC894FB8A31181EDE87069@DB8PR04MB5801.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oz8aQP8ARNto3Ak3z20ONv6oJgS3nweG/UoCXgbKtOE++gMFJuFerJAAVIvz4lOL16v3wK3tXLGmTzCbq2jfjqEkZjkiiYVWyT3OlMKrSzK+CpPR4RR+GsqsKXbvnNvGpnwAt5qQWHFNOdNJK46UW/B5p9+E5JOOoLeFXflRZcmWbprkJMAXLl0rl+GSTWb0q4TW+rGqg3T9hpQxtZGChyHIi/mo72NZjzy7DU4VfS19Asps8dXkzwryOiULj6j1lvDNb8jd4SbRdel9cl8cPfxfOeyq6tLB+g0JF3nvpn9EpxVumtG7mQmcn5Z9mnh1ICCafRtJTlaVMaNXNSCnzyGUimH6PZa9cSkz7TI2mcnlvmgF9CYtlQED297AwxjVsQNVz/uYUXZH32PGCkpFDmRIJNI15rzNgFemnRjE5Ezmo5hV7muRhPnqosQC9unU8uxlay7lXKemni5P4m7d+adrwZpFGySrN6jXoea62owljZB3B45nlr3UjqiNFX/fniaoVd2p9tmeBbteYKkSDRSLRVWKhS55SCzN6rYKg9YSvg6cefqVLDPNwfXIAP25dmSQBhRTboWhBp45tWGy1QWPoci9ZmjpQGUAjWinwiUHoOX+AC3vpNqjbj2LLpCkzc94nxFxXq1Xypf6Xf/lHhQfEXthIlxlKalq/IVb/ECkUCQAlz2annvPFJQBf7qHgw9sDCXHkrzoPXTYq9Q3Zw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(396003)(346002)(376002)(136003)(366004)(6506007)(6636002)(5660300002)(478600001)(36756003)(1076003)(26005)(6486002)(52116002)(186003)(86362001)(16526019)(6512007)(83380400001)(2906002)(956004)(2616005)(316002)(4326008)(66476007)(66556008)(8936002)(8676002)(66946007)(38100700002)(38350700002)(69590400013)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?PtRBSeKlkVKYoHpLCu4bXvNTDNEptFGi8xFuitIiqSUxL/76KA+6b3JYCVXj?=
 =?us-ascii?Q?mK6O0Zu7TTU/2VWa9UStJOtRsEY7reA/KqXP7RYig5Q/6vNhRMY2v2Be4Rc6?=
 =?us-ascii?Q?ldR1hdD9mJnirsjBvH3S0SJxGwfk3k9F7+xpyXkx7zdbgBhRfcOruNqADt4+?=
 =?us-ascii?Q?c+6XaARb3q+sCRScErwkuVZCXz/FXibDj36iUKD3T1ntZqP5vyP6rnDQXARj?=
 =?us-ascii?Q?JFMkOOxsTpbx00Yig96sMDtmr6atwTKaRaDjeNtFtHNXT9O3xQKF3AA0Wq29?=
 =?us-ascii?Q?SFwu2oh4SRCr5rgdf/jwrWgqpJAL0e5//R5kTfA8m/f9rzF+zgYv5B6RfLJS?=
 =?us-ascii?Q?I1iVvbqPQJ4GA5e8Vfbon3TeycEm/UASg2qnmTKreOQT2B4WEdugyJwPBD5T?=
 =?us-ascii?Q?sdT/OpKquVLLr7tvWsnasG4q4LBnHbi61jxUIlNlFMuqnuYRWG8eeFm/YlWi?=
 =?us-ascii?Q?y5krAIQljVzNNpzWgsoY7aaKismjTr9Q/m4O4nczNH3P8naXekDqyJFaKOTt?=
 =?us-ascii?Q?6zeZhlDYEHvzK/mqIgCll7vEpu8ond4EQepHjXahcT4Zkei2GEldqGzZ3bT8?=
 =?us-ascii?Q?Qz/uNEr1aKOatKNtx800Yg4BtAeNlIDx6dDA9M2WAbzZ0xGPJGVRl2ciJoHe?=
 =?us-ascii?Q?uiES0jnrM6pkMGWpZDC6SNunQnynsriP9v6ENG2+vYVRF0NbKOKZtgjl2nTE?=
 =?us-ascii?Q?OEyj3q9BCWbYSAaMs4HdPJi+ZZ7xBLu5j4YBlxg392UAk327a1xAxFF5w266?=
 =?us-ascii?Q?aGGGaGo0IUjY9F1SwPQN2StJsUP4ByEDYNHeXlNj2UgrwxipkwOnlluQQdk+?=
 =?us-ascii?Q?YY597gblmGga9GFa++bCtYhTiDnVdWBr0p/otso3RYnPDPvqRzLKNnloW3lE?=
 =?us-ascii?Q?shutGHleRlDimIACGtsHdUnWayfm3CqBPcHEKS3K8nUmsqGNoB4j+XmWID10?=
 =?us-ascii?Q?5XY80Axk2f+F78j2VdX5+gVi7EDksiuX+8k1s/4Yg5Yknby3C+KdlWBtUvYd?=
 =?us-ascii?Q?ltDnyVY02s0eXF//wyAnKnfE1O8dFj1nJeYt0gAqRVfV2MVc4ro8nKSQO/PG?=
 =?us-ascii?Q?vWiFA6gtDEemmO0yqwruzjrEQDK2IsGonrSxGds8e7v+2OYaYOXce8LT5fFP?=
 =?us-ascii?Q?4lj+TU2AWA0VG529nY1avgJWa8Ckcrl6hdEC7WwHtLuE/p8VuDMCntNORtui?=
 =?us-ascii?Q?kqUi8GehpAglrxRIwB4GGaA0VOrIHJumtXXlQDQ2zqR0a5gjPHuzOP3lOOpc?=
 =?us-ascii?Q?CxQUrCk4EBsovgBb3iF7N/b8daqmUzcNkIR7q7addJK8L95BCNU+EHQJppgS?=
 =?us-ascii?Q?rEe3Xy4nQauDkN0h56r9QIzT?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7c4b27f-ace3-4c65-6a18-08d937751439
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jun 2021 01:03:44.1884
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kbaoV9twDBZmFntC4R2lhSSgKbm2eoSYcOfCT29x654zabj1mOkGWYHAenj3XDP9mt1dI8Ycqwo8C/N8AZL+1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB5801
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
  dt-bindings: mmc: imx-esdhc: Add imx8ulp compatible string
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
 arch/arm64/boot/dts/freescale/imx8ulp-evk.dts | 148 +++
 .../boot/dts/freescale/imx8ulp-pinfunc.h      | 978 ++++++++++++++++++
 arch/arm64/boot/dts/freescale/imx8ulp.dtsi    | 474 +++++++++
 include/dt-bindings/clock/imx8ulp-clock.h     | 261 +++++
 14 files changed, 1970 insertions(+), 9 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/imx8ulp-clock.yaml
 create mode 100644 arch/arm64/boot/dts/freescale/imx8ulp-evk.dts
 create mode 100755 arch/arm64/boot/dts/freescale/imx8ulp-pinfunc.h
 create mode 100644 arch/arm64/boot/dts/freescale/imx8ulp.dtsi
 create mode 100644 include/dt-bindings/clock/imx8ulp-clock.h

-- 
2.26.2

