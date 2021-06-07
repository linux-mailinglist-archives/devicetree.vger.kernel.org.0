Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 395F339D768
	for <lists+devicetree@lfdr.de>; Mon,  7 Jun 2021 10:30:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230155AbhFGIcI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Jun 2021 04:32:08 -0400
Received: from mail-eopbgr80058.outbound.protection.outlook.com ([40.107.8.58]:50182
        "EHLO EUR04-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S230128AbhFGIcE (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 7 Jun 2021 04:32:04 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R/uekyV54cwypjcng51O8poqjHzzKH4y6Nu9BpsS4PMDrdc/9rGEx2v8VocLnCdqotLDhjUsxl9k3eR8CFzAFtUI8NkSAN5xIUeU+NkzyrKMAsNbFeDVvvVTLFswgoelRnCDzFajguM7/WHrHaeL2Iakg6VzJcPmI9HREaKo5zwhiFe3dV5UajeXv2CfehPK1rBGn13mV2os8IZXZbyPH9X6KFwC3WU8KRbZIgMGqE6IF9edoHynXhztMdKL2WD3owyzyhil17Dnft7xbEFdPdw8kLhiU6sQlvEaKYB7DTLn2EKRP8FHcdbr/Zar8Fv1WA+kobSyJ89iT/Xzu5EKZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hMDg1n8n8DdHUC4hIjoJLR8Qq4TQlF8ofXdoXYqNJ7E=;
 b=m4HkMqYd+8Iu8gUQfsP/8zMU8PlZDX1GZ30/BLxITPROvbmiEjyogeQfPanZpAqIb+fqL2xN5R6RjV8L7SU2ss/OywG9sE0a1KbAUDmPYPzDcNrne9f2r/Xh6o+jPaxYds1sozGnCeQvZ7Ac+KfPOeAekVCY//CZS/Ep6huuaQMrymtEsE4dAu2hO8JWIMMe4MXzgLzCFUhmMaRSU+weGgcHSw2RpnV0mNpP+6g1Gumn9/thDJ3N2vWPxSmOOz25rtD2mgtCz0QZS/ZFRNfXE4tZxfMYai30wD/j07KgLTKDalCQ6nDijWb3dA9UoVsIZmWhhbpzVXpiahya+aOf0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hMDg1n8n8DdHUC4hIjoJLR8Qq4TQlF8ofXdoXYqNJ7E=;
 b=pSOmxC96phUR3YQyKC1fohTuSjCtXWToYrl+kyXlfjUSdY1Oi2V1dVDooR15wAaczm+cNVs/FwZYrqiDdcL461aaKor0V7u/riJntIs46CvOrUnA7nuT4jd+p7W5M1Jxzk7Kt0oLO6UdLIFa8Qozwi7wIvjp5DXO2KMNuBvM3II=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DB6PR04MB3125.eurprd04.prod.outlook.com (2603:10a6:6:11::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.24; Mon, 7 Jun
 2021 08:30:06 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3921:acd6:3201:b209]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3921:acd6:3201:b209%4]) with mapi id 15.20.4195.030; Mon, 7 Jun 2021
 08:30:06 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org, sboyd@kernel.org,
        s.hauer@pengutronix.de, linus.walleij@linaro.org,
        aisheng.dong@nxp.com
Cc:     festevam@gmail.com, kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 05/11] dt-bindings: spi: fsl-lpspi: Add imx8ulp compatible string
Date:   Mon,  7 Jun 2021 16:39:15 +0800
Message-Id: <20210607083921.2668568-6-ping.bai@nxp.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210607083921.2668568-1-ping.bai@nxp.com>
References: <20210607083921.2668568-1-ping.bai@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [119.31.174.71]
X-ClientProxiedBy: SG2P153CA0007.APCP153.PROD.OUTLOOK.COM (2603:1096::17) To
 DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2P153CA0007.APCP153.PROD.OUTLOOK.COM (2603:1096::17) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.4 via Frontend Transport; Mon, 7 Jun 2021 08:30:02 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8885ca9a-e172-419c-48d4-08d9298e7443
X-MS-TrafficTypeDiagnostic: DB6PR04MB3125:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR04MB312549A8E30FCBC32CFECEA687389@DB6PR04MB3125.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:513;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IxsXgjQe5F04sEi2LOSPhE6WXURmomTLkbVih1kzjADlnCZHdNODaK6q3hrTxFGzs6oHjL6ILf7NNc69/CPolewwZ9+oxESitrWtUzFCtgkpaf3YDBPzFJEas3qQ2p8KtZhtgw3Jjc5UEnZTATgZc+UdA4GYSdXa+3gsPpj4HzGARdU3k0DLaYF2ZSIub1h5ZJm96KEQvWfgc9RqJPPhH8dA0TGo8x+3G9BFPT4BV11OLIB+a9PW1UAZPe2dfDhMX7EiX024UphqDHOfeCCGm2nTNGWG4UwOKk44luu88YFfjXdlvfqIFg4yJl2VOeBCUzaEJMqAViF0xRv+hgo45fLc91WOzlD6MA7E9ok/7qoIFI5JMUYV28gpe2lXbsQDcgkXnxwtvInnDJ6VMIK7aIAWrNvaqTYJPuRMvmJaKFdFI3xROrM5i9te265XfT+4ibbdqZeUdfXAcw2fLRTcePeR9uZDrjKqsoN2AARtYseC6yC08eNGwxpC3qB2EI3tnwY4WIB0n1sqGZhUsv88mX8wKHjk9UFE8AkD4q6RdyB5CHmNQIhUo39QdGz5+X+g78E2k4ZloRa9d14dE7VUFP60KHiWamDxbq0qXCJu8jykkL5EPj4s5oMkrHkMxJEYXyit8f5G9s8qcrpT+QCohamo8Aw/GzT8HkMUy3nOVP3j5OFgTLBVwS9GLLfHr/L3qb3bzAi4bbm9yZZWGAWbcmNjCylJXe0cWBpQarqca54=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(39860400002)(376002)(366004)(346002)(136003)(8676002)(1076003)(6512007)(186003)(26005)(36756003)(86362001)(4744005)(16526019)(478600001)(38350700002)(956004)(2616005)(66946007)(8936002)(38100700002)(66556008)(66476007)(6666004)(6486002)(316002)(6636002)(4326008)(5660300002)(52116002)(83380400001)(6506007)(2906002)(69590400013)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?jQgi/omAAs8oF02S/r8HSSDVzuPXShmDM4wKhgG9MFh7hfd3K3Qvy+PTFrIo?=
 =?us-ascii?Q?nIMfRhB/kR0XiwKH+YSJr6NforfpRRWXV5wF1Mbw4sKGdCrNRGbix5WRZsOg?=
 =?us-ascii?Q?f0WQyCZj/jaOf92NRnDHCPyU1PKCWgnUmp0oDlBIkR9ZJmIL9qNW3Bv+5b9T?=
 =?us-ascii?Q?gCc38aVN2054jqu34IJFL+xhTaSi+Nm06YxeEt7Eo0B8kHscBx2RGQqIH5oP?=
 =?us-ascii?Q?MhVkuzfUmWap7X8ctfSfcC1dMjNfhRAya8foizPk//p9YOJeaOFCwtQ12Jmj?=
 =?us-ascii?Q?BOsmWjSKmrQUpAYh7rSaG5JaXKD1zd6Wmt0+/BWhElD3yz5+9Lvgu/oriyLG?=
 =?us-ascii?Q?M9aZ9smQ9gAZgimPapU0Z8jcQlY/LwuuPQ23FR5C0bNpEQKpbJB8v8Gh2yUE?=
 =?us-ascii?Q?uUbwfkMc34Evd8Tg5ah9tVT2iIxneSWRr1Xe3n3y+g1BLHt1tJfi6BMXFmi6?=
 =?us-ascii?Q?DwObFwM+N0jLU66KZix9YFXpR8M6Z/evQenqV46QTzR2FLuqkVVJTFR6Or2t?=
 =?us-ascii?Q?4Hgmq+f/TtViGq4PLAcwEtUnSPGBiC6oUlbmNbWRHyqEL97UlewO3M9ICT2u?=
 =?us-ascii?Q?vTXzKD7WhHwbQFPNtA1w6Lsk28JNq69CNsWf13Zy94e/U2mNqnHaiV+HC/RP?=
 =?us-ascii?Q?1IcYAGrN2mIvTWWSrO/FLhALfHaMj7KtBKHbV3ml6Vq7AS+5tmx3tqI3/5ap?=
 =?us-ascii?Q?355X0OAf8D5+cgV3D6ND8iyssP/cHohDGvGAuZZEImHuO/UXVdCcoCuD7q5D?=
 =?us-ascii?Q?MRUbR/fTUk8ZhZ9LMycNm34deoyfbrTZUOVwGk9AvlmRk/kB7z+Idn59CU1v?=
 =?us-ascii?Q?Oz7lO+OK0nfdCWLexpaEqWh+sGH3rnWxQSyLlC+6kscxPGO9rEVIztNfyizP?=
 =?us-ascii?Q?JNm1QRXnyQnTz/uSMplOM8SQGH8Ms41cMIQXwcaNtFzQ6w31bxHUsuCsEUlw?=
 =?us-ascii?Q?uYMM50SLAOQSEM4S2dzTnpQCP7IOYnW91Rd/76k5MAFiKuNws8iRQ1kpb/31?=
 =?us-ascii?Q?aAwbDgJkbR+fYTZwblQcLMgCRJu8dlRXRweM2NiHOduMRd//eR39SlrDNFKK?=
 =?us-ascii?Q?YTsDDPjn/XzX/mdM5G4Jv7jGicWjWkTQzStLDhLeldHoM/eWDeYc4867ErlJ?=
 =?us-ascii?Q?aAGo2+fJGQa3c3I2hcIu1lbU+T8vnd5cFXispK/bpJgq/GbO+XXz3VoiNx5R?=
 =?us-ascii?Q?z/tQHn48OO4GB311fst5zLsPnFP7fuhFi26FbJ6UOd4F9gKvlSPW0mc+jNkj?=
 =?us-ascii?Q?ZQBkVLfBE1uCOPaidZ7j48o7Ge2lPw1ob0cbZuDiVLzgBWYUus5X7snMPcrp?=
 =?us-ascii?Q?wQhkq9LKcUD3Bndc+yKfLhLd?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8885ca9a-e172-419c-48d4-08d9298e7443
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2021 08:30:06.5811
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zdm/6hg0sBbptH1wMnBR4a2MMMEwCqVF9YLf93/LNQBG8YS0ps/Y39PjmFQxtKERgE+04ify/BCoHA59WlCAGw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR04MB3125
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

For i.MX8ULP, it uses two compatible strings, so update the
comaptible strings.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
---
 .../devicetree/bindings/spi/spi-fsl-lpspi.yaml        | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml b/Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml
index 312d8fee9dbb..1d46877fe46a 100644
--- a/Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml
+++ b/Documentation/devicetree/bindings/spi/spi-fsl-lpspi.yaml
@@ -14,10 +14,13 @@ allOf:
 
 properties:
   compatible:
-    enum:
-      - fsl,imx7ulp-spi
-      - fsl,imx8qxp-spi
-
+    oneOf:
+      - enum:
+          - fsl,imx7ulp-spi
+          - fsl,imx8qxp-spi
+      - items:
+          - const: fsl,imx8ulp-spi
+          - const: fsl,imx7ulp-spi
   reg:
     maxItems: 1
 
-- 
2.26.2

