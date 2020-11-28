Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 588CD2C7532
	for <lists+devicetree@lfdr.de>; Sat, 28 Nov 2020 23:23:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732952AbgK1Vt0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 28 Nov 2020 16:49:26 -0500
Received: from mail-eopbgr70045.outbound.protection.outlook.com ([40.107.7.45]:33184
        "EHLO EUR04-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1733118AbgK1SLm (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 28 Nov 2020 13:11:42 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OzXGdP3LH0PTozV/pR0c389ejme9D/ehFI/wCspAgbaZNHV7WYmj8Oc18futoY+uEKal19jAviRAGk69fOsAn57tTAXkZQYyrb/vO0m/YygvKzhGT3eIbx4pc6Lwqwd5IIY3z3MYGM5VXkhvsM5ptjPoqZO2BGslchA/08o1aNZLIwYP967yIUiP7Eq67BPfVcsfxwd+mfthOzpbf4KeUTIaJyJXVXVR/q6UJw49rlmwIk1T5yEQktaVN9peqC4jwpufiNEkrJPBE0FNDoVgF2rzLpy5JzH6toAlBRSIsZFcVFSTTO4uRPIr5JZB41AqTGbo6X8hLnrHIABXXmSXxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=evtm/dgdXiNeVTNWxePJmSy4sGBTQd4vxlEZnriPEXc=;
 b=EEaJ8Pk2UEBQZJAWjfFq5tDdzkN1Kc4vN+2+Zw9Ml+RQhgo/RqyPNqg+SVE8NFHTebvmVzaKMUQc+5fj356jldEuKVXfYuzcH6A8fVrDL2TGVMXIQlWFoV80SisO60hPnQZSkj6narnMJx25fOahoPk8R6T3oKdQyG5f7EHmthipKn8d3N7r0xC3csG2hNk7ujZQ2cyYil8FJY5D992EyxhAUd3IK6Iaa/J0Y59HiRHGV9LQOgP2WGbDjoh/VgKfZhJDlWzqW9eBjGlvZZdB9ZAFInvnbGCYT+i7RoiM8pQm8eKMtLA17l3P7OxgPHGKq4Fo2PtecORjl2r1EcPaWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=evtm/dgdXiNeVTNWxePJmSy4sGBTQd4vxlEZnriPEXc=;
 b=f1RxCQVTVfqW0Ij0rdHumXp5TwkjdUnqzPu6if+EBy1z+2FXog4mE80nIm3j9SSQtrWW8//2I04BTT7D1wxRNQXP1pg7BNsESuSXB61ShMW8LZqIOjpKjb+iBb5HsA6ALUTwkJkTpJmE73JQ4JUhBdc36HJDoUJwb/wyB1PHDuc=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB3PR0402MB3707.eurprd04.prod.outlook.com (2603:10a6:8:2::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.25; Sat, 28 Nov
 2020 05:36:08 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::b83c:2edc:17e8:2666]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::b83c:2edc:17e8:2666%4]) with mapi id 15.20.3611.025; Sat, 28 Nov 2020
 05:36:08 +0000
From:   Joakim Zhang <qiangqing.zhang@nxp.com>
To:     will@kernel.org, john.garry@huawei.com, robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-imx@nxp.com, frank.li@nxp.com
Subject: [PATCH 0/2] perf/imx_ddr: Add sysfs identifier file
Date:   Sat, 28 Nov 2020 13:36:25 +0800
Message-Id: <20201128053627.7971-1-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.17.1
Content-Type: text/plain
X-Originating-IP: [119.31.174.71]
X-ClientProxiedBy: SG2PR06CA0093.apcprd06.prod.outlook.com
 (2603:1096:3:14::19) To DB8PR04MB6795.eurprd04.prod.outlook.com
 (2603:10a6:10:fa::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2PR06CA0093.apcprd06.prod.outlook.com (2603:1096:3:14::19) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.20 via Frontend Transport; Sat, 28 Nov 2020 05:36:05 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 2fe5014b-b4a8-4888-d6e0-08d8935f8186
X-MS-TrafficTypeDiagnostic: DB3PR0402MB3707:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB3PR0402MB3707760353E1B5864D82AA56E6F70@DB3PR0402MB3707.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2582;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: g1pcxcUlI05NYWjP2FnD0ubU7Z7Tj7Pap5ZAabQ+yBAfVb9UdSvQCjIia3zPyQORatyeo5RwylYPm5E1cqRCgjv+d36JQiuI2lWRWNzGz62Xga4DcQQ9Sm6p8E4NhD0fiNcm7QeqMAW4Zl9t6+S/B+GxZk6y2Nm1c0mMlxZ1LSWOkHfQTp+fwcxlWbZOiFYdnL3YOfIVWgerCPueRYKzpghDLxL9N/HIhpCHhOIHule+raN5XWmOKEBkqBf2K1rNd1Y+/+SsqSjvL9pTvPFcO2iFcxYoa1gPDkKSjxg9xtUCP0zy5KlIdyjQ9xKu4YYpOw42IGDriRQ8/v3kVQlBXvokt1+Y7N9dPnSfmLTeekkeaCRSbymG3EpnW9UsNHBh
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6795.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(346002)(376002)(136003)(39860400002)(366004)(86362001)(4744005)(1076003)(6666004)(26005)(69590400008)(4326008)(36756003)(16526019)(478600001)(186003)(52116002)(6486002)(5660300002)(2906002)(8676002)(2616005)(66556008)(66476007)(8936002)(66946007)(6512007)(316002)(956004)(6506007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?6bCt1mrg5Vr1Bp2X9TyRnGtzLWmlocrAlg3m+lpFxZtSfM1z+jmgoR9r/tPk?=
 =?us-ascii?Q?eEh/OGAAHkreJKJ/eqpBcCeeTqx4rEqVq1vsvBxdq2ovtVBxlVcqbgZOTEUT?=
 =?us-ascii?Q?xJ5b7ihEgxGNyEkdcCpj0g/MzN9wFJEcXILQpTAkbSdjQgD1D0sdO2nCaUC/?=
 =?us-ascii?Q?tg3P4cMIxlWp/MouHYiDpBcVlrjr+iiNMuuxY3WJMpNQQRnQOm+/E6sS5zlB?=
 =?us-ascii?Q?95cZAAN5OKblYSxlXKWVN36im4De0tn/QJRS22lAKXqsUVocV4AbtIkiBxu7?=
 =?us-ascii?Q?tYmLYlZeAN5RzsYTWtg2mlutS+qQLQPsPFcTm7cvePKyosBOrro1xnJdQyc+?=
 =?us-ascii?Q?gR/hSoJhwkBhwzp491SvWsJAbch0TxEYQPVGAkPuM426AuD8zCKx7ZcVyWeF?=
 =?us-ascii?Q?iR8h9J7kEI60x4o8YiGYANvjS0NcWxLzmVdeIvnwU7ZWeSi+Xe3poxzsy9Z+?=
 =?us-ascii?Q?OV8/Tqc2ze/4JuPkpROow7LsXhjk9Mscb1Sp7YJrBv3qNM4AJkPlw2lNhwBz?=
 =?us-ascii?Q?skngQS+LELpMjkoHOrvUc1ooBaJRAbbHcmxxkM9b1F2JXnk3PdjbtATaWTil?=
 =?us-ascii?Q?FuS2Spaqj13sjQaaMTC1M40S2utDyCtrvH+kLwHfj/AY3+jZ5dib3s2J01X6?=
 =?us-ascii?Q?muE+rRJToZK7URtCTFSe9Rm6G9uRHaSjXgCT9HB0ljN1vA7gBEUHtjkXRMIR?=
 =?us-ascii?Q?ZftTzH0wzAWbU2JXod0JuP0PA9lRWHTN2z/4I5Id2ohBiyE8UJD+PzmVUD7d?=
 =?us-ascii?Q?mt264SB8JPNM8K0W8KXxvd4jKud5PCqNG4D9Hy3THZfROc4GSigtH+V0mq/q?=
 =?us-ascii?Q?DCl/qZQYVNFh2jgTk5pOPdUH4tWGn1mhEdbFFWX5hXa9U1CwPwgEFZkH/ou2?=
 =?us-ascii?Q?HsssPc8ZLWALGFIeev3QVQ6Mwykz2RJvF5LM9TlleqPJYrzFUNCoiLMBXCHV?=
 =?us-ascii?Q?p2NPL0C4SrL8K5LJNXMlKsxdiVK9HNpdWg4Lc98gwPZavBV/EaYblJ/tey4A?=
 =?us-ascii?Q?o4tp?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2fe5014b-b4a8-4888-d6e0-08d8935f8186
X-MS-Exchange-CrossTenant-AuthSource: DB8PR04MB6795.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2020 05:36:08.0604
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HlyuMAGBHMOZ8/NviB54B5FB05EVInEke8z1ueV5cQZ9lsHiEmpQHFbg6O3ulB57WQd8rRaCRL00LIkOdEsdAg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3707
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add sysfs identifier file for imx ddr perf.

Joakim Zhang (2):
  bindings: perf: imx-ddr: add compatible string
  perf/imx_ddr: Add system PMU identifier for userspace

 .../devicetree/bindings/perf/fsl-imx-ddr.yaml |  3 ++
 drivers/perf/fsl_imx8_ddr_perf.c              | 42 +++++++++++++++++++
 2 files changed, 45 insertions(+)

-- 
2.17.1

