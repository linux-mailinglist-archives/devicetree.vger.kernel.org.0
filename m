Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 00DBB2B93DE
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 14:46:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727350AbgKSNpL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 08:45:11 -0500
Received: from mail-eopbgr80051.outbound.protection.outlook.com ([40.107.8.51]:21955
        "EHLO EUR04-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1727285AbgKSNpL (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 19 Nov 2020 08:45:11 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lMgL1hcyk2IdiP1kaMV6TkkXgUjsux/gVhSFmNhQQZEZIoOC3nxDCb/Up7bGmehTeUGZfhIUU1s6mPzSpRQDVReOk+2oNpEEKVjABvPn+vBl+V+fInjTarGITBUFuj37czniimDu6dpcfUPSPHzeM2e+oJ2IXsYoXE9foul3NLz9KoDf5DnMO51/W5bHQoLMxIrY48MyeooIX7086WhELGgWD0myvSHWTEeVNZ3ed5uCiZ3+dkHBqPZKIF+Cr8mUFa/YnLwCEpdHzMAeMRRj+bawcQN7Z9K2CWKzgCcP3G2M7DIbqXYrr9eZ0FqB8vx5q37POeLeXcTdz/Zoqufpew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PxX8Qw9CbePVxHtgOH8i2GgkUkfBvrOcRM8gNDngs/Q=;
 b=FotSj5kDewVCF/dcbDXPAn/2zxDB5swjFIio3g9Pl2OGGF+PsLSU8WuIb139g02kwV1rD2N+xVWuW2a1Xq0eTL6kQNCbYM/ZcysFwwDRBVCg1tk1lC2zAdijWmZOFYi41vl5Ie7sSieNyuHEHKGuh9/ywQQSQXfuweenzjB6ediDxqIGaXA5aTC72sv6uhXzoYXjWwbr6f6bFSl4CfIbLjadouJORVsgIOnsno3+NwyJBB/aexu7zWzScpyX06ITcCmZenFsRWGGBqepkuO3Wvg5keb8RrWcfj2bJVB671/lTkjS0dnMv54b3AtPXWUvzZZNBBj9jaHPdhMZGUjq2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PxX8Qw9CbePVxHtgOH8i2GgkUkfBvrOcRM8gNDngs/Q=;
 b=MoWdRa4zAKEVnjPhzZsXtaYRnZ2PDkDa5J1C18cPkkBjck06t1XhzghK6NjjM+s2I2CwJMJsg1WRjROUj4cnQk9QSBYbzkRpDLbKE2uERU4lmQR7PHy9IiZx6aygrrU5aoMu9MYmtVK6x6U125Im9fqMJ9YWfDUX4Ym+LmiFqxA=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR0402MB3784.eurprd04.prod.outlook.com (2603:10a6:209:23::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.20; Thu, 19 Nov
 2020 13:44:47 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3cfc:a92e:75ad:ce4a]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3cfc:a92e:75ad:ce4a%3]) with mapi id 15.20.3564.029; Thu, 19 Nov 2020
 13:44:47 +0000
From:   Dong Aisheng <aisheng.dong@nxp.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     shawnguo@kernel.org, fabio.estevam@nxp.com, aisheng.dong@nxp.com,
        kernel@pengutronix.de, linux-imx@nxp.com, mirela.rabulea@nxp.com,
        jan.kiszka@siemens.com, dongas86@gmail.com
Subject: [PATCH v4 10/15] arm64: dts: imx8qm: add conn ss support
Date:   Thu, 19 Nov 2020 21:26:49 +0800
Message-Id: <20201119132654.1755-11-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20201119132654.1755-1-aisheng.dong@nxp.com>
References: <20201119132654.1755-1-aisheng.dong@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [119.31.174.66]
X-ClientProxiedBy: SG2PR04CA0164.apcprd04.prod.outlook.com (2603:1096:4::26)
 To AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from b29396-OptiPlex-7040.ap.freescale.net (119.31.174.66) by SG2PR04CA0164.apcprd04.prod.outlook.com (2603:1096:4::26) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.3589.20 via Frontend Transport; Thu, 19 Nov 2020 13:44:44 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 0b7b1536-9fa8-4615-c1da-08d88c9147ce
X-MS-TrafficTypeDiagnostic: AM6PR0402MB3784:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR0402MB3784548F7CEF13B479C1ABE680E00@AM6PR0402MB3784.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3513;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mUCYjnZKVm2+5unLBZylGHVnGuy3aBPXWbxPBsht1wWeF2JHCFpV+PV9Q019tXNkYBxw5QwnTRf3fXzz7sFOmxHkqKc1cPYpsa+Q+/mqm/sTjubl4incJu67Iozg9p1jhntWwOmLRLNDMiFpzj3z2CDHWZTO8BjKg2/Du9GEWKp9ZJf9bAEzkiOFw7B6TGg7ali1RRCUHLt1LNQYOZD03rFDNC4VEiFkcU3hloovPFQ+Ki05GYfBQgCCgCijEaHBS5iKiofxP/+AEj21wYyum9gsrTPH7Tdj1qD5ijEZ23AIt8PfTHESp5xPQY3UTquZmEvGZMD+ALqiPSuxIiiJNKCoBE0MN1xTPwCdXQNNLxIuQqbdfnjfZw1Ucr9xPZBY
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR04MB4966.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(136003)(366004)(376002)(346002)(396003)(83380400001)(186003)(66946007)(5660300002)(316002)(956004)(478600001)(6486002)(8676002)(66556008)(66476007)(16526019)(2616005)(36756003)(6506007)(86362001)(1076003)(26005)(4326008)(52116002)(6512007)(8936002)(2906002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 7ZbCnVb9U+S/bUDKrw+iAnW7ys0hy79Flbud5fy8S/2b06gRFxpkPp1QkCqxExQqweOuq4zzpnHWcrjTghxsuSvk5Ohkg26n88z/qjWcSdhxeD18n8ROEWxkvKfTG7oo/DG9haVxf4EaKeCctyTLwKrRlKReUFR1ezA9lI5dUgJd2SGzHU9Kc1UpvrSSWPC7iXWXASqaFrlWRF8ZweyZm5/qjNZwDF9/4eBTdVvhGeXZcyE+HArQaOS5jjatmQwqvt3EXpKMkE48OOuiyWfi0t+3pE/KSLsms4OmFRwwUGTvfg4qTYQ6HkwRAXu72lPtcUIblteZkQXHF39Spmw9EOpBiIDqE4aYEhSj87hnpf9sxYaheQA7cK5CTJT6CTwa6JyvyqvWAWM7beHSl7l4b26UH0pmwIkq5R3MEGAQdP/iOJV6pE7Mbj7f2ts6zccHXhnCOiAhuFe7sGMlGWTU0zECWrxjWw10Y6Cs8BFlSnz5uBp9TxloLiqjy3r2lB93opn0YnneBgP301hvcGwvooOaHXaYGbnFEnEAN8aKyAC+CWAClF8cs/A9k0XZBvkRhqDekQt5FoUXKlQrOS43H3nGjx/Kcrz3QfkamT7uaehYsYwflw1+dmLDiXEogO63NbhTDHFc0xDgl0T/Z743xg==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b7b1536-9fa8-4615-c1da-08d88c9147ce
X-MS-Exchange-CrossTenant-AuthSource: AM6PR04MB4966.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2020 13:44:47.7902
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FAOQqtXyOgbpYY20DPYP2XShKbwK7WEMKiUGGdFPvT0cAyDZvwShKH7LkcxDtaPDe0hBR2GB8hrVmOsLUqUB4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3784
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The CONN SS of MX8QM is mostly the same as MX8QXP except it has one more
USB HSIC module support. So we can fully reuse the exist CONN SS dtsi.
Add <soc>-ss-conn.dtsi with compatible string updated according to
imx8-ss-conn.dtsi.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: devicetree@vger.kernel.org
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <kernel@pengutronix.de>
Cc: Fabio Estevam <fabio.estevam@nxp.com>
Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
---
ChangeLog:
v2->v3:
 * no changes
v1->v2:
 * change to the new two cell scu clk binding
---
 .../boot/dts/freescale/imx8qm-ss-conn.dtsi    | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qm-ss-conn.dtsi

diff --git a/arch/arm64/boot/dts/freescale/imx8qm-ss-conn.dtsi b/arch/arm64/boot/dts/freescale/imx8qm-ss-conn.dtsi
new file mode 100644
index 000000000000..dc47c5c80eae
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8qm-ss-conn.dtsi
@@ -0,0 +1,21 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2019-2020 NXP
+ *	Dong Aisheng <aisheng.dong@nxp.com>
+ */
+
+&fec1 {
+	compatible = "fsl,imx8qm-fec", "fsl,imx6sx-fec";
+};
+
+&fec2 {
+	compatible = "fsl,imx8qm-fec", "fsl,imx6sx-fec";
+};
+
+&usdhc1 {
+	compatible = "fsl,imx8qm-usdhc", "fsl,imx7d-usdhc";
+};
+
+&usdhc2 {
+	compatible = "fsl,imx8qm-usdhc", "fsl,imx7d-usdhc";
+};
-- 
2.23.0

