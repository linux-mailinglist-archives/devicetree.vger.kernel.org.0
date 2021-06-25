Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 434493B3A58
	for <lists+devicetree@lfdr.de>; Fri, 25 Jun 2021 03:04:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232911AbhFYBGe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Jun 2021 21:06:34 -0400
Received: from mail-am6eur05on2066.outbound.protection.outlook.com ([40.107.22.66]:30177
        "EHLO EUR05-AM6-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S232850AbhFYBGd (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 24 Jun 2021 21:06:33 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JZt+VizLhCbl/8Otsvsj/wEHHyYVrPlpf+R6rjiHU8wKsE01m11lz1s4Z9XrKdDpT0cWCG5jBbaxWs+f+l2ZU2cYkEJspiBXn/L8twiAi/HA9rEiLEoewKjIvZm0tVcXKq474AqFZC3xK4Y83PEhOi/yZJWgSjR1dJdc5b0IHOetfkwMW62r7Ug1go+ct9hFeGxf421OaG43dsK/0MFg06Tj5Ox+0iw3sHbW5o1Bm/ybFH87Jzx8a8FLFZri1/50ds44yU1aYiAJk1so9Ni3iMFV7qZIAe1f0VSnWpv8CEaEJIFIPoYc1PhiDVHOP8RRt9/J7OpYvFDAKvVIDEYwPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FRY2Jq4asICeroceuNWGwRC4rkizWJa6Li8khU6ziJU=;
 b=ZjvsXl5HX5eRFBDmWCg+ZtG9WGnpKRoXfS+3PnmiL5WEr1YzpKZSkTqfF4IPCMmA93mvshH63097luq9I2raz3Q5HhID3NWodIRKpg+eGyzLYmTM6u9/nPL0iRN4r1rsxjAzHbgnVYnTM13zejvUsyfAt1oV1sqzrLuhDLpLzoJ12LZSOQdDat9ZiMya9Kf36qKN4ztC7MfyClm4yJfwHBfWOz3rMXq9VFX1dOqO5u9OaMYhqUb4c/tjPE4+YkycNAGmOwxzlaQQw0Ww/QdBf7h21aq5Gg6isWKIuWwaCRjlXPDt8gRlUs/MMNNN5KzysbQpk4t3yYaPNY6zLahPTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FRY2Jq4asICeroceuNWGwRC4rkizWJa6Li8khU6ziJU=;
 b=YorWtGGhYZlwz04m/Ox/GDJ+Q2/EJuobho8uIEhzzxbqnslBhu7ld+Aoqv/Aq+xDlPvLKafxrSMRNHETbhZVER6j/BswnlwL/rDnpBGeK8w6tib7C1zx+95hbXdhLWPztwzVw8+NEdx8pOGYgkSNtSc1khpg54sAbcDh7EBxzmw=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DB7PR04MB5468.eurprd04.prod.outlook.com (2603:10a6:10:86::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.20; Fri, 25 Jun
 2021 01:04:12 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3164:e047:376d:4a4f]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3164:e047:376d:4a4f%7]) with mapi id 15.20.4242.023; Fri, 25 Jun 2021
 01:04:12 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org, sboyd@kernel.org,
        s.hauer@pengutronix.de, linus.walleij@linaro.org,
        aisheng.dong@nxp.com
Cc:     festevam@gmail.com, kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 06/11] dt-bindings: timer: tpm-timer: Add imx8ulp compatible string
Date:   Fri, 25 Jun 2021 09:13:50 +0800
Message-Id: <20210625011355.3468586-7-ping.bai@nxp.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210625011355.3468586-1-ping.bai@nxp.com>
References: <20210625011355.3468586-1-ping.bai@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [119.31.174.71]
X-ClientProxiedBy: SG2PR06CA0188.apcprd06.prod.outlook.com (2603:1096:4:1::20)
 To DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2PR06CA0188.apcprd06.prod.outlook.com (2603:1096:4:1::20) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.18 via Frontend Transport; Fri, 25 Jun 2021 01:04:09 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: afd6c4f0-9670-47a5-75c0-08d93775250e
X-MS-TrafficTypeDiagnostic: DB7PR04MB5468:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB7PR04MB54681166BC170CDFE16D4D1D87069@DB7PR04MB5468.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:350;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: K++Bt3zDlhE7WhZj5elSovqJG/7X+WEP3/dkDsLZ+CQJMnKM29koC8saKXQIXGl+Nftx7p3IP59OKxlILQIfBj8667IaCNwfWNfcZkUuJ2vYYXhm6j1/+Od3KcyoxTwlWBpXVHmgtDf+hjP56cXhCdcewQnl1agYDGmxfA5fDTW1IQVAI+FpAjF+kRr66sdgsOSJqXgqrlifNs16qC0VCwlnc5P27YlxVcNQnfiMCwQF/HjI/ZKItoOtWHSvPzYcW0iAN2LtxuJHIFu4k2xIYqrPMKn5J3p1LwVPsKhAFQcXm9e7t/p9D3runWzWMN/qnNpv7vNAGvvtdO60MikiDag+FCO9Y3E2YH04yIZyhcoSDNCvj9XFGttcOWuC1v1+I0ukJnZSiLrU7RTCXLHDuGdUTqFqwrvMItXSfHaVm93AIuPEqYK+py0x1D3qGBmz5EzedqbkCiEwYfwHSDmDUV5UE90CMDLIUv9WqXGgSielw7unvr44GUqo/TgDs4zY9w8uECFX8WPd2XqYIiDRPFzxcdc5ffX7LHl51AeaEWS6akQ3uaD8NYNO7iKgiLSwnOQIo2o8KjB2sn7c4trvwn7anRPghm/ZAsHPQVvcSy6emyo3n+VKI6AbYx3LH5Tj40EtXgphfKVj3vorh+4UiJ5qxqGbYyehvbLt7+A7XAPQuZ06ykd60kOMma2i1t5vCGXbtDU50aLIa4G0jLZgkdLP2HuVewiB0IvAnl3tzGSCaFfLmcZiVencxNckKoOzGYl9Nwm27EAZ/tTCythcIg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(396003)(39850400004)(346002)(376002)(136003)(6636002)(6486002)(16526019)(26005)(186003)(478600001)(5660300002)(316002)(66946007)(36756003)(66476007)(66556008)(6512007)(86362001)(83380400001)(6666004)(38350700002)(38100700002)(4326008)(8676002)(4744005)(956004)(2616005)(6506007)(2906002)(52116002)(8936002)(1076003)(69590400013)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?LLBBHOBOrsWagE3z8p6lv1Jxlu3iSAAv+09ns52qCPyd7LBYO3fdikeUQ2VG?=
 =?us-ascii?Q?DXkQ7360ZMNWPO00sAt5tR1vf1grrU+4p4oS8WSviCW2vb9kVsHclZMMcpiH?=
 =?us-ascii?Q?3wazXZIVO43M65Jipf9m9cYBS4xAQSr5cO2jeSvV1lYq0ll1WNvkjpQUCXmF?=
 =?us-ascii?Q?rqEV5n8fM0ibdoNvs5kJTjdi94+S2NPbCY03soeERTGV8msuMNFHjhb/bWBg?=
 =?us-ascii?Q?iaWBezsOF0wtuhozsTEHOCzUA52oVhiILS2kdfnNuPAo0VczDPD9lUcR6LU5?=
 =?us-ascii?Q?WipRJPRFQ94Eco5nFzo5hTGwJWwvHG7jnSvuF+dKTjT4ctpgvVtsb+OfHg+P?=
 =?us-ascii?Q?OhMiXKKeXCsODCUlBoPeJieN20/KM5Mk5XKh34kLt7oWRdw3tQbe3CMAatkB?=
 =?us-ascii?Q?RwvpzY/3DY5wB7mwGkMe0tlLG3Gu1+j0i5i83CjE4QeZjzy38hdSKXerVO/Y?=
 =?us-ascii?Q?Or0gT3Z4bCi3ggVfr5myp2i+lC0VuSZK9S428OuP+wmsV8IawvdsVeHyadAJ?=
 =?us-ascii?Q?HEnaQ+UdqVpYI+ergJk5/tk+PHa3llXNX/RaKfXEXAzaHTre23zF+gE4M9Uv?=
 =?us-ascii?Q?DgUOsSmffDTNEVeZKG7pxS7p8y6yF84mSoglULz27vc7H/nv11FIqasesajt?=
 =?us-ascii?Q?wZgCgtwosY3y5eDIY8NPgjUnXOyWsh7Pr9LqXvjNXjIZgorUXnHi5e4UgYHb?=
 =?us-ascii?Q?PGOt5Mr4xk5QX4xB4G2EbVOeI+SFV5PDt3YfcVsYuG7BOzwAkEOSwgNipa8F?=
 =?us-ascii?Q?nGF6ztFEB8gxE7J2VOo+0ZDP8H6OMbynHrYfuFeVY4CAfz/Gi6Y9y9Hm+Zct?=
 =?us-ascii?Q?jZJsTUfNZuc4jWdwn6+Ea2JCgV9JT4FB6wxpRdR0XeKtbjZF1FGbdxLEOkmn?=
 =?us-ascii?Q?QKXsY8MkIa3ja5AK4PxeDsDswra/gLKY009o77jHcj2B9AQFk4E9cIbenAFD?=
 =?us-ascii?Q?ID6kikDsnetYl96vVdLhySDu3CO/ylh6mk1Tgy782dqsCEk/01WBAmwZ5aHS?=
 =?us-ascii?Q?3oYclYAe5caXzQvXM376JYKhJYVWdzRx7xxumi/24Eu9afD4Q92IUC6T+6Y7?=
 =?us-ascii?Q?JaU8lQVPCsVmt9Htng06FAsWhSPK643zIPmGImR+VsoY4R88inuyEHvqdfVt?=
 =?us-ascii?Q?elg0TzlRag3OpnrcF3Fg/aBZyOWPfSZCKt8HPL72d0++pvw8yY8GCw2mY0+u?=
 =?us-ascii?Q?sDGTJkcOdiMkgIP0nrsFHwyxHn3+3/bPAxrRD/mIggrEKzZT+ufSGp2i3tyF?=
 =?us-ascii?Q?j1s5GHvcMcyVLXBmNkZKgCNZ78EvVOIbzsK2XLtN5YxuE7pwRv7QVB3xR027?=
 =?us-ascii?Q?aVXCKglK++KyhVsZwP86qoBn?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: afd6c4f0-9670-47a5-75c0-08d93775250e
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jun 2021 01:04:12.5028
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6H2xO+OXXvz+6BI/a+1aqKPEDTn8OMNKICWLXw/ne8gxQhvYG7tqz7UZwJaeOQYuvTdLSvoKw1xBqZWao6aa1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5468
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The tpm timer on i.MX8ULP is derived from i.MX7ULP, it use two
compatible strings, so update the compatible string for it.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 - v3 changes:
   no

 - v2 changes:
   refine the commit message
---
 Documentation/devicetree/bindings/timer/nxp,tpm-timer.yaml | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/timer/nxp,tpm-timer.yaml b/Documentation/devicetree/bindings/timer/nxp,tpm-timer.yaml
index edd9585f6726..f69773a8e4b9 100644
--- a/Documentation/devicetree/bindings/timer/nxp,tpm-timer.yaml
+++ b/Documentation/devicetree/bindings/timer/nxp,tpm-timer.yaml
@@ -19,7 +19,11 @@ description: |
 
 properties:
   compatible:
-    const: fsl,imx7ulp-tpm
+    oneOf:
+      - const: fsl,imx7ulp-tpm
+      - items:
+          - const: fsl,imx8ulp-tpm
+          - const: fsl,imx7ulp-tpm
 
   reg:
     maxItems: 1
-- 
2.26.2

