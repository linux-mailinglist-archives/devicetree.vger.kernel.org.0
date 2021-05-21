Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1DE4C38BCE4
	for <lists+devicetree@lfdr.de>; Fri, 21 May 2021 05:14:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238838AbhEUDPR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 May 2021 23:15:17 -0400
Received: from mail-eopbgr10048.outbound.protection.outlook.com ([40.107.1.48]:26180
        "EHLO EUR02-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S233224AbhEUDPQ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 20 May 2021 23:15:16 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VouWTPaWbvBgO0NEZApOWRQg9H875TWYv5zPC5FHBw631so5Zq3Ef3GwmYQXPTWRMZPaEY9MSesTu1Dov+T+wkDcoH12BbyMjFmCaz1K3SEsHbu8bE3nfF6S042jHSwCpPvci5CtOo3N5CXrA3TysAA17Bcr11jQuzjJz+zVbJKj1YNjkfSTTda+KTZTGdIFwDLNxe2S07yBvU7xb2LNBjkvvxpkwhewZOqqIJ3lOWhZQ91YnzTGnKwGFf1scn2a2tVt2E0gP88P+DNsels/nb4N7sKMdq7+Z6oeme0wIJm3T9dceViZyrsVr7H3Eq+e5F2Z2656rJ6sgMENs2wq/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xDuaoGVrORz7AIeDF8EmK91NPK+IFtSBt96KxTXy/Tg=;
 b=IiVopC+Nl/fQ1m6tY4JDcd/sKy+atd/cVa9op6L0aElQMg2PxUNVejSjvvOmXqlxml/sR+g2nstTNj+LVO4jddjX/AWEWRHu9jFSr62ZaT5tUBGXo1zy8PAXe9XzjChsKAFPI32pcbKjaIb+P3DCCkHMF6uwKcmo0QRy9vyRBXkcYk7kOO9kly4uyTW4l0vs7eAdHkBUqFhufkCGdJXjHyB3bChQllhsn3T0EHfC2iL/ukQjApJiFfYhSsbnqxisz8kRgHBaxlzL8iUpT9nmUnsfjbve0gCDnqgQ14qP9xxpsSYgd7wHKKRf6y3jFVTJCAF36TmAOVytu/IiL86Yxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xDuaoGVrORz7AIeDF8EmK91NPK+IFtSBt96KxTXy/Tg=;
 b=sW2NLFS5G1WAkhWC4PE4BoTTkFOolSDNtmw04SuFiaRmp+tybi2Mit3gydIh7nTp8L9s3BM/AG7vFI+hqbGk+hXJogGpHCJaM3bDQwB4qIOqoC9LqcNNOHbC/V/RkSCkLmbDrjq3lXNbPNQwp2/XHq2+z8Hjz2alH/a7yFMt+Iw=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=nxp.com;
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB4326.eurprd04.prod.outlook.com (2603:10a6:209:4d::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.25; Fri, 21 May
 2021 03:13:51 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::b10a:ad0:a6f5:db9b]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::b10a:ad0:a6f5:db9b%2]) with mapi id 15.20.4129.034; Fri, 21 May 2021
 03:13:51 +0000
From:   Dong Aisheng <aisheng.dong@nxp.com>
To:     linux-arm-kernel@lists.infradead.org
Cc:     dongas86@gmail.com, linux-imx@nxp.com, shawnguo@kernel.org,
        kernel@pengutronix.de, festevam@gmail.com,
        devicetree@vger.kernel.org, Dong Aisheng <aisheng.dong@nxp.com>
Subject: [PATCH 0/2] arm64: imx8: fix booting with lastest nxp flash.bin
Date:   Fri, 21 May 2021 11:12:46 +0800
Message-Id: <20210521031248.2763667-1-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [119.31.174.66]
X-ClientProxiedBy: SGAP274CA0014.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b6::26)
 To AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by SGAP274CA0014.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b6::26) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4150.23 via Frontend Transport; Fri, 21 May 2021 03:13:48 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b13d6819-b23c-401a-5ba9-08d91c06751f
X-MS-TrafficTypeDiagnostic: AM6PR04MB4326:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR04MB43269DE8E6743F9A45CF926480299@AM6PR04MB4326.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qyCyIMK496ch41az0PMJfWCa2fbPZQ8M/AnAhu8qJcXieMudG5xoMAOdDaB9tFojhfAQI6t1qN7jveVTIQp0MrOdKPRDlLfBX1d8QVrfDLgQW4mnODODR/PocpvPERTznIoKXM70jlSnTt9+k7Oloth/7kfY8vrcJvlcO9vZzl80KcRFuHZyVKTlKRCY2fjtdJUFWMzldmNNz/3qxR4C2lC4vr0DZMGGivbH6HEt4h+5h+YWXdrNqDwlQGUbMuNrxSP46BX0vmPgszMjrxrK67ugAn/pa32wwF1GRSyQVBIeD8OgEAoOM+HK72IkmkYNldQUXBUfES2DcRIv4n41QRbwHGfSpVYCJVzy3W03+ezMbyP4GRpVj4vnoYFbO4ohft/Tu8gI58CYGFklwikEQAyRtEGtqU+jn6BbVg1f5wQPhB5CSFWkkHY8sORqbfGmFPaQWtfpep9m0BzXvNa75N0a05yy+RpUoNmBnHEZBjlcsvcGNJaOnL678U4sB/UhIB2uc70EjgObNrmJ7qTg6m4Vif2cO25Bd1NR6CFtC6tAPC30nN+LRgxJOK5PtRUmK7kjR+5fk92PkhoR86En4S68K3dtjw/Td7pFG9kC5B/R17bG0I0US7UzpI/Q4hT/VHEz6MteTudX/nFtVosapNUYUjlzDyMBrcwwRhLVOJDYYW48TPxDSRNpyutlfTH4dF2XqT7C40rXtQiLlduyFOUth0qOAKcyVt+Niu19mQQd0RFvArjlW2UiZT1kDqtI
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR04MB4966.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(39860400002)(396003)(346002)(136003)(366004)(186003)(16526019)(1076003)(5660300002)(2906002)(956004)(6486002)(6512007)(38100700002)(6506007)(316002)(86362001)(52116002)(4326008)(66476007)(6916009)(83380400001)(36756003)(8936002)(66556008)(66946007)(478600001)(966005)(2616005)(4744005)(8676002)(38350700002)(26005)(69590400013);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?mdTWF+xnKwkcTjfBh0zYIr+NGYtjJiKp0gH6qLcqpr7WDrBmO63uRRlLCrJk?=
 =?us-ascii?Q?x+/9JaGKXbmM5IyfN39YTW0KNmlwdu9lagPNY8TC4k7TpTi+owKxOqZ1dJ/x?=
 =?us-ascii?Q?Zmagys81kMIqzaQQucMAEav4LB4/O1A1RICwEeBJytLTR3UQlxLTu6tGQU6J?=
 =?us-ascii?Q?5cfv31Suf+SWb/OW7LcXq3fFtMs0UEJh4wkNmfYOqkD+hS1h0oXInqglA+Ms?=
 =?us-ascii?Q?XsQ/MheBCmtTr5gjEPRbxjhsKMkJ2I4WJRHiDfCLKJQ41eyLtU31YCeqAGGS?=
 =?us-ascii?Q?4LtDxyTvPRUrUeXlEOOIbLBZGnaa4e+cFrbdz2Otf7Dt1drtmOaN62e30Rye?=
 =?us-ascii?Q?aoyWpvlRs9egFukdwArN1+RHVmKRPg9fe6PAbyF3fqftm3p7LyqALsOQI4sG?=
 =?us-ascii?Q?0HElNoAEJpSGbHZS32m8qo5sz645Pv1IS2wF6foyW2cCXewjxDG+7tYIB58M?=
 =?us-ascii?Q?f+zMEau/gSo7yMah70bolD9uXxcn8kXw1AXUOUW/Yhx9ixdI8kOanXTxvVhM?=
 =?us-ascii?Q?uA7OLTHnD9qaFxynWgSYGadMWPd5o19ABTMdZk9hXm5aYJnIxoQe/FL35MSK?=
 =?us-ascii?Q?aAPXXO8xNCpLP1zb64yt4GT5wljKrwQZaTdWgdDKLdF51LkkwY9OEHnhome2?=
 =?us-ascii?Q?Us7/gogREbVqdbZE/qWdaizYlPVPKgpx9BrinpfOslcns3C7JebcJiMvGDmd?=
 =?us-ascii?Q?Fb8XThhrQcTtuMxZI/6WuFEe+9di8lpMk/YXDx4YyrRj6bibjjRt+yAJnk06?=
 =?us-ascii?Q?oDtH4m+lEGOUT1dresi5zjVhhTdL/3sQgOCpLYAnc3+Uq1C86Syc38tc6bDl?=
 =?us-ascii?Q?fsGrTSRJHQZ2HXerxpRkZ88ZWfR9oo7P1YdJRyjMmvLwbkCrxSE3bIsUafxb?=
 =?us-ascii?Q?EZg0aumR67dLyVVU4OA4dnYc0v+2OWIGTN3YYliLVFCAMgQoAqTyDB6eHoNe?=
 =?us-ascii?Q?9rv+eDX6UXK8HQjy95mAzdVkqLxLcxTjDf+a/y+17T1YL+gyCTY+XKC52OqZ?=
 =?us-ascii?Q?JFz+JWQmoc1LnW2owTNKP07XlrXp6SJrxVqtY8oGTln9JbJz4c0+zFYKZ5fY?=
 =?us-ascii?Q?OXEHG3vT+xlAartojyHSQj2QZUPuzQIytJ9GxfaPTjRdDJ94DiDg7QxrRbrP?=
 =?us-ascii?Q?flzkd1T1bMS/uubnmvMmdgVvvptzaEMYg3maFSpL8zNh1FsJgTtTNCP2W9Yp?=
 =?us-ascii?Q?s99oe6IxXVinuf6uUFOROnkZG14Ufj0rDX0Njvk4aEOcPAOigxaIT6vX2FrL?=
 =?us-ascii?Q?jay6wISyrSkjtnnqhk/qeEy/FiEWZmNT0aasiaX3RSkjfnemtDp3OzcX4ltp?=
 =?us-ascii?Q?VFfTbp7yAyKUVobzgXukQvpK?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b13d6819-b23c-401a-5ba9-08d91c06751f
X-MS-Exchange-CrossTenant-AuthSource: AM6PR04MB4966.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2021 03:13:51.3034
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FGaQMt6cCgZJIdir4EYrpdULsC9tn88muFeKXBJXV4Ue8hu/1n03ixAfhBdS64PXm7Z3gV/HZ56u1N1XMAyLuw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4326
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There's enet clock incorrect setting issue in upstream kernel which
will cause kernel boot hanged on mouting NFS rootfs due to enet can't
work properly if using latest nxp flash.bin.
(Using old nxp flash.bin (e.g. 4.14 release), don't have this issue
cause bootloader did some tricks.)

This patchset aims to fix it.

The two patches has no build dependence and can be appied separately to clk
and arch tree.

However, this patchset can't apply for stable tree cause it still depends on
another patchset in clk tree.
https://patchwork.kernel.org/project/linux-clk/patch/20210423033334.3317992-4-aisheng.dong@nxp.com/

Dong Aisheng (2):
  clk: imx: scu: add enet rgmii gpr clocks
  arm64: dts: imx8: conn: fix enet clock setting

 .../boot/dts/freescale/imx8-ss-conn.dtsi      | 50 ++++++++++++-------
 drivers/clk/imx/clk-imx8qxp.c                 | 22 ++++++--
 2 files changed, 50 insertions(+), 22 deletions(-)

-- 
2.25.1

