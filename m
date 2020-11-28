Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 74BE12C7538
	for <lists+devicetree@lfdr.de>; Sat, 28 Nov 2020 23:23:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388072AbgK1Vt0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 28 Nov 2020 16:49:26 -0500
Received: from mail-eopbgr70085.outbound.protection.outlook.com ([40.107.7.85]:25058
        "EHLO EUR04-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1731818AbgK1SKf (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 28 Nov 2020 13:10:35 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=asP57usAQxq2ALk/q/RxvTN1l61m+2qNPZtQszOw6+9xcwcwcvaGq4KKK0t3rovvBs2/pRfiNADYBgpK9HATH/7FifuAtaXTbIKbp1acWXHQGYXRsuuiE7Ab9MOC32SsUXXRzoXcnJqtED5hGrqacypSoJEWLXA+FhkIRqUABmHXokMDC9fEEzPqUbVpqJwB95zzIQVtdhC4o8/iATpwgVxA4q32C+gJ2SW83s7PfCh+RX1YvckpAMi0eZt1quHGDSkMYMEtT0TyUliB5P8r0BiKsTRZMtKGP9N5fla3rQG51aXKz37Myu6O8yWO3dntkqoLo+ixiALGOzUhebrwqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ykfL2k9mOycQLZsFj+W7VJqj5rIJRRZpknFW48bZAsc=;
 b=b1u3q1e60w6FAiTFNCvO6Z6eAQJSACwXlw9c8erfp/pB1Kf/MRuq59EMX43xlJgICGWi6gOqumMu+ohkqvfTKSdSQrJJ3D3Ah6AuDqosHh3wNrRcQ6rb6kWm2TXwb4fs1IImcp/rqmQ7bUlBL2oCnAlnmcQYi7T0fLbP9EUXI1NQe3fgYXJCeg2nMdJNpj4rK3n6Pyvf1SJ4I7KDHSjW1/vxRkTowx6q0cLri9Jn7eOoyKNWtl9eYwLAl2mEH8mZ9RnEsG2Ulw7hTN470OOoNEb9S72yTl5JA7OhIU3a0z9gfttd3nDIcPmh9ZLVOLCYOrGbBBKYY5OGUsKF86biMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ykfL2k9mOycQLZsFj+W7VJqj5rIJRRZpknFW48bZAsc=;
 b=rU2tUaLJQ3zUImi0K5k+qNXrR27iCcgfwmxwQMVuYfMw5jzVyAn24UzeDkKGl8zgXiaA/uN6vOF9NK+S0BKWboaz1AntMBr7bqZHd4VwuPltDWuODRdG0e3bM58zpxDA6/X7dBtR5TXKh1j6WfufdDQxYL525Rl6Ea9o872/pPk=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB3PR0402MB3707.eurprd04.prod.outlook.com (2603:10a6:8:2::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.25; Sat, 28 Nov
 2020 05:36:10 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::b83c:2edc:17e8:2666]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::b83c:2edc:17e8:2666%4]) with mapi id 15.20.3611.025; Sat, 28 Nov 2020
 05:36:10 +0000
From:   Joakim Zhang <qiangqing.zhang@nxp.com>
To:     will@kernel.org, john.garry@huawei.com, robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-imx@nxp.com, frank.li@nxp.com
Subject: [PATCH 1/2] bindings: perf: imx-ddr: add compatible string
Date:   Sat, 28 Nov 2020 13:36:26 +0800
Message-Id: <20201128053627.7971-2-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201128053627.7971-1-qiangqing.zhang@nxp.com>
References: <20201128053627.7971-1-qiangqing.zhang@nxp.com>
Content-Type: text/plain
X-Originating-IP: [119.31.174.71]
X-ClientProxiedBy: SG2PR06CA0093.apcprd06.prod.outlook.com
 (2603:1096:3:14::19) To DB8PR04MB6795.eurprd04.prod.outlook.com
 (2603:10a6:10:fa::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2PR06CA0093.apcprd06.prod.outlook.com (2603:1096:3:14::19) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.20 via Frontend Transport; Sat, 28 Nov 2020 05:36:08 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 0c02f3ea-bdbc-41b9-1989-08d8935f8327
X-MS-TrafficTypeDiagnostic: DB3PR0402MB3707:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB3PR0402MB37074125906EC2E169D6E92EE6F70@DB3PR0402MB3707.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:361;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MkdupYbvJSlOXPywXwmQ5O0NZh7N31zAp7Pd1sd2cotiT/HSyNVle2CDJGVT14IX8nG6OZdYjiEmDBKALC2wR2xJBuAP6u6uC1MekQ3KlzJyXzJczUKLKNfcA5pwPFjii2LIzVzihIuhF7q3aV9XMUXFtsSNSqg41pv4zaLVESBHwa7BrtQ6q2Hu8FLCIEFdv2PtdvC7JAmYQuteP2LUYKycztBn+jxKxR6RTdV+W9tX1RqjEghrhq1GTEYnr3Xp1ttLL1MKp0D3el2JRf3GJ7kKHXMU9Uf8/dbDvdX7fSYr8Uu/V+2H3TJ5gBJKals+WKd1iW2dn4FBVweJzfCaRg53JfaegBUiXcmIo7VUk6ck93ROBKFBur9WtTX9AaTY
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6795.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(346002)(376002)(136003)(39860400002)(366004)(86362001)(4744005)(1076003)(6666004)(26005)(69590400008)(4326008)(36756003)(16526019)(478600001)(186003)(52116002)(6486002)(5660300002)(2906002)(8676002)(2616005)(66556008)(66476007)(8936002)(66946007)(6512007)(316002)(956004)(6506007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?qnVoBiS9XjhOPUC9LNhfO9VgMwNfzisfiqA1Dkqt0pLBKGMgTpQ1mDLaWPaU?=
 =?us-ascii?Q?fulHeRd7qzBSiWwpQTk0l2x/WV5qDJNwqWtv5HKbdIZpyIwIGJ3HxFKfol8F?=
 =?us-ascii?Q?rWXtngmmc5DIv2YIeTPeZ5bqpVrafwvPg4F20Fp9FCuJPqljzHhQ6o8c+pkO?=
 =?us-ascii?Q?zihTbQjLODfgi6MnQfrdhxhFB4AiiRrnEsr0kNonnlqALlfwSqsTF4urcKos?=
 =?us-ascii?Q?SJw9iA9u875REx6MH5XB01W05qBAxDaw07HFxWmN5M68r21D653FSKREL72d?=
 =?us-ascii?Q?YRmT77ndkJappnLp+l+NWDyjBTIxkL/FBxUUuy1gsdfVXV3jZtcSWDubs5jQ?=
 =?us-ascii?Q?iQww9Zsc9xBRP29dBiPyuzRsBaMaT0eys5nLpUVgHdSFGeNqSSAUIgNmS83L?=
 =?us-ascii?Q?YW6gy3d7zGWNDPvWa7u/HYWSwLCyEQuGCv5+MGCV3TcF6y3CMJFSg8bTypoF?=
 =?us-ascii?Q?zE2AOA953x8hBe0FuhGJh8yBKIBanS9X32WNZd17p1OpvtJ0o5scNMfXWp7h?=
 =?us-ascii?Q?weR7HxlovOLNoW80hmk6wseIgc7pL45MKiwd4lzuw0a1GevAZv/AuR+uQETA?=
 =?us-ascii?Q?2y8iETb9Y4EZRbB3U8uk6mJ9TyCHb6+/B+dkOU90txdGm84as2E8DMzq9tBp?=
 =?us-ascii?Q?/G4orquPpMrDRKgCRqo6eHOe4kundVRLOfjixx6XTJNl7BIGhtSUZ5V0jKU/?=
 =?us-ascii?Q?rRST8Bj6yYZCOx/FOJrK9Nbm4unZzypSQ93blJRsniEatw8P4vPd6gjqS70q?=
 =?us-ascii?Q?s2iFqS2Cx1z6f/O6xI0/AwhLnRNgpwZvTl03fhRnAD2THT+Kacl3kapzBxzr?=
 =?us-ascii?Q?gF7wNxvkX3dW0eTRmOWZt25i9TiuGXta5fvGAnxYCvrrgJOZmPmXy8nXS6ZN?=
 =?us-ascii?Q?HHqyJnj8GUc5XcPElxfa/QfBzC3nhwgBg+QOcG+qzVE+Qt76dJasvNrK2wIc?=
 =?us-ascii?Q?UMqhv3WvilzCF9+3/ZNrjTk9O6VoAgB+GWozV7UL5fh003kGjv//OnvokjCk?=
 =?us-ascii?Q?s4k/?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c02f3ea-bdbc-41b9-1989-08d8935f8327
X-MS-Exchange-CrossTenant-AuthSource: DB8PR04MB6795.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2020 05:36:10.7993
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yD2UMYe9fxJvBt/60W4fuK5dExGzwb6ip50tU4FGeeltVYWYt+BRhAIsqfUUmcF03lpJunN2JFGQBNeqhIGYOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3707
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add extra compabile string to support driver.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
 Documentation/devicetree/bindings/perf/fsl-imx-ddr.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/perf/fsl-imx-ddr.yaml b/Documentation/devicetree/bindings/perf/fsl-imx-ddr.yaml
index 5aad9f4e0b2a..80a92385367e 100644
--- a/Documentation/devicetree/bindings/perf/fsl-imx-ddr.yaml
+++ b/Documentation/devicetree/bindings/perf/fsl-imx-ddr.yaml
@@ -15,6 +15,9 @@ properties:
       - enum:
           - fsl,imx8-ddr-pmu
           - fsl,imx8m-ddr-pmu
+          - fsl,imx8mq-ddr-pmu
+          - fsl,imx8mm-ddr-pmu
+          - fsl,imx8mn-ddr-pmu
           - fsl,imx8mp-ddr-pmu
       - items:
           - enum:
-- 
2.17.1

