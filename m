Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BC5822C8366
	for <lists+devicetree@lfdr.de>; Mon, 30 Nov 2020 12:42:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728579AbgK3Lmk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Nov 2020 06:42:40 -0500
Received: from mail-eopbgr40070.outbound.protection.outlook.com ([40.107.4.70]:48256
        "EHLO EUR03-DB5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1728544AbgK3Lmk (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 30 Nov 2020 06:42:40 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VzsK771KAZtn07TQgGBNW4ddXsXneri8WBQ5ytmddzWj1iL4aF6ZImYHfKQXsKz1YlpPz2mD4WkfN0hmjoRcALPVuud9L+B9wvTpM8PcMbV7OHUp6LFaenAe8qNWLy/T5OeLxImv8EAsSqkxwttxJmsgK6ug0HUdF971f/WTFuWyLvmqflBNHPaK3VAbb1SJeWn5RrUVbWMkV6ZgSCLCwVr/fn1eZSeXBqxIdHE+wsHOIxd59Qtur/eth3o8/X0BeNVc3WGrbMpZ2frXEiQHlMGMHRMK4DVKIDkE37g+5s0RihMem1h39mouZm3jn/yNqmNxmMNWQAnzZN4yhW2SIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6bRiV7Sbv6163zvky1R20srl2ARvWEP4PWH7kgKZTzc=;
 b=caF+xGv/WiNjduX3jH2aiUlknIkzf68obyBywSRvX2ZUW0qIYoW8kYWJsdWA4XFhAVB0JKFhyX/mSuMPG9VdZDqayURPVIApsDWE4xoWa2YeAInrAPgA305GBApzvewjZ0oadwWC0HbEzbaMVOoeYb/iairhr7w+J7veudStwKYawVI1LfqwPzipl+WMz33dCrUM/AiSz29MtoHyeUi5iOzJnPg+xQrc7pOX9pudM6RG1UA6N76j4vP6vwct3hc7aLCiv5qrrvzO6xfHJjZxBHg8+QREIaIYW9+ihcSQzv1wJ9/tWsh4BmwF6niB8dZdZ3ugg1JJkI+ZLCLWkgNGTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6bRiV7Sbv6163zvky1R20srl2ARvWEP4PWH7kgKZTzc=;
 b=pQqkOSBaXKAyCjdaJDijqrWvcdzU0t2zuUkh2kv/de9lTdo1Odkdvzb6K0P8pyDfepMpT5WRRonXdQ/03m7fwEjuQ+tmYnhgL/1+T9RjPZjqYOt896iVKBHQHOpbSPtetB/c2KBGMXHOlloMIgnBT5QIqxZKb+g55Rf6qpx0nxk=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB7PR04MB4106.eurprd04.prod.outlook.com (2603:10a6:5:19::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3564.25; Mon, 30 Nov
 2020 11:41:49 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::b83c:2edc:17e8:2666]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::b83c:2edc:17e8:2666%4]) with mapi id 15.20.3611.025; Mon, 30 Nov 2020
 11:41:48 +0000
From:   Joakim Zhang <qiangqing.zhang@nxp.com>
To:     will@kernel.org, john.garry@huawei.com, robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-imx@nxp.com, frank.li@nxp.com
Subject: [PATCH V2 0/2] perf/imx_ddr: Add sysfs identifier file
Date:   Mon, 30 Nov 2020 19:42:00 +0800
Message-Id: <20201130114202.26057-1-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.17.1
Content-Type: text/plain
X-Originating-IP: [119.31.174.71]
X-ClientProxiedBy: SG2PR06CA0099.apcprd06.prod.outlook.com
 (2603:1096:3:14::25) To DB8PR04MB6795.eurprd04.prod.outlook.com
 (2603:10a6:10:fa::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2PR06CA0099.apcprd06.prod.outlook.com (2603:1096:3:14::25) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.20 via Frontend Transport; Mon, 30 Nov 2020 11:41:46 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: b60e7590-e91e-4d23-489f-08d89524ec20
X-MS-TrafficTypeDiagnostic: DB7PR04MB4106:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB7PR04MB41063E0697E2AE851E2F7394E6F50@DB7PR04MB4106.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hZ9z5e37wep2O23qIrAkT8XIIHtaGySOkwdWsEzD66dT/dGZi3avOXfUV2FmGa1cj89MG54xAa1N6awRwBthvwcYMM8lR3b0olRlWRArdRWlGc9yPoUS0LotZJRZiom6YX5GIFwRuaWGREVFXuPRcOw9iYLgVUl/XOc+HreuwHXzVvom+toNxtEReVwBQ/lfO4j3UmpbslfRLrXnpmpYxM/IWTR8sunjGKn8KE+vQ75BQP5w9elc8SUxExKcPRjNmkSOtyl294w7IYoNkZlQSp/eA0L+evfC57OqjY59zeRNWgzbqm/rcwFGN6Yuea76+DHw9XnBrGOIK173xH+KPyRuqiUi+ScAMAkBVO9ks8us/EHRQjALmTB5FMd20buL
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6795.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(346002)(396003)(39860400002)(136003)(366004)(6666004)(36756003)(5660300002)(86362001)(6486002)(2616005)(956004)(478600001)(66476007)(316002)(66556008)(66946007)(6512007)(52116002)(8676002)(8936002)(4326008)(4744005)(186003)(6506007)(26005)(1076003)(16526019)(69590400008)(2906002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?9hn21a7N7sVWt3nqWJOQEpK82PKLQ4VxsXJL4Ah9mYvBx5Ol2wOJRtHOJAoF?=
 =?us-ascii?Q?paG4kGjuC3G7FHFK13GWi3EPHjVn1SNea1PcQTMwQSIsM4GPCntWOpB1tFFR?=
 =?us-ascii?Q?dJ9nnteUY799yBy1zcanRiwp88ga3EWWQ+FHwwKVD5VdWiAjfTyvSmr5sthv?=
 =?us-ascii?Q?2JrO643ccJMyV+tS7Ua1eJK4uHOun9uVZTK8E4fcjeXpiLODHA4LpP8UkOB+?=
 =?us-ascii?Q?5T7K+s6G5S2rQNqbvTvJ/TYcdALm1rgYkL7yiI3tix40C63FaFl+9R4wrcV5?=
 =?us-ascii?Q?xm/CM/EnfUTg9Cz+XTf3F5W3ssgKKmTfAN3/N+VvGlTqhJ0uKh/PH2EZn1t4?=
 =?us-ascii?Q?zHBTH1c+CnNvfC5O1fF7vZ/Ry4GYcYCMCJg0X7rTFJumqo/FtovXlIC00SJf?=
 =?us-ascii?Q?81S63tTPfeVtX0MRGlAHUmk68IQzZGpb3XM6iRdNaI1iSdznOEzh1bFwugai?=
 =?us-ascii?Q?qDfzDZMP5yZEmAnOurtxMLWNu8DJxzO2d3lS2OINWr1zPK5AY3mBtzwIN0S4?=
 =?us-ascii?Q?b3LNbXYYdQPAF3aitO89v/mfRwR07GHJxXLNtC6/K39JaibVkGBl6kZeLt+O?=
 =?us-ascii?Q?KF03htQHxpBAfN5e/cRoVl8bV0YpwcummHEog7s1p2uZ5At8XhLOsalGlhwE?=
 =?us-ascii?Q?FopLiQOJJtORnMs9QaaoYAf39JICciiEkkV04tf09nb3oNu4toBrijv+j7XO?=
 =?us-ascii?Q?W+9z/+f4q90n2Dmbyj7+mXqEjymRvEWO2gaDaVxRusC3TBiMmczJd1opkvEX?=
 =?us-ascii?Q?7p6RY98S65QuxoljmKZStjcW7MTlHaXIlDilwjV7hkTOgfludMLhNgeiURpb?=
 =?us-ascii?Q?I0ejnf9Mh9YObxe0c/O483XxbKUavaqhrnxz0lIr7uC9Crs+vRtK0xQaaSWE?=
 =?us-ascii?Q?oXx65Xo74FKkFAUUE6kebsvZDteDQ0OggrHuZ07k9dRY1MOyIb1TmNSJBcAZ?=
 =?us-ascii?Q?qIHFgdEiemYzZmj83QAwfH37IOB3UwUhJC3FvUvdtg/3L5UiHToXYzs2d7rV?=
 =?us-ascii?Q?i3ml?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b60e7590-e91e-4d23-489f-08d89524ec20
X-MS-Exchange-CrossTenant-AuthSource: DB8PR04MB6795.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Nov 2020 11:41:48.9439
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gVnC6iZkEjhPjCAXzE2iu9E8uPyVLaQsXbZNQGGSGxQ+c7pkMLzUoYSY4F9cqn3BK2oVnAqhBnKaoX4O7c0wTg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4106
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add sysfs identifier file for imx ddr perf.

ChangeLogs:
V1->V2:
	* don't show identifier file if not set.

Joakim Zhang (2):
  bindings: perf: imx-ddr: add compatible string
  perf/imx_ddr: Add system PMU identifier for userspace

 .../devicetree/bindings/perf/fsl-imx-ddr.yaml |  3 +
 drivers/perf/fsl_imx8_ddr_perf.c              | 55 +++++++++++++++++++
 2 files changed, 58 insertions(+)

-- 
2.17.1

