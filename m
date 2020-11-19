Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 882D72B93DD
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 14:46:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727289AbgKSNpJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 08:45:09 -0500
Received: from mail-eopbgr20041.outbound.protection.outlook.com ([40.107.2.41]:49878
        "EHLO EUR02-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1727333AbgKSNpJ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 19 Nov 2020 08:45:09 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dwnniV4oqKQezOviP6reUz2exfVHbkqwyiFgd9BQxcJufUY04GHdcn0bP03wejoALCnIsWltckqhBP1rLNK3BMx+yBstZmoAfO9q+OS39pjzLyfG3Z6ZYIReo7xFoKYpqP3fxwWh/jWH3pZUZntrJRKz9atKZVu37aCDPrP54gnz7fxcv3UakTHmobXztnsUNV7/RgWooayj7+QR5oKPbsVJ4c5pBTwoT8fayD6lu9LK75JMuh462S4/uzufXIwNIIz70tY29UoecN5AbW8pn1MMbc6grX33pnL45c5lhRJJXYaUcQNdmQTEQ5GJGwfqB3bQSfjP9dPCCmt3ygCCUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ONx5wn6x0u8tpu4gVV4d5pw+v84cjQwPsCFOz89Ozgw=;
 b=cqCzsFxOcifGKkMCC1rabfEV9648YHZ4qYH627lTXWkYYt3Nf/4LbupZd2YD4fo6NHFjhvN1QoB6MpK2zt1+/qOsjOklLBUcwfEbqtDoxFJegK7+zJHtmqkXwlrHW3+CABEIzCY5yjFEYC8xSFIaOzo+uX7Lthyv6UoL9Fu0+DHUomQNePpyd9wCReMEsZxWPLTAew/zkfqUyJTUmle4Toqur+73TpGSxjdZKO+F3Jsa1H/fm4fxyrFVDM3VBkeoCNDL5VTP+4qTTl5PGfk9YwOqBQjyiOnYpFSup1aVFEbFiWdC3gvFzK5CjXlULWvAJAWSlFCM937nD1xR19edNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ONx5wn6x0u8tpu4gVV4d5pw+v84cjQwPsCFOz89Ozgw=;
 b=SFlKuKiKHMH9YSEv9B2fjGv6ZYNWcum7D9E+EbD2ZYOX0B25ZaoDzG0+scoO6eWdflnsGZ84En8Mcikb91gjSikbcUwYL4gfWH8hPRB+lFNyb9FHEja5q+uoL6aoAfjdvkabVOpks1C+/BSs/Dk32gtJWnpavShtJMExUU2xXbI=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR0402MB3784.eurprd04.prod.outlook.com (2603:10a6:209:23::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.20; Thu, 19 Nov
 2020 13:44:44 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3cfc:a92e:75ad:ce4a]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3cfc:a92e:75ad:ce4a%3]) with mapi id 15.20.3564.029; Thu, 19 Nov 2020
 13:44:44 +0000
From:   Dong Aisheng <aisheng.dong@nxp.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     shawnguo@kernel.org, fabio.estevam@nxp.com, aisheng.dong@nxp.com,
        kernel@pengutronix.de, linux-imx@nxp.com, mirela.rabulea@nxp.com,
        jan.kiszka@siemens.com, dongas86@gmail.com
Subject: [PATCH v4 09/15] arm64: dts: imx8qm: add lsio ss support
Date:   Thu, 19 Nov 2020 21:26:48 +0800
Message-Id: <20201119132654.1755-10-aisheng.dong@nxp.com>
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
Received: from b29396-OptiPlex-7040.ap.freescale.net (119.31.174.66) by SG2PR04CA0164.apcprd04.prod.outlook.com (2603:1096:4::26) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.3589.20 via Frontend Transport; Thu, 19 Nov 2020 13:44:41 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 3247afd6-adda-44d2-41dc-08d88c91459b
X-MS-TrafficTypeDiagnostic: AM6PR0402MB3784:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR0402MB37844BE84CED6373DBDE770380E00@AM6PR0402MB3784.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3513;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hTksWDgIkXBe/NQxd7wghCiYONinZb75uwwsx5FUdvCYq5yIpMtxLojY3bGiOPg4voku/6Kyl0Pe+nc7ejVLovmElTzd2jGLzn+vqIL97yOeQ4B+PvWCQZifyvkyz2noo9qvwrZigH9F64USaFp+6rd1wvCPlILpaB/VQYp0bQY+Ovq1glVO+bek5Fbw6EeMBCK97V9mriK+HQTHMPaOG8k8gahisCuIhv1H3xFCKgkcQ69H0uuxmP0LBMznr0dvmRuipIBKMSZA1/NRClApp6f3pe3hc4JD51wZ2l4OnoEWp95BO301IPhpmRoMUFegZWhKeyRpN7IjEA5Ej9S3p2JWvQorOvvWCJxwr0NbGmOdS5uPyKKlOh1mCi2LUrgK
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR04MB4966.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(136003)(366004)(376002)(346002)(396003)(83380400001)(186003)(66946007)(5660300002)(316002)(956004)(478600001)(6486002)(8676002)(66556008)(66476007)(16526019)(2616005)(36756003)(6506007)(86362001)(1076003)(26005)(4326008)(52116002)(6512007)(8936002)(2906002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: aWDeavOc7tiUhyEuoIqqLTA6I+9iFsu5CzfmR8qWWmn+QufrTqC/2WwE5DGHW33cS58PPksvs9SGpKAAQd5wIIT56rtt/blSiCdKkr/fR5SO/gtELzsk2W4A87h2rCsnsdN81S085VGyyt7CbGAQ4RmeBgZptqKKIT1oq5qvhinrBQZ0sEsLQGP0g44shUQi6e2sK/6VgOGrlVqMq8zIiFYwAemf0UqiCVMHuuSjmCOiZ/MrXyH7NzqpkSRM1FXGq/BLV7OieY35e5Ytcnbed5pxuLw24X9PUmizHPR+UydfIzzbM3D4zkkz7iNpglL/EmQP+f1jwdsjCFd5O1URjCLd9Y1Gns81iLU878dugo9955//VpFiYS7/7GJeERqD29psaFYnWx3PpB9e6UrR2ULfvv5iiAxr30OYzoJt9pVbqhhClw5PS9lOfnobvT4OFbdbh4bGZ96a5RcZdlLqq5Z/aJAnq8cJjUI61sIdenbtmWpcpk+tnGx6jjBtl8cgnePsexLVaOrY/rkYW64YEVzG0ytCAlM+Dg7nRF3r7pm79MehRV31qJK5onUbMKaf25VTx9szGws54yxKiRu2uv8pObJPbUxrmTDluTf3pBFOtjFRZEGcGBp0ztYDoM9xq4IT18xYp3mLNvzO+wjhvw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3247afd6-adda-44d2-41dc-08d88c91459b
X-MS-Exchange-CrossTenant-AuthSource: AM6PR04MB4966.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2020 13:44:44.3961
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NB1Ciuh5RuakQasfFcKdpdJS0ojBhHNJiiAhCeZX8D5PvmCQzbY1P/iv6zGtTAbbBDmjnqkk7EvatUrCBHh8Qg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3784
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The LSIO SS of MX8QM is exactly the same as MX8QXP. So we can fully
reuse the exist LSIO SS dtsi. Add <soc>-ss-lsio.dtsi with compatible
string updated according to imx8-ss-lsio.dtsi.

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
 .../boot/dts/freescale/imx8qm-ss-lsio.dtsi    | 61 +++++++++++++++++++
 1 file changed, 61 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qm-ss-lsio.dtsi

diff --git a/arch/arm64/boot/dts/freescale/imx8qm-ss-lsio.dtsi b/arch/arm64/boot/dts/freescale/imx8qm-ss-lsio.dtsi
new file mode 100644
index 000000000000..30896610c654
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8qm-ss-lsio.dtsi
@@ -0,0 +1,61 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2019-2020 NXP
+ *	Dong Aisheng <aisheng.dong@nxp.com>
+ */
+
+&lsio_gpio0 {
+	compatible = "fsl,imx8qm-gpio", "fsl,imx35-gpio";
+};
+
+&lsio_gpio1 {
+	compatible = "fsl,imx8qm-gpio", "fsl,imx35-gpio";
+};
+
+&lsio_gpio2 {
+	compatible = "fsl,imx8qm-gpio", "fsl,imx35-gpio";
+};
+
+&lsio_gpio3 {
+	compatible = "fsl,imx8qm-gpio", "fsl,imx35-gpio";
+};
+
+&lsio_gpio4 {
+	compatible = "fsl,imx8qm-gpio", "fsl,imx35-gpio";
+};
+
+&lsio_gpio5 {
+	compatible = "fsl,imx8qm-gpio", "fsl,imx35-gpio";
+};
+
+&lsio_gpio6 {
+	compatible = "fsl,imx8qm-gpio", "fsl,imx35-gpio";
+};
+
+&lsio_gpio7 {
+	compatible = "fsl,imx8qm-gpio", "fsl,imx35-gpio";
+};
+
+&lsio_mu0 {
+	compatible = "fsl,imx8-mu-scu", "fsl,imx8qm-mu", "fsl,imx6sx-mu";
+};
+
+&lsio_mu1 {
+	compatible = "fsl,imx8-mu-scu", "fsl,imx8qm-mu", "fsl,imx6sx-mu";
+};
+
+&lsio_mu2 {
+	compatible = "fsl,imx8-mu-scu", "fsl,imx8qm-mu", "fsl,imx6sx-mu";
+};
+
+&lsio_mu3 {
+	compatible = "fsl,imx8-mu-scu", "fsl,imx8qm-mu", "fsl,imx6sx-mu";
+};
+
+&lsio_mu4 {
+	compatible = "fsl,imx8-mu-scu", "fsl,imx8qm-mu", "fsl,imx6sx-mu";
+};
+
+&lsio_mu13 {
+	compatible = "fsl,imx8qm-mu", "fsl,imx6sx-mu";
+};
-- 
2.23.0

