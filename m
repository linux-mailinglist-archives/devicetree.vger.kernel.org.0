Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A1D372F6FE1
	for <lists+devicetree@lfdr.de>; Fri, 15 Jan 2021 02:14:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726451AbhAOBNC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 20:13:02 -0500
Received: from mail-db8eur05on2071.outbound.protection.outlook.com ([40.107.20.71]:9440
        "EHLO EUR05-DB8-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726017AbhAOBNB (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 14 Jan 2021 20:13:01 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XUd/9TRzg9H0hxcrM1Y24qOh+PwYnwACX0fxvdklDy1HN9XQ1FdpNFUjcV0Kbjgt2bEVr9gfPlgpl6OgNobPtQBBGLB0fMa/OdTJln4gJdO6kxBvKcuwFiQlAwpeUTfo0ZGwJ4F/6CUEUHToEDMXpDaZ+SKAsTNvuY4TO33dydDqD9/7kLJwV4T9C+ELneDgm7eVBv14THZoetK24oKMUWMflDUu678FVKo+5MhYWbf7FXt6FrOWdTjVTQqg1NFtpTbXOZb+M9azBh8KChXv1C1fSvRehA0gfPUd13rmP7L1dy/Rt04WCPTP9m/9rUjQx4xIk2bWARUM2Xw/wIcq7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O2aWy+JHd7rqSgRh50auZzDD2wIb2NVRBHLYq36Skws=;
 b=dxO4+omubwl0lqCcdu291Q0/jrL/cGLL9jdPV2WWwz6WcIEHdzh2bwpX+L5hHRsVuXALK0FjIGGcelk5EEiEPm9vlgkUCGNfXu1VeBhRdMiupkXgyV9uktuSrpATuVB3bir0y/hf6Kd6dbJydUVV236Lc2OVPn158/eRj832bZl6W0OUNLbvAINShHX8q9bFwO1r6OWpTXJJkq+inXAkg32pJrh8APQCcOFe0e9cB9YEsVczyt3iIxMPPB9KEtjEKHiEDIAy+Nu7bAoE1Qhm6xXhlmrI1YAAFPong/H6HlsVZO+idPhmoc2dtNKmXQ4fIbYyGXs9XuQI+q0aKh6ppA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O2aWy+JHd7rqSgRh50auZzDD2wIb2NVRBHLYq36Skws=;
 b=ZbA6asz2NMKrymJFRPKWD0TUVP+i8S23jTZqR5Vj5Sww6MXaI0pek2J80LCYUfp7mK2DOYjHK+0qFCxHRs9eTyojV7sQrsFHHBC/rmSvSCuhPvv0vsGlqT/4Btp+gGqhXwonpHltApWdelR8ID9so30RoVo6TX16ri4WEbjzhPM=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DBBPR04MB7657.eurprd04.prod.outlook.com (2603:10a6:10:1f5::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.11; Fri, 15 Jan
 2021 01:12:13 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::b9a4:10d0:2535:d481]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::b9a4:10d0:2535:d481%6]) with mapi id 15.20.3763.010; Fri, 15 Jan 2021
 01:12:13 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     shawnguo@kernel.org, robh+dt@kernel.org, s.hauer@pengutronix.de,
        krzk@kernel.org
Cc:     festevam@gmail.com, linux-imx@nxp.com, devicetree@vger.kernel.org,
        kernel@pengutronix.de, ping.bai@nxp.com
Subject: [PATCH] arm64: dts: imx8mp: Correct the gpio ranges of gpio3
Date:   Fri, 15 Jan 2021 09:18:05 +0800
Message-Id: <20210115011805.3253897-1-ping.bai@nxp.com>
X-Mailer: git-send-email 2.26.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [119.31.174.71]
X-ClientProxiedBy: SG2PR01CA0096.apcprd01.prod.exchangelabs.com
 (2603:1096:3:15::22) To DBBPR04MB7930.eurprd04.prod.outlook.com
 (2603:10a6:10:1ea::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2PR01CA0096.apcprd01.prod.exchangelabs.com (2603:1096:3:15::22) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.11 via Frontend Transport; Fri, 15 Jan 2021 01:12:10 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: d5625081-da18-4b1d-b741-08d8b8f2973e
X-MS-TrafficTypeDiagnostic: DBBPR04MB7657:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DBBPR04MB7657E7EF710A4D6DDDE41F1E87A70@DBBPR04MB7657.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:530;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8Dl1XIxzgPnUyCvkzGgPcu8teaMDNLAyg9nitTh43kLh33FT/cbzeSefO5stRPjfcazg+dlXmrb5/TGZ+m9ppR3sU8WKV1ahRleTTq45FTyVconM8d3l0EViG9em2TUkhelLHKqhUgw8Mr6EZVccxDNDJbiNwFr9qNr9GkuMm6Nugif8pllB2asGrHqRnu97pmw5tlRFIsu9dA9SQkaYIxzzR2+iOvbmIJ6jmrv6hNB4rFa5ouIbJK5tnFlqUBUaOract3V38zymMFa6EkXgFHjgQAGG1zuK0sIrRqRz6zcmN9/kJwKcOWZBXvmz2M3xvxyOtkqoklA+tdHScMAGVAELHVQWcBPe1RYyyFonKjxcm600ih2PUBuOEgPGU5uzFDF1uSXQZNXNJB/1dibxC6jZW899I69pfHCkfLhihZwiQgktS6KL8xV+8TWdwfnN/bir6q4yTT21e7sTCsqCiFRwLl0OgrRMvu0IdVU+i34=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(366004)(346002)(376002)(396003)(39860400002)(956004)(1076003)(6666004)(69590400011)(186003)(83380400001)(26005)(16526019)(52116002)(6486002)(86362001)(36756003)(6512007)(6506007)(8936002)(66476007)(66556008)(5660300002)(478600001)(2616005)(4744005)(2906002)(316002)(4326008)(8676002)(66946007)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?hysy0/Z71LeSm1tZl7G1ewN34O9evNwqw6XeB6oCm+4bGwqE/7Q7+FDfD3Ac?=
 =?us-ascii?Q?gZ5q/E2EPWv+2xylKcXDP1VS+8FcGUZSZeqzPH0oShBpHH0kb2U6pDsYCXJq?=
 =?us-ascii?Q?u9/FcwTh91U90jz1ddc9Mm2tQx9m2X6HVDN5GlkcTFpN4TfWHBzYfiVgBOLd?=
 =?us-ascii?Q?KolicnoOyfjGxIxeDNXeyHwF7B5kpfRhSZdKw3iPbNkqvYaDZYjtBukFjh9Z?=
 =?us-ascii?Q?dkhixE766i0zeE+pqrqVkDUjpvYxzPQh5nDpaQD1eAF3vO+rzjHyjF8LOACk?=
 =?us-ascii?Q?Z+/Mz6f1xkaar4PAsfnQX/ZCgUvhbFyFQWmKB58CT796qVpTdaFO9accOIXV?=
 =?us-ascii?Q?bHw7jMyFnnxSOpnGRixMaxJmTdSDF1KT5SIyrICeXVTCx3PEKo0qYHgwBoj6?=
 =?us-ascii?Q?aAtIfEOQ7t9GtrdcsiyZpONHel1vrqlWiaOABs9KhhQKrIuigSWmo0yLJHR5?=
 =?us-ascii?Q?xAhT8y9C0xFvVzqsWQ9+Ycc5axYOojmfgDxjWw7IrJdIjXBg1TQ1nf0IRqu5?=
 =?us-ascii?Q?15wu2kxGqlPCyWDHWj0KbBnPEopwwh1Q0h8WK1swGWAZLKYHC3GApBgjcvjW?=
 =?us-ascii?Q?5UV4m9sS1IIvS7CpWxZrQ0r9Zm+3frFcqgJ5GyZjB7zxl3XoRo+ahUJ6px+N?=
 =?us-ascii?Q?mPKtKCLdAN4XZHpNXpymCdZDtI84kT7xUJq76JBuIPb6CSNjm3XoT3OLDc6f?=
 =?us-ascii?Q?UXRqWwOLjf3AFNGse4Gos1h8noP7vtR7wrze5vmXOacWvkZHbUBy9iY/vuyX?=
 =?us-ascii?Q?BqmItt/Zm1lLytNFqqQ9RnQQRgGXq47FbcHeEJ6FASBwgzdOjKTF4bg+ZmBY?=
 =?us-ascii?Q?zHHXalPmr2yo3bRqIKoJOCcIUQyuCqj7aiVq+q3/nAbi7XZvXO5HwCdmfT3j?=
 =?us-ascii?Q?Vn4hwROVNQ2swkIl8oC/EPLPwWKistGYbPS40JX1oOlQou/oTbgMpmaUMpcS?=
 =?us-ascii?Q?QFA3R/QZJJF5QeqTFBvkaGJWgB3cRVBgclL4Vrr+7m/wjrzwIjUZs34zJx6c?=
 =?us-ascii?Q?/Cvt?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jan 2021 01:12:13.1274
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-Network-Message-Id: d5625081-da18-4b1d-b741-08d8b8f2973e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Bb1d2Goz5DWZwpZl1E8MrZL4fa+nCUlAVKwvOrbHCA26J/trPot1OAw/yZjw+lNKncjLXZj2GumA4R2zVgo9UQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7657
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On i.MX8MP, The GPIO3's secondary gpio-ranges's 'gpio controller offset'
cell value should be 26, so correct it.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 8b43f48ec2a9..90132771771a 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -268,7 +268,7 @@ gpio3: gpio@30220000 {
 				#gpio-cells = <2>;
 				interrupt-controller;
 				#interrupt-cells = <2>;
-				gpio-ranges = <&iomuxc 0 56 26>, <&iomuxc 0 144 4>;
+				gpio-ranges = <&iomuxc 0 56 26>, <&iomuxc 26 144 4>;
 			};
 
 			gpio4: gpio@30230000 {
-- 
2.26.2

