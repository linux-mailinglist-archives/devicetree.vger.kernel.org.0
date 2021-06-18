Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 25B473AC414
	for <lists+devicetree@lfdr.de>; Fri, 18 Jun 2021 08:44:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231137AbhFRGqi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Jun 2021 02:46:38 -0400
Received: from mail-eopbgr60054.outbound.protection.outlook.com ([40.107.6.54]:45347
        "EHLO EUR04-DB3-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S232427AbhFRGqh (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 18 Jun 2021 02:46:37 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bBpE03+lL7Do+APcy3IAKs8pZGoQG0krMyaiNA2tlND1XDk4a8qMIds0zcyz0skQKdbaY9leMwfZgf46jJv2+cFQLAiuDWHTipahBYQqLz0b30Ih4kOSBhdmlfPYEXcpclQeBEwRZE9WtdKa4LeTqXgtdXTHYRLuHaUQ3+/i14Y/GVBctwTusyRmR0E0P8NCGuBCqt6FAqDhx1p4uBQu/QHwU0wgbs2hLFELNvOHBYOEsnFOJQU7G5BrXom/yELLu+PImDmxAGi+FrdgHH+0hVVXhsLd3RdzHKtDMAKtBxTSy6ovvtjn1NCE16Jh+KIUnD8K8+Pn+n92N9tczUab+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=buGh2XM6D5nJiNOoQJWtQoL3tK2QmXInHz6ySj/ZKnE=;
 b=Bwu6Q3HU6zanIgNN4I7a8mBpunDDwz11rX9FtvGDli0KcO9wJP/v7Euj0Ri+zVA9P53rgu7CBhkWSGe1kFQ7JUGLAcHHtXdIcC5GqqKF6cWtDgxqxXDT0HzEwbZqSNwDHXUnDaqWZ90UUz8Gt5gwXCxxM028Ws7QirRVZqojySyHM6E6Ec6zf2j5DiaskP3HVAONTtYN7syV0v1jPE8A8O2fiUnMwVZaVuhqvHGkEarZhFzIj3kORfz3BBfgRgSlMxLIWDdnqFhMVtI4RY61C3bUF2xQPw0Ys6kHAuEkqYngTV53Me26xaAyDKv47BRftjIdj3UEykSkInyGptRKpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=buGh2XM6D5nJiNOoQJWtQoL3tK2QmXInHz6ySj/ZKnE=;
 b=edaXxlswqO4QQqVufmChgvZ5tH9mN7Qlg3eXZjmkJsJqONouCMp73mx9UxHvottH5BOVOIlp1TNm7jTjLo8ZwLq6UhZvHigj26YUmaNisC8UqLqy+U2nfOQSm1svTfbvQ0t677J9XMGwdN15yJNwJlpa+OKjfy1C9rbKqsJwStY=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DB7PR04MB4940.eurprd04.prod.outlook.com (2603:10a6:10:22::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.21; Fri, 18 Jun
 2021 06:44:27 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3164:e047:376d:4a4f]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3164:e047:376d:4a4f%7]) with mapi id 15.20.4242.021; Fri, 18 Jun 2021
 06:44:27 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org, sboyd@kernel.org,
        s.hauer@pengutronix.de, linus.walleij@linaro.org,
        aisheng.dong@nxp.com
Cc:     festevam@gmail.com, kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 03/11] dt-bindings: mmc: imx-esdhc: Add imx8ulp compatible string
Date:   Fri, 18 Jun 2021 14:54:15 +0800
Message-Id: <20210618065423.3424938-4-ping.bai@nxp.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210618065423.3424938-1-ping.bai@nxp.com>
References: <20210618065423.3424938-1-ping.bai@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [119.31.174.71]
X-ClientProxiedBy: MAXPR0101CA0046.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:d::32) To DBBPR04MB7930.eurprd04.prod.outlook.com
 (2603:10a6:10:1ea::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by MAXPR0101CA0046.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:d::32) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.18 via Frontend Transport; Fri, 18 Jun 2021 06:44:23 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5fa49157-79bf-47dc-685b-08d93224848a
X-MS-TrafficTypeDiagnostic: DB7PR04MB4940:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB7PR04MB494079AA810F1B6D2F9DDFBE870D9@DB7PR04MB4940.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:350;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: itn+lWuO9LlrA8+9OejgoULTss7IPBEVfouzX/UqYeMNFp0/fCE5926CWYXNdgRZuypew4fMHOGjBTrDCWEGhBzAQ2tzSGni81ZXwqg8+2O8+waIz4ECDaaCUuVzza6/oou4lfbnHQOMhcJ1wh8Xt/g2sEcWAz8OuO2pIYDJTlWz4id7NWz7dOLMYVfwNqvcTHJlXxmBaGaAssmNg5JAGoObR19fM+jNkB7MhuE388mBJ1STFI8H9m0ONK0M+0+SjauB4Iuy+Df/Z1J/dZ/GKc2EfDOuj/nwSFBNiXzu0CertrMYxJMxYuH/CWbqu7Djjk8iAIhcU+Y9xf7u8Mkganl0cPyLkUGl9fmMeLC3IxWPScsu4ejTUnWTtWWTxRMa+T+35zPVo9XyDoDJFNHbpmsXNrVkDDpcWcVUJAtuHCHIK6TTL4HrbT5q4Jggj04+WWCHYNzYfDHSCqeMFnsMtOoLWTkjwL9Se/HO2PO5ZHRkO5SYZ0HNb4pTcushWznDoE+V25schYMr2gfDisHgWkXPf+KvgXuhM5svDuGhbLFhvSy8k6zHWHdOt/Il7kCacryvKf/wlXWLgTDOMTdlM5HxGJ6PvjRQevU6IcpCE6GDELlXg6/qmHpHk/AcooYsLV7776KWcEsLULdcMRnUKO2xmt32jN5n3kNeQo81qsB3OOcTatXsOGiZHGtN3t9pR3VOifUcvxGRXH+TqXDhcg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(39860400002)(346002)(136003)(366004)(396003)(5660300002)(86362001)(6666004)(38350700002)(1076003)(52116002)(6636002)(6486002)(316002)(6506007)(38100700002)(2906002)(478600001)(8676002)(26005)(6512007)(36756003)(4326008)(8936002)(66946007)(66476007)(956004)(186003)(16526019)(66556008)(4744005)(2616005)(83380400001)(69590400013)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kdz/JiqVzwwYzhF8WyJzGjsuBavWyZGyf8A7MhKMfH4P+V87JktoPV4r9+Ko?=
 =?us-ascii?Q?BMKEtfbaNcRmdUXGW+jk0B0c12e4cL1bXfiRJfK+3GIUKz6chhw/D1qnluIu?=
 =?us-ascii?Q?6AqAdw2REJ7CJYN0vzolAFgkWC6gFeq2nXHx45SP7SkwRZZr8Bj1+wVEpXlr?=
 =?us-ascii?Q?Ro7FXJHVj/3m4FEFwl6F7xtTiA+TDQGGc4E//zIk8yQ9SX1VkGYEf4OVi9Jj?=
 =?us-ascii?Q?bVQn40Y9BpXwbZw6on47LmjXp0H3+vLIuE21R7thGLlh+Jct7Gk+xuaeny1u?=
 =?us-ascii?Q?bcolqb8FAaj3KhQkvrwnjSqHe3y6AqfnZGsZKbcX5o4QztggZ32AlhMJxf2m?=
 =?us-ascii?Q?MmRcu67cWNwPRJkO/tBPjWpcNJcBzYyS1QDgjt6j4cvopdiZ+ydt3b8FyY4L?=
 =?us-ascii?Q?BHpkMniAf2eIRuaz7MPD0orR4BBVJAT09vMGIcEcBoaljT1ByZCIw55Ow8ce?=
 =?us-ascii?Q?A3gmgT7jKIRuqziBH0frpIVSQSvo83bCbLr8ghwWcFhNLnwvEKji+DmPubCZ?=
 =?us-ascii?Q?ozEewQAAm31gJJUlVj+uOZ9osh2cxvRMCslb6fPsPKR/KYpje/73oe14JkCz?=
 =?us-ascii?Q?DWCRe1ahENUD3kw30b6k44RfeFc1ArtbIHoNxN12E3L7tgqBH8cA1lWpsiIw?=
 =?us-ascii?Q?tvhPwiK9it2+xwMnLe0JE+23BtY2jWE2xk+Nl8e9Ejxgrw9l0HfatmDEYT1/?=
 =?us-ascii?Q?2JvFYFz3ybiUjTi3vQ0X2gX0dv/rz0uT/Bt5iQJv6z+BONvsQGxFNgJxHU0h?=
 =?us-ascii?Q?uafPyAh8mrf606i3I/IxKyYvD7e9iBaBiAnavpoJWt+4HHeiaG4XDZD13rfw?=
 =?us-ascii?Q?b7qK2vYH+5BFef2n2pMhjDLCHeA3UFm5twq0oPloK61VSExgzsqJs5MvybTu?=
 =?us-ascii?Q?63LC9XVinlfaJfwEy0zPR51xdpW/N3X5b9rktlLV2G+d1dLH3M0nYae84ot2?=
 =?us-ascii?Q?eoBC5q3rpfeX6VJQqDKLjR5RCBM6SXYfpp/NWDDOdzY/0rOsQQ6S39kK6ObL?=
 =?us-ascii?Q?K/P85Ud9KMCC2C2qQJJCWEdT1ue0SYB1TJlVFsv3qGAqmCZOA7URFQ/WFG4/?=
 =?us-ascii?Q?Ya/20DORLj1XZoHPPNUtaAzhAJRXbzcC7Q45aaeMmVJ2H1IKiWX6BWSTqnCa?=
 =?us-ascii?Q?flFuL0BrIH6zFDx02ySe6OHswpVHtorf8Tq4PEpolPWEuYQ4OxOsCivT4DRl?=
 =?us-ascii?Q?dG4oqXi+zPYk4cLm5fcN+Ex99LQor/L55XbfGEUJhQQ6gzzo8k/h5svdjQ34?=
 =?us-ascii?Q?jXl/bIeDh4grrE5X38HEOd97iMgYxLyKnaNqrX6MO2PaIUGIRhFdwNcCUITh?=
 =?us-ascii?Q?jIowwYr9jSQlqKJ95qn1U3N9?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fa49157-79bf-47dc-685b-08d93224848a
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2021 06:44:27.6507
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Dro2OpAs4Yn36aq8eDazVI8o8uj+Y2cO1od1GT0izfIY3+1N+rY2HHECLL/KjLaLvMdSKV5ed6NiZ/qLtZsXOw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4940
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The USDHC on i.MX8ULP is derived from i.MX8MM, it uses two
compatible strings, so update the compatible string for i.MX8ULP.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 - v2 changes:
   refine the commit message
---
 Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml b/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
index 369471814496..aeee2be1e36a 100644
--- a/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
+++ b/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
@@ -42,6 +42,10 @@ properties:
               - fsl,imx8qm-usdhc
               - fsl,imx8qxp-usdhc
           - const: fsl,imx7d-usdhc
+      - items:
+          - enum:
+              - fsl,imx8ulp-usdhc
+          - const: fsl,imx8mm-usdhc
 
   reg:
     maxItems: 1
-- 
2.26.2

