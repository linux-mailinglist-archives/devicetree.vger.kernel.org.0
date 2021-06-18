Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DAC1C3AC411
	for <lists+devicetree@lfdr.de>; Fri, 18 Jun 2021 08:44:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232418AbhFRGqX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Jun 2021 02:46:23 -0400
Received: from mail-eopbgr60074.outbound.protection.outlook.com ([40.107.6.74]:37251
        "EHLO EUR04-DB3-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S231826AbhFRGqW (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 18 Jun 2021 02:46:22 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WZKpyJqAge0YbTHQxOA5zaO/4B6osYj34R49E8Wd+MBJccqhCHhJucoNNtk/gqs88o31W87d7KHMEB92bEviD37Q5esMihbI7J9KTfvHwvpzYVelzZ2kkB3qhrrt5n1+sBxf4g/i7W8DhzDwiYefTf/wY0KvOTXIzh3dWurFaEfTtvsktF1kIj7M/uh2cL/7R8o4lXgtu3qE7ZltZmTSImzGJSqOv+w68YCOvfgCoOaN3OkwCqQLoqOOApp6PJTbwlSwEq2XOsDUB1F1bQHI82q6JGhu2wtu+jQjx61jy79NDHoA380N4dDRrhIKcouugoYTOaUuMysq3IjodmwFkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZKjoYbPEoJANvH3lpi7z8tS4tdB8eNbG7hgANsIeLC4=;
 b=WsrZz1Bp9SMsne8o19cnh2uWohWPC9Zc8BZjh06JpYWXzRZ9cfrsQqtmSbDvZLB8qnK4ekM/ayp1hqw883bVLo7ulhbexehx0niFTzXfAmfXHhwtPnRJUTcJqugkkznsmueeL/6+OErL+I5CmW4kc0C9Dk7vCj2MdXWuN7ggPQpwogGcvLucuimgCLz6/4Ay+v6B5NAbBYQb+TE9P0x7R4uHM6F1BgSq4l+itozwuyFdLlEIg8Zg9uHmYx+TB353PdvmysnUHOMuU6/QPHpkjtJsb2jleXWFhrOHePa97WlUSN/xjgWbWfmDKtPfxrjrwlw1aOdkwh8UykVSi6H1uA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZKjoYbPEoJANvH3lpi7z8tS4tdB8eNbG7hgANsIeLC4=;
 b=BFWP8MUbE1U6tz6fpdGKjtKg5oOENk/WUYUl5nymRmf4OXct9agOdLvnSY74I0QsMu3fbKBdWk27UMFs4a5Om6ZBJrOPH+zNeU9tQn8qT0Lt5EbyakdnnxKF9EiNbmyOtb7cQCH0kEOU4bLMx64pv/TwS9inTyEfRLngLUJ10kU=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DB7PR04MB4940.eurprd04.prod.outlook.com (2603:10a6:10:22::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.21; Fri, 18 Jun
 2021 06:44:12 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3164:e047:376d:4a4f]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3164:e047:376d:4a4f%7]) with mapi id 15.20.4242.021; Fri, 18 Jun 2021
 06:44:12 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org, sboyd@kernel.org,
        s.hauer@pengutronix.de, linus.walleij@linaro.org,
        aisheng.dong@nxp.com
Cc:     festevam@gmail.com, kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 00/11] Add imx8ulp basic dtsi support
Date:   Fri, 18 Jun 2021 14:54:12 +0800
Message-Id: <20210618065423.3424938-1-ping.bai@nxp.com>
X-Mailer: git-send-email 2.26.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [119.31.174.71]
X-ClientProxiedBy: MAXPR0101CA0046.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:d::32) To DBBPR04MB7930.eurprd04.prod.outlook.com
 (2603:10a6:10:1ea::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by MAXPR0101CA0046.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:d::32) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.18 via Frontend Transport; Fri, 18 Jun 2021 06:44:08 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0ea6e808-e943-47c2-7e4e-08d932247b76
X-MS-TrafficTypeDiagnostic: DB7PR04MB4940:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB7PR04MB4940B65BE7FD57A51C3D6D8B870D9@DB7PR04MB4940.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QH3AEDD/jen9ae87rPgm5aa94jGz37eY0UOZXJHgIAdXLX7BneVA0ZWmQ57GSoTQ1xLe1NYsFpvWE/gWiwwt0bNhF1PXYyJsK9SPYLLqPlveqxL82FIsse6aFP1GTHTUC2qkNem5KSdF11nIAy26ySgNdoBxMgerk8VPYrqryZDfEE6PetRf8wOZVaNx9RNfHG5sneA9KdutvvasZYNxsgBBQ0tV6OJB5YGh9ngBNEurn/YwlFnuggzxgaM2qkhtCf0gSHE3+uFtZKZG6rJQ1NbABBPaIL2O8ktlENZsf8JeS7rLV/XAd0FCrmPt9YhCQq35LiN0kGS5ba8U7b5K5Ct37UnGtj5+rxuHNxvDW9q5NqHunadie41bPm18iEX6flXHhDaQK9p+k0TEYq7OqLChcSWrepMbYjWhsBHokB2taWralCac2qKOzKM55fgpWFoWZ+MC6BZYlf4p1UV2qfubJFoGoDzxGZNRk0dETSNJKallZ0NL0u7V6fZ4C1sgmMnjvFBBYzTjVkDvHL/5/uaR7UlmvO3wFvqj5Pdmx/I7xuAatC6FIF3H5Wbs6OzKOrqd+O99bV2l6pp82PatKnr0RWuAbDf4A+JHW/87k6IxqLo3A4CleRT6UjHSW5K9ByzHhiTfqx8GbNMbaTdStQ3KkFSpKvELHlk1P7VSeyD3Os6KMgC/7641mKI+nxsAZsb+QLQRLklU/xY6pontog==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(39860400002)(346002)(136003)(366004)(396003)(5660300002)(86362001)(6666004)(38350700002)(1076003)(52116002)(6636002)(6486002)(316002)(6506007)(38100700002)(2906002)(478600001)(8676002)(26005)(6512007)(36756003)(4326008)(8936002)(66946007)(66476007)(956004)(186003)(16526019)(66556008)(2616005)(83380400001)(69590400013)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9R5tDwo/h5XAVPzxO4amGcmUj4u7azkuWnIIlG87I5sLHXvv7s6pv2E0XqiY?=
 =?us-ascii?Q?+RbScYJDVv6VIdiXfZlc6K21r5Xp5FI06KQ14jzfZtv36vGHejvWFxUN/ONr?=
 =?us-ascii?Q?brrYfLOrVR4Uc5QqbHauIND1etkSz+Ugz7ncvDaemB2JHL6hpOxf9bfOvgpH?=
 =?us-ascii?Q?MVVznhqLBW6DW1Wp7hb8Nts04aT/ScqUTvVoJchoULI9I+56fd/VbnUyPryX?=
 =?us-ascii?Q?8L/zz6DQG+91yuSpbHARSH3RO5TlAUPFEzLvxTAldxOEOiDbfz3cOL2weBax?=
 =?us-ascii?Q?2cpi7u+MZyVm62jNkM0Osf9nPGWEn5MwiBxYmcD4dK5nam9OG3NFZIWJocij?=
 =?us-ascii?Q?Ms1t3BebyigeByWbIDCt3hC97xLNVNtLjSlL3bQhyEJWzb1IBQV9w+AvuFqZ?=
 =?us-ascii?Q?uqKITYbO9XwGu7KX0u1d1VMmmlA8CeOHUQASxu/U8po52dXZ+S4mfWp193BM?=
 =?us-ascii?Q?L8L85hxVbqQOFenqPWjyhMrZPkYwqGDxVFSeyh2disTDqVh1ylo58P/6SsTZ?=
 =?us-ascii?Q?R+WaalsIXQHl/6h/0WYub4MpBpIIbImlzsmWhom6z0GlqehlB9VO53IqtS1H?=
 =?us-ascii?Q?i/VMrQQherDjsQ0OpkByfqXWhUsWI7kON4qfjHcjKYYsFCJDS57/KCFBPis6?=
 =?us-ascii?Q?gJ4sekELOVpHMqqUxxHKGUz+dvPIrATry+ImG98HYJ7OUPiCB1IldAflTgv4?=
 =?us-ascii?Q?i07k/SBHw0ffOc1jk51DnFqlxkhJT09+E6i3Ta4qIzd675UJh09jp8koaGRT?=
 =?us-ascii?Q?FoUYTN8nwsnE2eY/u5LcM+sxBS5pVtXNh6Y4vGw5i2nEA+/UXCc9yS7XqBYp?=
 =?us-ascii?Q?bqCIqswq5oN/tR/CfQ+6ed5rB1I/f9o8swX4lIeU7UQRl9vngoqxm8hAjtsU?=
 =?us-ascii?Q?WlopHGUgJrPS3IhojE2dst35D+J+JW/wm6AqAbsR4NtAOQIH0/5nru2OVLp1?=
 =?us-ascii?Q?f98DAkHaCC5oM9GqHPpoXPUz3x7nCQ082D0rXKxvnJT7N6OQyrpJfEwk5cq5?=
 =?us-ascii?Q?FfCLgZ3BQUw4LgJgYKQv7S2Xz7wIKlanpVZx76WSB2g45iTqOCpoenc2olyl?=
 =?us-ascii?Q?bfNjfyB+uyqn1sXNMuZZjxXBC0sdnLJmMR0CSwk1RyhiIhX9sFQ18xClq8oq?=
 =?us-ascii?Q?MmTvclKzEQVUUZZ54k9DV4ugBQWcfBR/mz7TOHIdlKsgV9zpR+G+w6ZPWGSu?=
 =?us-ascii?Q?MOuL6L5qpqOftbzmFzZgQYU7h5Lx5QS+cbeeJWbyT/8zEgffTo7I7hxk+Ima?=
 =?us-ascii?Q?qr2Ks4RDIFEgVP3WwVhLYv9cJpzjM5h0JTB5f5SBG2e1gibGbOavEzzOb/ys?=
 =?us-ascii?Q?K29Fpmr/qJswfNrS0DnH1Gi5?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ea6e808-e943-47c2-7e4e-08d932247b76
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2021 06:44:12.4117
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Uo1C3XtFtsZAM8qd7PJoVD8jIQtcz6nVH6wQML42h1j6xGFOo3sJeP/h1UGZEufkMBY8sG2lw89HZF0/msgVDw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4940
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

