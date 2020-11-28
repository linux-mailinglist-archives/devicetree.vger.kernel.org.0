Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0DE6C2C7572
	for <lists+devicetree@lfdr.de>; Sat, 28 Nov 2020 23:24:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727707AbgK1VtV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 28 Nov 2020 16:49:21 -0500
Received: from mail-eopbgr00053.outbound.protection.outlook.com ([40.107.0.53]:34021
        "EHLO EUR02-AM5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1730486AbgK1SDY (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 28 Nov 2020 13:03:24 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AA3ouyldVLQUC8NoppyOHkMwf5YSu6VWq6vMvKt4RbAEAbt7XVryfwQQi7fMTBfA3j5vc4ALo+xyR6Uv6JGeK1wfbYyVgBBHExG8bkhBFyA+Xk8vpFlPOORP9Yo605TzTu2LjrjA6IcMCzXWfgnSz/vwq55bf0A0Ap8Uede0lJLBupa3PhQAUkfYIVPJ0qs1aoHQAs0eVn6nGP4gBt/xddTvzYPnvvMjzusAvSzggtQx+w46Pb+iDdQ0hY2Vx2K1bgpcCqHQW8FaRPmhiJb5ziJYZ176EwquVRh3ul51uiw+TKKbhKgp9K7ImfxO11sTxd0ME7stPo3/wd/Icna/WA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=evtm/dgdXiNeVTNWxePJmSy4sGBTQd4vxlEZnriPEXc=;
 b=DUAPI4Eb0AwtHDCMLd8sB2shydm8fcw+qLq32PuS0hPCnc8rYLO/xEoESlSC22bLJ0ks0UE6wirjictA4PZoXhIq1FgoO8NOtUWLpH4N3LClz9P4ID4IpKLazrDk9tllzonxNMAmcZSYZk8PraCndrYN7Vlw1B8MkpY20xX9xm4L75JsLRdjx6Z7eAYWZN+Al2ZECoJvMaHeWZLiIKudeasBMdjICmXcMhwsnHhZPY2kH8Mq/a7BoVhmLUh/a633kUDqDbDzH2C+JDH/XLWDcgKIbZXtAc06Gsnma4nb7cqTkrGq+uZvKOSchogoMe0NqjZz5eDBEZ/uD6U1kZMpyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=evtm/dgdXiNeVTNWxePJmSy4sGBTQd4vxlEZnriPEXc=;
 b=DEu3IFPYoFFsPt8ml5xm4zJD+/XMXkKrvA5wQlcAXZ8MuM7y0AXq3eHqfW6HAhxGGcL5bsOPgW1XZl9Mf1NGN/fdYlKJcp8eKBPN+5cyqZ5ccL+gLXmvHuevwEif5eUhvxIcI6OgRTSv3fjX+06Ea2stWSGEuD17N7aE1A/kwis=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB3PR0402MB3707.eurprd04.prod.outlook.com (2603:10a6:8:2::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.25; Sat, 28 Nov
 2020 05:30:54 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::b83c:2edc:17e8:2666]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::b83c:2edc:17e8:2666%4]) with mapi id 15.20.3611.025; Sat, 28 Nov 2020
 05:30:54 +0000
From:   Joakim Zhang <qiangqing.zhang@nxp.com>
To:     will@kernel.org, john.garry@huawei.com, robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, LnxRevLi@nxp.com, frank.li@nxp.com
Subject: [PATCH 0/2] perf/imx_ddr: Add sysfs identifier file
Date:   Sat, 28 Nov 2020 13:30:50 +0800
Message-Id: <20201128053052.7880-1-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.17.1
Content-Type: text/plain
X-Originating-IP: [119.31.174.71]
X-ClientProxiedBy: SG2PR0401CA0016.apcprd04.prod.outlook.com
 (2603:1096:3:1::26) To DB8PR04MB6795.eurprd04.prod.outlook.com
 (2603:10a6:10:fa::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2PR0401CA0016.apcprd04.prod.outlook.com (2603:1096:3:1::26) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.20 via Frontend Transport; Sat, 28 Nov 2020 05:30:52 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 0dafbd62-07a5-49a6-170f-08d8935ec6c4
X-MS-TrafficTypeDiagnostic: DB3PR0402MB3707:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB3PR0402MB3707BB5BB172645F51CCCF93E6F70@DB3PR0402MB3707.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2582;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FIo8UKpowciLUpVXUa5JWgPwjbPFAkco8vOPPfoUcJT/LZBQrcWle1O0vhJDOV0Kw8yFCrA/C7bkY2pecZsYZ7KEYjoVcLSIOia3m2ck0xsWjYcxHhIMv8DsDOl836NDkzkFgHkZAnLCjby8t1aUcmYiWFHZlpbhT4G9/A+HtTfpPFRN9AxN4nyBO752pCR+CkMhIGn+HUzfJVcf7N/WH27N1t8i/X+U0IEKEFXDkmD2fRp3b5LT3np/W8WjsnARs8gR8xJj1ZGpDpHZSiTbEzXxBPZIb/Y7d+HRqfsRKbewSxKsTytO9J1492TDPMd6/q5LTRGkOaqEo41R1ZUU5jaP2IxEyEYKv6X50VgUPSNErA9jZ1139gXT5kkj8g1R
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6795.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(39860400002)(136003)(376002)(346002)(396003)(2906002)(8676002)(52116002)(6486002)(5660300002)(66946007)(6506007)(956004)(6512007)(316002)(66476007)(2616005)(66556008)(8936002)(1076003)(26005)(4744005)(86362001)(16526019)(36756003)(186003)(478600001)(69590400008)(4326008);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?FCvIuuRVt83ySJ5Dczhs2a2gtl6bXMqAFRtTYISxiYUd5xMxhVWAClTLvh/X?=
 =?us-ascii?Q?UzERNqgJKhP5xj6rvYwWsK931PZIbm8pv1cjabgHQZg92h8IYPrP6graP1m+?=
 =?us-ascii?Q?c9DE+otplBpCeFx2CNz2LUPB8gczjnxCxxSENrq4UNq08mlZt8//P4CCXOCz?=
 =?us-ascii?Q?jpUTpqk3nF1wGABm3n6lvxPs1ZmTtgsqPP932vKZUEQ1vy/P1sNbtGq88jw7?=
 =?us-ascii?Q?zWGhfp9FL7NEkbSJBguHfqEYTACJXdArKxWvIPW0RQzDAKMbhoiT8mYQmRXz?=
 =?us-ascii?Q?fjpQO9cy5jUj8iOw7aGjiXtuW2vRHCsNTOBuSqPx6Zaye7fYi58HUv20xiWl?=
 =?us-ascii?Q?1Rnx4vJi+g1cONOgGd6wC2FMEdvlxJKj1u9ijI6sl4KX2YNxhKvhzggmUTEe?=
 =?us-ascii?Q?pj/ROB6lPeAWakrYu6yUhpeemyx5kBoUpRi8g2sanu83Qon/9P5rCPtq8Yke?=
 =?us-ascii?Q?bj5hc1mAPXAPRlmqkQERAtwbOS9DlTX8317r5nnrf8TWr27HLmCKjUQt0xr+?=
 =?us-ascii?Q?IVzhq/jU0UWXdwwDrlj4Wxwm9Hwb7ovCizuhClnf0EGysMyzuZvgtFX4foSg?=
 =?us-ascii?Q?1+DXZBP79+taukPJ2C4DgQKlphdxlN3IPxJHxb/Lllw2A6qU3tlPuFHI2WXD?=
 =?us-ascii?Q?VZxbMZhogK3CoZyf0tRH6H3WGPgy5XusHDbupnRlBM6maSjcU4WzEGnTBcXu?=
 =?us-ascii?Q?hwpjz3SmKKfaMHqtRPOYpv2srrF8FC4M1n77XkeRMkpmzazHoEepvWhsIs9p?=
 =?us-ascii?Q?vlggPoaqiftTGlx3VBEcbHvRHFL+RDJuGtpdkLmMF7II1zJ5XqipCGuXd12U?=
 =?us-ascii?Q?SlYRx/8ahGxUaXF8+UyWs5uVBC9tiQhsBYdpS4TnbkXQ4WSOhkNvy7DdWo2J?=
 =?us-ascii?Q?v6EZNmE9wk+dGgarB3YnsrKnYLXoTh6uNPaqhh3Gek0Xcmx7Qc9/OCJukxj/?=
 =?us-ascii?Q?AbDphJGKql8/sd10Rt469DwW4hyNJ+8jkq096ovEMubgft+kWoe+gaoRjUce?=
 =?us-ascii?Q?nb0B?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0dafbd62-07a5-49a6-170f-08d8935ec6c4
X-MS-Exchange-CrossTenant-AuthSource: DB8PR04MB6795.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2020 05:30:54.8662
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UPfl1YP95Yj8xzDCcQZfmplUw9cx/67XYN/x51b1hih6yzfZJ0HwJSvvUTUJpQXvNTBh8q+8dih7rdX96lPI/A==
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

