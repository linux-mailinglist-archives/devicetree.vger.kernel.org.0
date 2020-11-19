Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6B7DE2B93D2
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 14:46:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727081AbgKSNoR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 08:44:17 -0500
Received: from mail-eopbgr80045.outbound.protection.outlook.com ([40.107.8.45]:10126
        "EHLO EUR04-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1727066AbgKSNoR (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 19 Nov 2020 08:44:17 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k05y4WdZ7++jcl/VQ4/082PbhxwSTfegQmAxE9qvSRn1rVrRE98COgl2Cps7KKYLs53TH50ew7ts7OeAjH2P0VgOqWGVSols0fapUIBwnZ2UtYQ5RiVx7acDOaqF79JSmCCT3WA2aXNm1x0p3f/ZRqyic5eKL2e+RkBon/WMYjRV9kSEM7jSzSFzLUVHx6oouqS4TbtC9H2ESXjhSugLWMzhAFd2ceu+4VbdJuL1mB4kGsSK6MbtNTiv9//cDUedPkXtA0mSMFkHeQBSNS4R6jNX3E8t/mFWtWfapYB9120HU9yd6wHLspKkwDt7mCojfVqkmDXvJF/lb9C28ju5GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0EOXdjRq+EmZ/tH5Bxxpo4ypMSQnlzgJ1TdKh04+wFY=;
 b=ZICr5gXpslcnV8UCdMqXT3f40nyBvY/B3h5TZEjQhIEkMo//G9+UDyezIWJyBnyonQDwB0T2Ev2Nb/eNlMLTw1mIA+F2vwmTJE3tmi8AsFbL4f7wWI15dplRg2nB6eQLkh4NUVhVzDV33TTyF6I0mP2OmE7kVDiKnGSA0NgiR56UAdDQcSWUXa1ocM+CsH/+Z0YNhdfk4lPRMqqEX29TGxjE/SnuB7wHXAQE8ASPLhVnsVMjgFhEJULT1MMNxUbNQ718pTQtspgkI/S1E1afD6qzYdoOfHGRdcIYhk+f1sARhrL918XiY4M9jXgXKlsZdfVtghB639u8K1iAsMsvwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0EOXdjRq+EmZ/tH5Bxxpo4ypMSQnlzgJ1TdKh04+wFY=;
 b=OBqgUu9mFGpGC2wj4w8kSSXJcIXSinrhU9J66NnGKrv23OS6whPZTX6x5X/m8eu/NZ3tTWp2nipXjLESffSFEHwPmZi2h8t5cm5HT2tJfn947DFqtlzc0JUTV4u/xCr4A5vXjSn6RFnTyrU6EtLo8w+m8+z6qcM4XZyCVPyeunY=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR0402MB3784.eurprd04.prod.outlook.com (2603:10a6:209:23::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.20; Thu, 19 Nov
 2020 13:44:10 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3cfc:a92e:75ad:ce4a]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3cfc:a92e:75ad:ce4a%3]) with mapi id 15.20.3564.029; Thu, 19 Nov 2020
 13:44:10 +0000
From:   Dong Aisheng <aisheng.dong@nxp.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     shawnguo@kernel.org, fabio.estevam@nxp.com, aisheng.dong@nxp.com,
        kernel@pengutronix.de, linux-imx@nxp.com, mirela.rabulea@nxp.com,
        jan.kiszka@siemens.com, dongas86@gmail.com
Subject: [PATCH v4 00/15] arm64: dts: imx8: architecture improvement and adding imx8qm support
Date:   Thu, 19 Nov 2020 21:26:39 +0800
Message-Id: <20201119132654.1755-1-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.23.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [119.31.174.66]
X-ClientProxiedBy: SG2PR04CA0164.apcprd04.prod.outlook.com (2603:1096:4::26)
 To AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from b29396-OptiPlex-7040.ap.freescale.net (119.31.174.66) by SG2PR04CA0164.apcprd04.prod.outlook.com (2603:1096:4::26) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.3589.20 via Frontend Transport; Thu, 19 Nov 2020 13:44:07 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 766bfb9b-7d68-4267-95db-08d88c91316c
X-MS-TrafficTypeDiagnostic: AM6PR0402MB3784:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR0402MB37846E20F75CFF49A5D1092580E00@AM6PR0402MB3784.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0SJrfVDGjBmCA6w/ZsnBfipIhl6y/Zf3bcPNlWAQVVBSdClAfV6wfrzYhaeqd3sVABJuo6oFMYfKc/Jw0trVcDDhTfcUBnsn8cvXU/kc/nDnSUY5gRXw3+qfwculdizLVPTSQWphREpgZBEuk7Qw40Lm4/fQn2z94i+7hQpjn/jL6mffvl4eDH/QAAurH9oJfrFUXasN/e4qlDdTf/RaPOpAa3S9SFK37TJaT/dvV2yF2shugDOqmih69zLOY/kZynBjNRr1Sq9dRuGARHjsZ0eMDcZ+dtAURhzfB7gExxZIKgvGNk4B880uVGd6S9VtpY/cV036KAug9kxKrMmvAXdBXB/5JnN9HRA1iM69Hyk2MHjBcXIYo9gZNPhu4ed+
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR04MB4966.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(136003)(366004)(376002)(346002)(396003)(83380400001)(186003)(66946007)(5660300002)(316002)(956004)(478600001)(6486002)(8676002)(66556008)(66476007)(6666004)(16526019)(2616005)(36756003)(6506007)(86362001)(1076003)(26005)(4326008)(52116002)(6512007)(8936002)(2906002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: w2q7GLVfOVf0KpAYZeR27RRM6quZVM6eevgXW6ES+iJBaJjoV/c81nJC47aY8xfBdKbPklfsQOoGx40OViZCV0mS8nNF53Hn3hDkwfMVVsgOosh7URMxriLpSarXTL+qCAn0zyN1MLBs4D5P64mPNr804ZgvQMYUtiFMRhnSnUyk9pbBigIwdfhIId9DO0UxhUtgPdaQJ4AflrKxHz2+gGnJlotG9I7+IaSCMN0FBkysj3sLqT+E5FCsIsVHSgBx+/PrA+wHIeSPqB1+jnGqy8K2lnzgxKdJWsUv8ZAmt9YcmvC34y0bezuczN97kbfKY2ecv8knnlI6QNzI/hwu/Z9fk4K0xIDI2jyblmvi6X0vafW2KTUQOZ90oj0IZ86t3dvbsMVlICoiqyDitSDgSvyuI4WvlqCI0q3R29QXmdW3ej7M5eHAfCVPdjO+GgR8T0ErSanLCL7scGQL32zQK8tEhDqTZ4IbiMXcmTzd5jrblfRxvs0NY2c0A0u8QlhVR8i8U1tL4U952R6vcAx3mqZ49s+VR1y1L2EF4yiRPpCXl62rILl5hvTTvjcuIBTe73lkKrO12G7TubFB0AiH0HGgXwzeLDJq93f+ScQGRl3apjivPWZk295m2UxOBR40LYaXSAa1J62vHiYgjOgLjw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 766bfb9b-7d68-4267-95db-08d88c91316c
X-MS-Exchange-CrossTenant-AuthSource: AM6PR04MB4966.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2020 13:44:10.3929
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0nciXRnTEzkfYRXzEp26Lqthr8Ajf5Kn7Py6Of+YTv0dOn3Jqed39zZy5ILaqhZ4JsWis1UHVVZii/iR2UNHsw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3784
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

IMX SCU based platforms (e.g. MX8QM/MX8QXP) are comprised of a number of SS
(Subsystems), those SS may be shared between different SoCs while most of them
can be reused like Devices Resources, Clocks, Power domains and etc.

This patch series aims to improve the MX8 architecture to comply with the HW
design to save a lot of duplicated codes and benefits us a better
maintainability and scalability in the future.

ChangeLog:
v3->v4:
 * mainly rebase to latest kernel except a few very minor changes like change to use
   new scu protocol binding which was not supported in last version
v2->v3:
 * use clock-indices property instead of bit-offset property suggested by Shawn Guo
 * rebase to latest shawn/for-next
v1->v2:
 * change to the new two cells scu clock binding, so original adding scu clocks
   patches were removed.
 * Move scu pd node above clk node

Dong Aisheng (15):
  arm64: dts: imx8qxp: add fallback compatible string for scu pd
  arm64: dts: imx8qxp: move scu pd node before scu clock node
  arm64: dts: imx8qxp: orginize dts in subsystems
  arm64: dts: imx8: add lsio lpcg clocks
  arm64: dts: imx8: add conn lpcg clocks
  arm64: dts: imx8: add adma lpcg clocks
  arm64: dts: imx8: switch to two cell scu clock binding
  arm64: dts: imx8: switch to new lpcg clock binding
  arm64: dts: imx8qm: add lsio ss support
  arm64: dts: imx8qm: add conn ss support
  arm64: dts: imx8: split adma ss into dma and audio ss
  arm64: dts: imx8qm: add dma ss support
  arm64: dts: imx: add imx8qm common dts file
  arm64: dts: imx: add imx8qm mek support
  arm64: defconfig: add imx8qm mek support

 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../boot/dts/freescale/imx8-ss-adma.dtsi      |   8 +
 .../boot/dts/freescale/imx8-ss-audio.dtsi     |  68 +++
 .../boot/dts/freescale/imx8-ss-conn.dtsi      | 184 ++++++++
 .../arm64/boot/dts/freescale/imx8-ss-ddr.dtsi |  18 +
 .../arm64/boot/dts/freescale/imx8-ss-dma.dtsi | 202 +++++++++
 .../boot/dts/freescale/imx8-ss-lsio.dtsi      | 311 +++++++++++++
 arch/arm64/boot/dts/freescale/imx8qm-mek.dts  | 144 ++++++
 .../boot/dts/freescale/imx8qm-ss-conn.dtsi    |  21 +
 .../boot/dts/freescale/imx8qm-ss-dma.dtsi     |  51 +++
 .../boot/dts/freescale/imx8qm-ss-lsio.dtsi    |  61 +++
 arch/arm64/boot/dts/freescale/imx8qm.dtsi     | 176 ++++++++
 .../boot/dts/freescale/imx8qxp-ai_ml.dts      |  20 +-
 .../freescale/imx8qxp-colibri-eval-v3.dtsi    |   8 +-
 .../boot/dts/freescale/imx8qxp-colibri.dtsi   |  12 +-
 arch/arm64/boot/dts/freescale/imx8qxp-mek.dts |  50 +--
 .../boot/dts/freescale/imx8qxp-ss-adma.dtsi   |  37 ++
 .../boot/dts/freescale/imx8qxp-ss-conn.dtsi   |  25 ++
 .../boot/dts/freescale/imx8qxp-ss-lsio.dtsi   |  61 +++
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi    | 423 ++----------------
 arch/arm64/configs/defconfig                  |   1 +
 21 files changed, 1444 insertions(+), 438 deletions(-)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8-ss-audio.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8-ss-ddr.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qm-mek.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qm-ss-conn.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qm-ss-lsio.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qm.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qxp-ss-adma.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qxp-ss-conn.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qxp-ss-lsio.dtsi

-- 
2.23.0

