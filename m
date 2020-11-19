Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 54A172B93D4
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 14:46:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727150AbgKSNoX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 08:44:23 -0500
Received: from mail-eopbgr80070.outbound.protection.outlook.com ([40.107.8.70]:56896
        "EHLO EUR04-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726949AbgKSNoW (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 19 Nov 2020 08:44:22 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aBi+LgND2t+fB0X5ZJX+/9LILmxL9dxyTOshGcDvlbiYaIB+EYN3BobhxecmfDvU3f0kYRxrDx/GyRK8/gg6rhgSNRvkDSRe1+o6FfrOxuiaTzoOBjwcVZmI89VH2GOPm6UoZ8j0jIpaN4pRXUCZWp3+hb5UBIdsOpJ6OcPN0TNoUy0i95ZzmtwpUyXGWvVFL801psjxBsylkJcMCIsf7rVVibyVFTNYOYhfNi6LUG1zieOmwOUt80vZY04dsgNBE10bbBLKUa0Jq91ltLQuAzAoyDq3iVWHlbl1YobzJo7a5PbWb+BYA8UYEGFCfM1VvMNQhMRe4oXaI0p9n0fORg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oW5/y3tlproinv/TNrcbKgVDYp8sbYgWBwIuBvZTZuc=;
 b=L3AOZ2FMGunpp8Zp+zPS+jmbIvFlza0OTufPJFPPTSWG0xwEKwYrkBe7DRkUClCSnFdYsyWjcknhC28qhbzzPG9lfqH15GTatKRbXGleTzznSmKsu8gLnEYiwV+Dc0XgSFntGcyU1WmdeQ+RwDXNyczBXShVusbT5j5lNs/3PkcWuzCTQS1RbTXSmXO/Mdx7vYbkBfBOMDc+8GEuTVknknflNu4plH5H//18NtnGxaclwrAqZ8pWqeQK/XGlXxVXu6uYjgCKPeQCl6lVtY9T3pN/JYdwlEKWN5jrkQ7nEtjc6owaLIIaWCFyQOKhbiV8QX8xwsb9t6h0zPMbyoTt9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oW5/y3tlproinv/TNrcbKgVDYp8sbYgWBwIuBvZTZuc=;
 b=F/OyyYR7e68GsXJL9c63AaoXKqn2ieBGpvm7zQWrvpt3d0swQWbpmhuGq9cgkBtvb1v0Hm4h+syJPwRx2uSd7wTpNQNJ9dboLnqELvSCeaEhxDbwkgepcubZl0rg77itFa54MvUn3ZwXMs7MqXHBboe9sG3OESrrfWM93MkiLDA=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR0402MB3784.eurprd04.prod.outlook.com (2603:10a6:209:23::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.20; Thu, 19 Nov
 2020 13:44:18 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3cfc:a92e:75ad:ce4a]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3cfc:a92e:75ad:ce4a%3]) with mapi id 15.20.3564.029; Thu, 19 Nov 2020
 13:44:18 +0000
From:   Dong Aisheng <aisheng.dong@nxp.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     shawnguo@kernel.org, fabio.estevam@nxp.com, aisheng.dong@nxp.com,
        kernel@pengutronix.de, linux-imx@nxp.com, mirela.rabulea@nxp.com,
        jan.kiszka@siemens.com, dongas86@gmail.com
Subject: [PATCH v4 02/15] arm64: dts: imx8qxp: move scu pd node before scu clock node
Date:   Thu, 19 Nov 2020 21:26:41 +0800
Message-Id: <20201119132654.1755-3-aisheng.dong@nxp.com>
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
Received: from b29396-OptiPlex-7040.ap.freescale.net (119.31.174.66) by SG2PR04CA0164.apcprd04.prod.outlook.com (2603:1096:4::26) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.3589.20 via Frontend Transport; Thu, 19 Nov 2020 13:44:15 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: b0b58738-d413-4bf6-3e3e-08d88c913675
X-MS-TrafficTypeDiagnostic: AM6PR0402MB3784:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR0402MB37846AA2E2C9316324C8209680E00@AM6PR0402MB3784.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:397;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OAc7B7P8uvJ5AlCMhw0oSddz/pTD1sTlj8VYj+BMqDZUXqF45WfIkBSVIDrBKJEw3aA7ITFXHmBA23CD3Ro+Fy4P0GYaRkrXa1ZnEJnad/wbuy0ikCbGy2UfIVuTQznKIGqDJpSfifR2JLvPEmvSIfjK5EZJFKP6So8fukJgom5QAGALX9X7BwK51IL+efp0YD1hgof3zexu97ao3vY75l5XLFFGOVyJO2udC5opIAKeT0Wtx7qOXqWOHEQTsoVL3PwQQY5bX2sced9TckXrz3Px535O9dIuo/bWhQEs9N3G8e2XWzuPwiZxvF9ZwDEulqC5R5SamIcvheNFURBH3Rf7Lv/1bQMzWJf3qRsRwYQREjE1gOJ7Q3SilyOIgOI6
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR04MB4966.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(136003)(366004)(376002)(346002)(396003)(83380400001)(186003)(66946007)(5660300002)(316002)(956004)(478600001)(6486002)(8676002)(66556008)(66476007)(6666004)(16526019)(2616005)(36756003)(6506007)(86362001)(1076003)(26005)(4326008)(52116002)(6512007)(8936002)(2906002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: wr+jH1sTj+IVbqxo6OFWwaJB9/O1qAr+IXL0c//ioATee6DXtwemfAr3dvUmARK0BV30kzcnFe/grpnR8D8SGDoNdN55Y3QZ5rR89fOvvnRQrEooT0ZxBmwzO613QhJvBu8mPYKN0edllm0cKD3sluBO/Kr8ZbFdDKzlZeJZvIkdRxAvdqqZQoOgCY5cagUr6jbLYg58GnMP5Ct05/d25ESGUgyoPZ0+wIIv/RFyVv+vywkFvdjtvnjVmqcUkxcej0wrdw57DzeNYKJDltSY0AtRahqG0Uzt1kv0zsGNjoGjYs1NgwKiijJJg6I7u7njS1xvg+QoccIUOZX+aI9RUOhszxnjFbKe49GvR63r5/avcCLUTYngzDS4lOeJ40MYbmIhF3jz1Hf8wRfZRRuEWzqsbSHE6Y24Jt+2S4pYElukGvKU7CJ9aYpKuqO4w5xMxEBO9B1JMor1V9yPR9KSPeLECqCVs8pe0Q91g10liULcxlGrp1klHIu9SOQl/6noJB/56ObfA87LdFJ1DhO5ryneEClB3aPZU4Uk6AuGaNXAFV6othDXrLR/v+BJeXWaChzYJWwy6PSchrxR6KZIiRdgm6j29VnuMPncTBmI9A9MlMxFl7aV3VefLyj+iInalt78DQCbAnTQMGhxhEHhkA==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0b58738-d413-4bf6-3e3e-08d88c913675
X-MS-Exchange-CrossTenant-AuthSource: AM6PR04MB4966.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2020 13:44:18.6813
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X+5RDYUtOEqdhS1olf/UZpt6T9jyNe2gBBQnyaAsRRO6um1IeTaxJLht8jpK1zwiNl72z/Ap6X4XM78t1ATRLw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3784
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SCU clock depends on SCU Power domain. Moving scu pd node before
scu clock can save a hundred of defer probes of all system devices
which depends on power domain and clocks.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: devicetree@vger.kernel.org
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <kernel@pengutronix.de>
Cc: Fabio Estevam <fabio.estevam@nxp.com>
Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
---
ChangeLog:
 v2: new patch
---
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index 56da25b12950..f4a2a76ee894 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
@@ -158,6 +158,11 @@
 			  &lsio_mu1 1 0
 			  &lsio_mu1 3 3>;
 
+		pd: imx8qx-pd {
+			compatible = "fsl,imx8qxp-scu-pd", "fsl,scu-pd";
+			#power-domain-cells = <1>;
+		};
+
 		clk: clock-controller {
 			compatible = "fsl,imx8qxp-clk";
 			#clock-cells = <1>;
@@ -175,11 +180,6 @@
 			#size-cells = <1>;
 		};
 
-		pd: imx8qx-pd {
-			compatible = "fsl,imx8qxp-scu-pd", "fsl,scu-pd";
-			#power-domain-cells = <1>;
-		};
-
 		scu_key: scu-key {
 			compatible = "fsl,imx8qxp-sc-key", "fsl,imx-sc-key";
 			linux,keycodes = <KEY_POWER>;
-- 
2.23.0

