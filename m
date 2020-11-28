Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8CF782C756B
	for <lists+devicetree@lfdr.de>; Sat, 28 Nov 2020 23:24:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730752AbgK1VtV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 28 Nov 2020 16:49:21 -0500
Received: from mail-eopbgr00081.outbound.protection.outlook.com ([40.107.0.81]:48636
        "EHLO EUR02-AM5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1727612AbgK1SFf (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 28 Nov 2020 13:05:35 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bDNYmxlyfU66uIxaXmguKYmmn0+SKFeHBA5N4sZammFUflX7lG/nuE8fvMCpcdsf2+UnZTP3XGK9HXzORVk8AbW+lGt6ZKNdsuia+ZWFvtA7rDED8Ps6mApOWWsH+6t0F0V53ohmonjseYblmoMZTimbpFhyH1D26LKFMtrggacz0EyNTtcX5tB8LKSoMIRnPlsbUem3gsH+UmuRl0ObussnReT5LZgiYIi9fnP4bpzBqnPCPYueAbfH2a3/HS62BVJPRP19ZKP6C6Kiq6kGVt6QpMDPYIxFWZE6nnwV/ZWYwEM9oC0o7yJcwpXL0aFGZLwAtKFRm4LHiRlKKyQY/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ykfL2k9mOycQLZsFj+W7VJqj5rIJRRZpknFW48bZAsc=;
 b=Ev79GPvUaUmqjD6rF+7u8CufkGl5Z8Kf7pdCu++P7oBbrKsDyyjzRPwZlOCajg62/ruYl3SGNbjatSPxjR9myEultOo7peAdMnY/LOihdFnbZgWLQOJmVo/bBsoMWwdhtn1P5R+VdBoKKiNxpBqM8BFcHyiYQWqmFVrFCTbktlMzjSSGEppZJ8gR7KOwqOshZw6d/SMN0iHppeiAQtauQYBVJB7vVxYsYn3CGoqn8FhCxwkITMwCB/fXFq/VH9WVo4wWcdfMC/fxMJ+qcxXBBacgvfgc3KkJXvGElLij0FCZi6GnyV20ALr7H2c7DA6b0AIceBAjHGK3UIHTKEDlSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ykfL2k9mOycQLZsFj+W7VJqj5rIJRRZpknFW48bZAsc=;
 b=VUFL13nERd2DFSsBVbOqigrs1ycokV3+GBG59GjlGtXyQzWRyxFd9VMxBjkRp9zjw8h20yxJiO7NQOrHXsiZP5LOXwuBWCyhih1i79VZmk0V954tYU4QwFaSspA83OybrNpnCrlwTAwUf62n7xD0/XxF1cQIIEopJB8arwyay/o=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB3PR0402MB3707.eurprd04.prod.outlook.com (2603:10a6:8:2::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.25; Sat, 28 Nov
 2020 05:30:57 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::b83c:2edc:17e8:2666]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::b83c:2edc:17e8:2666%4]) with mapi id 15.20.3611.025; Sat, 28 Nov 2020
 05:30:57 +0000
From:   Joakim Zhang <qiangqing.zhang@nxp.com>
To:     will@kernel.org, john.garry@huawei.com, robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, LnxRevLi@nxp.com, frank.li@nxp.com
Subject: [PATCH 1/2] bindings: perf: imx-ddr: add compatible string
Date:   Sat, 28 Nov 2020 13:30:51 +0800
Message-Id: <20201128053052.7880-2-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201128053052.7880-1-qiangqing.zhang@nxp.com>
References: <20201128053052.7880-1-qiangqing.zhang@nxp.com>
Content-Type: text/plain
X-Originating-IP: [119.31.174.71]
X-ClientProxiedBy: SG2PR0401CA0016.apcprd04.prod.outlook.com
 (2603:1096:3:1::26) To DB8PR04MB6795.eurprd04.prod.outlook.com
 (2603:10a6:10:fa::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2PR0401CA0016.apcprd04.prod.outlook.com (2603:1096:3:1::26) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.20 via Frontend Transport; Sat, 28 Nov 2020 05:30:55 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 225f1483-d65b-47c0-bc4c-08d8935ec882
X-MS-TrafficTypeDiagnostic: DB3PR0402MB3707:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB3PR0402MB370709A133551942C51F433CE6F70@DB3PR0402MB3707.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:361;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2Ikh/XMsCteDg9NsOKkF+oQpPRY8x6+nMIumj4eU8nblHIFpyDDxADmp7TN+iHSz/hNcqV9754k9mLZjuIj+GEwqc85UlSqNGLIsrevea/VjzvQILeGLJyViItsXgp5/ekFWo4xfirp8vncbX54QyxuMPpDPn+Hkc3nDNgpthCNLFgy5ESYkMCseoQCODTfeLf3H5lNFTFhWvYbL7ZV9FfKYee/Q9vwJNQVWNEIRSpx1JijoklY1wYk/8MpMXcX95JDmwX2XVGeeRDWemODoyu05+BENzlOQqOIW0OtQPYX3yh0Xi+wQmr4wKvmmEK0Ko7wFT1olGIDrjUs8u1s8e1zY4eH5qvorPoZ405qluUd0lZNIgffP+qq9Z+XANWjf
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6795.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(39860400002)(136003)(376002)(346002)(396003)(2906002)(8676002)(52116002)(6486002)(5660300002)(66946007)(6506007)(956004)(6512007)(316002)(66476007)(2616005)(66556008)(8936002)(1076003)(26005)(6666004)(4744005)(86362001)(16526019)(36756003)(186003)(478600001)(69590400008)(4326008);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?6YbtUMLbN7pKc7N9eYtgsGNHTMqNnhJHIOv0Tg7XIHUxBbhVLl+oOyc9C3NQ?=
 =?us-ascii?Q?yhL05GHafx1ZVe9E2njl0ruXYc6LqFxiQwCc9kN0rVJXCrlVWpehcf0nlmdY?=
 =?us-ascii?Q?DBkKb0gTiMYg9mtHMNSfN6rHhK45Q1TOIuzvoBaBilfUASwctEsHL6ZCDVmk?=
 =?us-ascii?Q?M9Snxh5Km+Qvc50PvZdAEdFskAFGEb4Enm3S9FCk3W51NLaeSookndGp4ZNC?=
 =?us-ascii?Q?mxwkv3matPqBNL37yX5egyXEl9s6/3tSKCeahw5wr55kuYIiFubyu+BKzqZA?=
 =?us-ascii?Q?tW6Pl/9idjeORJYlKZJxDX5bwhbLDWMW3TB8ZjUYoZPEI8AKmiZdmn22hcu8?=
 =?us-ascii?Q?fyaLgY7vavl3ImuF6aNjKEdhMBCKnp7NysMdA6l+8Dm6uVTYPjupSuPblZrI?=
 =?us-ascii?Q?pTSoLe5bL00zbxVBrWzGxbGl9QAKOJ5sy2KfeVxRxGPWazltkeCt/UR3XYhv?=
 =?us-ascii?Q?F+BpAP1c7MCe5Y3CBf1Sh0sBY2gBgWKSnD6pPPZmSGfgLn1Z4MhP2r6Cj5Va?=
 =?us-ascii?Q?Sw2OqRbXuGgIvFb2M4ZARX7JxVVRju1KbvGmHM9qmI1b5suHJN2aRMK2Vcgk?=
 =?us-ascii?Q?Ke4q4MCqwaM0qQIzcVwL//pr5TCUJTc6OedGPT4x4athhMa/rYsTfzdWwyOb?=
 =?us-ascii?Q?DX2nvls0BAPM1FU+B00eNKrxrD5e15qASOBYD2KTxf4tiHDgLFwKFIlhsM5J?=
 =?us-ascii?Q?RVV9nLGzq5HyjTspK5MM2UDkK7kmcaE/iAVn8fY/1fxJtVfdmNbwoWTaYezJ?=
 =?us-ascii?Q?jWRlqrM1FLBCib4sC/VbPdf41HiemqIYjMB27aRQlfmbJXmhIAuuofqdxjzh?=
 =?us-ascii?Q?ZoYn7eFZijTYtSkewWs9OjG7RiGT4qV+C8IqWVtnrd7Q/8hTW7GnjST6KT+9?=
 =?us-ascii?Q?SpcojWJNDLDZaA5sF+0BLdfJF88s2TMt4xtlV3r7FceFlc4IdJ/7BaoVv7FJ?=
 =?us-ascii?Q?3GpjmiRRGuhIsmCd22DNoCIBI1/Fz88KXdA7tONKHM+C8LqNJGA2zoqwqJSL?=
 =?us-ascii?Q?IH6K?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 225f1483-d65b-47c0-bc4c-08d8935ec882
X-MS-Exchange-CrossTenant-AuthSource: DB8PR04MB6795.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2020 05:30:57.7565
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KSU2YZhr8NJb/izqlkacpAyJ9Rsa4rPWY2uFTp4KabJu80zqa2pFI3RAANKbA0k3KjeDLdF3yu2g7zjOKOC4Fw==
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

