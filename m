Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 73A5339422A
	for <lists+devicetree@lfdr.de>; Fri, 28 May 2021 13:48:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234756AbhE1LuW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 May 2021 07:50:22 -0400
Received: from mail-eopbgr60069.outbound.protection.outlook.com ([40.107.6.69]:33852
        "EHLO EUR04-DB3-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S233429AbhE1LuW (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 28 May 2021 07:50:22 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EJE0oMomwiOWPV4FgA/EntyR7/zIdlPY3U26HJ/zjPNDXCMvDWx4GBr0Fi/BnLcoLHuJZLHfpN0hp8WZ1BHe940XNbfNOcHkd3A9iO4GZIswDziyy7/p892LNXJd+sBqjfabc37+GfOrZaVt6mRf6jNo+HXCusXUrkYU1DxwDlipguu4vKbONVOvqNSFP641q1hUvh4IwSlvhqX51xtYeDBWHTgC3eU6REHCJ3BlqNzDVskNPWBIUVqHqbUyjuy6EnpS9vcEgBkAwH5pPyMBycAUfLfsXAqP/ugmwdbGJzBLyoSUp8WFyqGaAUbTZRTXhCsyg0vKG57ZjGoHm4gcBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n1q99t8qfyckFcAlMNjiJV+VXtPsqzA+GkQWTelatus=;
 b=MUoMX27RJwVjR5TCeQA8WSGvpSxEutRc5qWqu3soplxZj/H0O6951mTIFLvAzhhNn2EE2f1f5z+ODXozR0NQ/alNeR+8jCTzRFS4mv0MU3rGidH1en67gkZexDhS+azz1MLMM9SIWPONXKQeP7KOBpaLYdlFb8hU+qvOA2+6i90dplEUxfDqcRuSVQ52p+NUlRxFGrLaBwOrzYvA4F94D4Ww685ysQHAkYw/WYx5MZOkDciVrG8i1VDva8FymtQ0IhSXX0OJJQ90drHX43H3rQZd/H6P214tUWlkthTI1u04FaXUJw72ZHTYidy/XsgWJis8DesxVfatG1NgKhpT6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n1q99t8qfyckFcAlMNjiJV+VXtPsqzA+GkQWTelatus=;
 b=YFC/Qi2rvkwzaoYX9cn+Uy3uvAbRb64J8b3GwnWgA0agBM+AlJ4MD3fj+eocpdocL8+VisAw1vtei8AED9KHpMllu3unQtP+IPFN3+kjD711CGgS+uWhwi+Ldno6nOLJ1/+S0oX8EJgWxpN94fmJaTrFfnxMRUTojd2+2KRZm2g=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from VI1PR04MB5935.eurprd04.prod.outlook.com (2603:10a6:803:e9::17)
 by VI1PR04MB4094.eurprd04.prod.outlook.com (2603:10a6:803:43::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.20; Fri, 28 May
 2021 11:48:45 +0000
Received: from VI1PR04MB5935.eurprd04.prod.outlook.com
 ([fe80::453c:f24d:af8e:f194]) by VI1PR04MB5935.eurprd04.prod.outlook.com
 ([fe80::453c:f24d:af8e:f194%7]) with mapi id 15.20.4173.024; Fri, 28 May 2021
 11:48:45 +0000
From:   Li Jun <jun.li@nxp.com>
To:     shawnguo@kernel.org
Cc:     festevam@gmail.com, linux-imx@nxp.com, jun.li@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] arm64: dts: imx8mm-evk: disable over current for usb1
Date:   Fri, 28 May 2021 19:29:58 +0800
Message-Id: <1622201399-3862-1-git-send-email-jun.li@nxp.com>
X-Mailer: git-send-email 2.7.4
Content-Type: text/plain
X-Originating-IP: [119.31.174.66]
X-ClientProxiedBy: SG2PR0302CA0001.apcprd03.prod.outlook.com
 (2603:1096:3:2::11) To VI1PR04MB5935.eurprd04.prod.outlook.com
 (2603:10a6:803:e9::17)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by SG2PR0302CA0001.apcprd03.prod.outlook.com (2603:1096:3:2::11) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.4195.9 via Frontend Transport; Fri, 28 May 2021 11:48:43 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: dea62d9f-f4a6-4678-2ca7-08d921ce8c68
X-MS-TrafficTypeDiagnostic: VI1PR04MB4094:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR04MB40945325C1AE7952F03154CA89229@VI1PR04MB4094.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:510;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Uqe19/1mfzmDj70JaMOyR13xPtAfg28nhXGs9dIk2jviCZRlkQINm83h8DenqjTwdo0AlgP+vU1Q0vPryq8s0gKB9xz0cvghKKafmjRstFVhNgLyxHI/djZbLONZGnReskB8S6ts+liLVwpgJE5tmDN5PnvEXd8Uzbat8ii06fWZwTIb+SNX5i/cNi3nUtp3P0yzzMDaqQCc1kvD6PgfhyYsYPcO2Mqb+gjE1nyAe+dhUZao1wtqP3e/IxjgRAUdRzxAWAsodsBYXvkaIYIHllN8VdmN64XCd9tHT23Q+nn5Pv1S3/BoJpS9d5U/dF/HWVlzm0+BH6Th3TIM8QLrGPQnybKhRUM/BDWJzRAtUBvhlRhZQGvGBp8PrHvWH2BJ63vMswnVTqLWDSVTdoM8w+4orMD03bWCv3KXxubnCuhBYdec71Fl3tW1YwqGOdBKqi3icDi9Cokb6yB3LpXS6rN1A2S+ErjAXdPfzvLXRgCxzzas2nDnyAPC8mnJNBKqHHOJS7t0ZhDVDEwtAlOXBJIwok80EDa3XWeTjPyAzu/OFtjwRuZSxYZ9dSdb8qudW/2w1EM861uO+Pg8cACXh6emZAK1Wtxe78JguYd2K87Q3NqSRD/djnFOpbnPTELWi05DccSRbKgsOujLLn65r+VDvMwIaZNxA+6hRx9SqVS0IagoiwU7KEos9vePbBYw5cxeA50PhwN1jsUHwO22Ag==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR04MB5935.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(376002)(396003)(39850400004)(366004)(136003)(86362001)(316002)(8676002)(5660300002)(478600001)(6916009)(186003)(38350700002)(38100700002)(36756003)(26005)(6486002)(52116002)(66476007)(66556008)(6666004)(16526019)(6512007)(2906002)(66946007)(83380400001)(4326008)(6506007)(2616005)(8936002)(956004)(4744005)(69590400013)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?oScCjRlpApHsutxjr2oIPCPY2Cqvohxkhkiqywg+zMf1vBZ9iAqpjZ7MTWbD?=
 =?us-ascii?Q?tT2bwJ/mINSF65Y3a3bu5i9opVS9MeztQPxySkKEbvssRt1DP7odKFH7/0h+?=
 =?us-ascii?Q?nfZGdzbzDBYwTxCvKYIIKyqohk68cn5aU4pH3yXDxwNC+7qtc4uCW38g+nvT?=
 =?us-ascii?Q?V6F/MLMZ6uobRZF2mcvGnRVCQa3G0+eYqarBqQax78F434Zq58po+FyFx/RP?=
 =?us-ascii?Q?z+nKTKvg//OAHkyu6WG2sxBifeCTwrcmfbtX6t/CGbDIsD3kBq7XKRri1QPU?=
 =?us-ascii?Q?lBNaowk28pd7ItXYJkdWZ3W1DByi0RNBZXZ/Tgnu+lg10l8tnozSWsA3VtTm?=
 =?us-ascii?Q?hgge191+IhQ7dk/1jmf+sjmzYonkjVe2txl5ga442TkSf62p7+1kbdumvDhQ?=
 =?us-ascii?Q?OxucqlX1HWpp5qsX+nVTwyxKWJ4RW+jzNk/1JLMK9LqH6qifYZCCTdbiicrl?=
 =?us-ascii?Q?txd3SIMtUDDNC0duVMiEDledaSKdEkAqn+Pb1Ntd3SVXvFACO6qO3taGDr57?=
 =?us-ascii?Q?OWFRvoVZTGWyXxX+mcgaAPrQNm4zh/6z7BnelnkrluscGZMQmfrpCDL/Sa8l?=
 =?us-ascii?Q?beufaF4T2Mwg95cv26QagFXixAHo09NMWsSpyyK2nyvOEOcqcAbYAG0MozGY?=
 =?us-ascii?Q?szG9ZEpRHTu23kT/uqOxMMVwSWme6Ux8Fqtc5Sh/QtojEtZiZWwgqLhTGrAy?=
 =?us-ascii?Q?izGzGza/JDzNnagq4euhsGb+BilbhDieRLwV70qaKo7Z+6fVCvdn9FSF/eiu?=
 =?us-ascii?Q?M8gs15GP2FP7K8kVIwsOEqYCNg1a2SQWO6rPlUuNCrIDZzM4eg1IoW9KkV23?=
 =?us-ascii?Q?rtkNmEeqquSW26lyzjoy05Am5AAWU3iaqUSS4aZg+S40Ue6QcxoXcEitb1Kn?=
 =?us-ascii?Q?ZSQBel8MMtbwrg6ilZDSR70H6OI8Gwxv8nXhAw/yx3oVIWVZidkwxldu3NUM?=
 =?us-ascii?Q?N1YqwyGUBgmXyLxzUVXrG7qfFdgbbjRsdljS5Kopg60NMw/WYFTw0ACGuPuH?=
 =?us-ascii?Q?AIQgvdrG3DtN0hktxYr3bhhrHpFjmNp/uVkEqur94ZBH8hN1p6YAQrVhNScX?=
 =?us-ascii?Q?dFO0NY1C46fte1Ho5neTZkZmZAlm0gpHjGUHtXnU9CDzcbvNdO+MkHqnQYdE?=
 =?us-ascii?Q?8VnQIWUEE4s/V75Cwmuvi3LsCPRBh//OFftfTl4cfAZRFZYcWbSHSvOmn2Fu?=
 =?us-ascii?Q?PeGe6KhGEW/8JFmv7VbvJ3zXNRrD/XtqTXtM7Rdeg/HKIGxoBqGFwGV/pFf/?=
 =?us-ascii?Q?QoR2RSo4MOh3Y0Qxqa4MFhDTU4u7TLFYtLjWfkAHQb5o31uKCtU+f7hKoZ+3?=
 =?us-ascii?Q?rz9ouk/4WfStrKUDc3dv4GOg?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dea62d9f-f4a6-4678-2ca7-08d921ce8c68
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5935.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2021 11:48:45.7809
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EqVUJ55eSqhfQ71HvR+oGxcdcwtBUwADrxCbYrMLE37DFK2MaeEEwF9YBW3vrdTs
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4094
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

imx8mm evk board usb1 port does not support over current detection,
so disable it.

Signed-off-by: Li Jun <jun.li@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
index 6518f088b2c2..e033d0257b5a 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
@@ -314,6 +314,7 @@ &usbotg1 {
 	srp-disable;
 	adp-disable;
 	usb-role-switch;
+	disable-over-current;
 	samsung,picophy-pre-emp-curr-control = <3>;
 	samsung,picophy-dc-vol-level-adjust = <7>;
 	status = "okay";
-- 
2.25.1

