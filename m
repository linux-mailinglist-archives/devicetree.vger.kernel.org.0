Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 284113C9A99
	for <lists+devicetree@lfdr.de>; Thu, 15 Jul 2021 10:26:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240250AbhGOI3s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jul 2021 04:29:48 -0400
Received: from mail-eopbgr50067.outbound.protection.outlook.com ([40.107.5.67]:58023
        "EHLO EUR03-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S239431AbhGOI3r (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 15 Jul 2021 04:29:47 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ai2SaVLizCWXHCD0gaMvJEGpGuBxAgMtJol5sqSrrFXtuscUye6eZn8cu+cztDo1AotyH65N1ZUNfAmtJM2us+vFEJ1JWO3IETYVkyRsstg97SO5ul3tVpSuvEdaLKf5Vhy0GfntgesDasmTPldW8Rox+4EDc42F8VnFX6vYZ1Vr9Sz5pgw4kcuo3AAxKqLzG3nJBP5G8R0foM6QtLtwvPVDC9ngN6RDP/Ox1XQGGBwkmRFwWULE3j4JZdByfcKVz4iix27Xbw3rBmPZNsJMCkcVIMqA2509izj1gl0uHYSD+hCi5b2p2qiqpy37cPO2BbLqQRjZtOENKMDBsl9FIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=McJq8zk2zUvfqW4GLAimQPigQaU7vhaohPwSsublLKw=;
 b=CZoy6nGTeeOd2fF4pq4zVGSosw+JD1YObliAdHOWoyoKXyzVK1dkvF5E5HeqnmNk3LirLI+9dIDwsfWidtFwDFOsclb3QDLrMWasMytTbuNlKxhsstenEO1OIzThvNSjY+QXxtDkWagOZl5BG0oR27EM0RTCwJ/ZjxMs3NUQN1roXIPcoaFoCmgL1Kf5nmCHhJzimKxHnzFZ8EsA2HPjShbh2+GjEQr+JPkeS2zyWPyNT22tQLG+erBsSpxmDEeh/6Ph5Igy0uB8US4uU1+i4Ow4G3HydAOhW4kcaRDPH4XkhG39l1cPZ+C/7Pk7a2YsmPvUtZqHTNa2Dw1r1dT5mA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=McJq8zk2zUvfqW4GLAimQPigQaU7vhaohPwSsublLKw=;
 b=omGi++B1weFF3ftaMy+cnaRRb2bnbRp0Qu9vMvLLjJa8EBUYnw3iSRXj7IHwfqHW57uZPvfv9feW6i3b/XTT/eg0bFTpqfy4j+Id1FKU9cO2Ey0/GhIk1iHy6Z1w86UJOI4VVw/P5vHJ2bPs6mSb3Fcv0j4NcKYurCAJn/fyj7k=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB9PR04MB8477.eurprd04.prod.outlook.com (2603:10a6:10:2c3::11)
 by DU2PR04MB8582.eurprd04.prod.outlook.com (2603:10a6:10:2d9::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.23; Thu, 15 Jul
 2021 08:26:53 +0000
Received: from DB9PR04MB8477.eurprd04.prod.outlook.com
 ([fe80::9daa:ab21:f749:36d2]) by DB9PR04MB8477.eurprd04.prod.outlook.com
 ([fe80::9daa:ab21:f749:36d2%9]) with mapi id 15.20.4308.027; Thu, 15 Jul 2021
 08:26:53 +0000
From:   Dong Aisheng <aisheng.dong@nxp.com>
To:     devicetree@vger.kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
        kernel@pengutronix.de, aisheng.dong@nxp.com, dongas86@gmail.com,
        robh+dt@kernel.org, shawnguo@kernel.org
Subject: [PATCH 7/7] arm64: dts: imx8mp: fix fspi dt schema check error
Date:   Thu, 15 Jul 2021 16:25:36 +0800
Message-Id: <20210715082536.1882077-8-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210715082536.1882077-1-aisheng.dong@nxp.com>
References: <20210715082536.1882077-1-aisheng.dong@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR02CA0083.apcprd02.prod.outlook.com
 (2603:1096:4:90::23) To DB9PR04MB8477.eurprd04.prod.outlook.com
 (2603:10a6:10:2c3::11)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by SG2PR02CA0083.apcprd02.prod.outlook.com (2603:1096:4:90::23) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.22 via Frontend Transport; Thu, 15 Jul 2021 08:26:50 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 09fca654-ee12-42c4-03ea-08d9476a4cc6
X-MS-TrafficTypeDiagnostic: DU2PR04MB8582:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DU2PR04MB85828A63B26D2F4EED5FBF3480129@DU2PR04MB8582.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:337;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NB3oJlyaPVAIsIoJLptLlR6KEN6J+5gxxetzGdOjex4yp4y45OlRsR2ggFoDcDaBJsmTRai7+RWIQ+sXNk+nAebQ1Pzq0iHCY9oeRk9YuOhlfCFut0nKEaDqFJeItPUqXE7Nok4vGNjpMAMBV8rUYZCIB4t57UhsNefETHS3Mi3Tvk9WSS8uolfnH+vrQp7uAsvAnolx8RimCPTD+uxGkWLSjK2H+HZ+wRSraCZvdXDDBIcTp4In5K8NSwiliDZCecUpsAQoA9vZ4yAuBGsb63yea/Zw5jDlYnABfHBNNeoXmKebDhlM+yrEDwFzlWZNQL1H8oR8tUpmvnLet2qb1GvOMWpz8gAh8ROhLwFKactmq25Y2V16rBzFrGI517KeSCaLG8ulOFZqGjVCZmTt4YBrzxz31iCayaz5y6nw8zbbfhgNuAuOzW/v07qc6q0JKuu4v2+RttkeuVNJzYMyVUsfa1YL5WMLcPD47SeHx9Qco0+eZWvMs/qNRwqsyzTm1WiyA/HcqZjhmc6OuKLEl7fYfsmHz6rj9AHT5BdhAKwRy7fFysnXd6yDDKgdmvokF0K9pKVLcffO4DGovwK1RX6RUbFNlKkwDJoTjX8x+SIQzx0TGD9nFgvE1Uf5J7C7tU1RBiZ37H+7SBJttOsNm/il0Xr0/WPj+kWWgyAl1NwjdD5iS4Zg69UvCzHkCZNnV4HWG/4AMf/g/VBIUqKT+old9M1Mg8pqMiSPd9S2T/U=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9PR04MB8477.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(66556008)(5660300002)(66476007)(36756003)(478600001)(1076003)(8676002)(66946007)(26005)(186003)(6486002)(956004)(316002)(8936002)(52116002)(2616005)(4326008)(38350700002)(6512007)(38100700002)(86362001)(6666004)(83380400001)(6916009)(2906002)(6506007)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?EEe2HScJTYERUT3uEyG0XKS4xjM1YMmHaQ5QWNaU0A6skcJRR7P0n69mW0rs?=
 =?us-ascii?Q?W/YSeQGaFoVFX67aB1+Ahd6z+uUF1CI8zZJjyX44UNp94QyMJLoALVb24qVS?=
 =?us-ascii?Q?O6Y+8yZb2rpyMEYbaYKNaDXtk27RvvrMEddmuMaPd8lrtt5cWsa2pN1+kFL2?=
 =?us-ascii?Q?5duVWIqbyqaWF96r/LOk+MhJtUXCrEoV5JId9yeu6c6jIQcOf8vjOreSKYXr?=
 =?us-ascii?Q?orXAFCitw0kIx+SNVEYC+I/3HqVhnB1x+F21RE9TADy7UG6AKybo2MdZKGRX?=
 =?us-ascii?Q?lP18APbMRZmoVlFFg7a1yv5k/dqJBj1eXPom8QlEtZzeEuPgrf/r/d4Rjhqs?=
 =?us-ascii?Q?EYtXsV/OrDwfXUt0nqS2+Qp3AuRKHJEvVZG6NK9nNTMhSlfmUWW3klsROT6B?=
 =?us-ascii?Q?yYSwrT/qbbc+5z7jmGBQZIljCjlbh8XB0ireC6vDTdQewqAj2UUw5ch8I88A?=
 =?us-ascii?Q?z1TOzeSKrSJ6lVvvFzBvsBgnpUuYW9zGR1n/xRYN8xHa1FnEWBGnzq6qk9bH?=
 =?us-ascii?Q?o1QHOAM7Y+G/QmjcqxCvhLdp0r+kSGv48bA6H+IkCt9ukNbpY/0aBjILtVkW?=
 =?us-ascii?Q?FjdDpDOY/cvWi0fydKQmxrGtcj65dfuxHmFZEQXNZCf/oLWG4dtTF9KKfEm3?=
 =?us-ascii?Q?J91U1B5DaMS3mZdXON1x1b+LcBwIpL+N44XSQlVp5ImSM822+dzaJvDOJTwJ?=
 =?us-ascii?Q?MjoRATf0qUH00QzK1NIVvUPkOeRHO+c5W8/5H05GfhgIDdhx3ffgbwceMPHD?=
 =?us-ascii?Q?nz/BjfRE7zrVQPfbeRfCISey2PqK9DbD8NdqnMO18OvH3HHtZVQbT55K7FE0?=
 =?us-ascii?Q?n2ukUCr00P9nEgeIzU2ezsinZHUUtfSSuyJcXzpAt81QzMLfyeuKdCaCP+Iw?=
 =?us-ascii?Q?LG9zd3iTcUD6zNP31/BPzt5tNY91YT+CaG/7MnO2CQCPggFF4WYJmN+KK/Yo?=
 =?us-ascii?Q?0QUbs72y6f6rlX2MPnRMAwI9VAlyhlTePX8a+WvOrNPELZH8Iysda/VHQKjb?=
 =?us-ascii?Q?T70UcPc5L2/TbkVYLiwOCSVtAjFQWKBMrah58I55i9UweTgNf5UQtPS2xOBa?=
 =?us-ascii?Q?e24uTwkTlc1zJziPomQR2/oInnY/wbrReckeVRLu3tQTaSsvr43WN0w9B9W8?=
 =?us-ascii?Q?OgiVRuyLdRlaVISzuXjJ69L/tUgPdSgWwJSsj0cilbaUPPQOM9m4IQDcuuBc?=
 =?us-ascii?Q?aLmLexv21L1J28ns1Ud+q22MBRkARSpleoKy2koQ3khDM8KiZdUcauP1tKnH?=
 =?us-ascii?Q?trkDKZ9YCr7d97b3Z+tfB/jzNDjVrn1KsmY9OJJqRSibyWNsDEbld1rpfGct?=
 =?us-ascii?Q?RKFHtCsrOB3F9NJ4O2VumvWJ?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 09fca654-ee12-42c4-03ea-08d9476a4cc6
X-MS-Exchange-CrossTenant-AuthSource: DB9PR04MB8477.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2021 08:26:53.2654
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0rWY6gPLNNbv9kLK82YRUNELgGPleYtr56uRxIuz/TDKoTOtLIWrnhgZFP7/UNpw2w9BTBc0QIS1UoOq/pW4+A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB8582
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

arch/arm64/boot/dts/freescale/imx8mp-evk.dt.yaml: spi@30bb0000: clock-names:0: 'fspi_en' was expected
	From schema: /home/b29396/linux/linux-linus/Documentation/devicetree/bindings/spi/spi-nxp-fspi.yaml
arch/arm64/boot/dts/freescale/imx8mp-evk.dt.yaml: spi@30bb0000: clock-names:1: 'fspi' was expected
	From schema: /home/b29396/linux/linux-linus/Documentation/devicetree/bindings/spi/spi-nxp-fspi.yaml

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 9f7c7f587d38..decbab0b7445 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -767,7 +767,7 @@ flexspi: spi@30bb0000 {
 				interrupts = <GIC_SPI 107 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clk IMX8MP_CLK_QSPI_ROOT>,
 					 <&clk IMX8MP_CLK_QSPI_ROOT>;
-				clock-names = "fspi", "fspi_en";
+				clock-names = "fspi_en", "fspi";
 				assigned-clock-rates = <80000000>;
 				assigned-clocks = <&clk IMX8MP_CLK_QSPI>;
 				#address-cells = <1>;
-- 
2.25.1

