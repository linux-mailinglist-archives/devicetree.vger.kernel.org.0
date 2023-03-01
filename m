Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 563FE6A6BA1
	for <lists+devicetree@lfdr.de>; Wed,  1 Mar 2023 12:23:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229530AbjCALXk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Mar 2023 06:23:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229676AbjCALXi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Mar 2023 06:23:38 -0500
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2041.outbound.protection.outlook.com [40.107.236.41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9ABAE1E9D0
        for <devicetree@vger.kernel.org>; Wed,  1 Mar 2023 03:23:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=akrdG1p9tnUEXdDqX+PKb60/vP8YAIt4Qw+KD3oHq/BIKTK26tqTY8X9q7il8iwgqIuXKJN8aScN/TLF/uwId3mPGoJXmsF8/iex12wcZeFCpfJ3dBpmgg7Uaf5h9XKGNuqY92wrXSfRkXswajwcyFXhWsqd3emDSWexOnq2GIH6vWdEhE+rDhqQJr+w/AKxSPaLgQvOOgCOpsMnj+P6xDK6DzKZi0a7DM11X1UO/iWdkcS3+QkUwnLeoyPzU7QVorDMSPG6STm5thadIe2JAQhoyBPjy33NWLoznKdvc40ahBi2BINF1PRi1S5O9QPZ/c4dF8RRqUX0CX4ShkhjZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jt6kun4u5Tuc4gWJC4BUUzAztnByuWGvCyDtKdQrI/w=;
 b=OzPL1g2GceggIIqndZ6SGkKPHsQP0h0ddBOe/vSPtSN4BH6NY6Qv90HHewluz+OZ76/qcKsnGa6n3XRZz7SkJmkLKLQ0+FuQS6nahCc2s7seBmAW325SUqNdQvjDoCb90EwALuLdRAdrzcCdoQY1QKxFUcyGYw0uwRe34l09V2e8jrLtE6TvYuobCgWRHLCF26ehLrZAAEjSwIKDFfcrXoVrIfp/l2+UXS1QaBUm2nunFImZlH7dHgll32dSBNbvrnA1mS5yuw1+d9dFPG9XFVJIGozjPX986QqAUUP1Pj5k8qGp2cGblsNUFOxktUvySVg/xyKCXnxtVF+KbOqlUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 149.199.62.198) smtp.rcpttodomain=kernel.org smtp.mailfrom=amd.com;
 dmarc=fail (p=quarantine sp=quarantine pct=100) action=quarantine
 header.from=amd.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jt6kun4u5Tuc4gWJC4BUUzAztnByuWGvCyDtKdQrI/w=;
 b=lDmf8G4csQNKJUwqLr/7365xhR5QIk7zUwDkJyG+LmAbsVzHpKsfcvyBJ/fy/ojR2z1VvAkI8c4Y+M6vzdTrExigloQf6pyCwQKh0y/j6/1xvkvMFUEytUXVdDXa/LJctS3dDXuWHzYGnSN/AW0wALsZbqTyjOnWyFIYLAhKGoI=
Received: from DM6PR05CA0059.namprd05.prod.outlook.com (2603:10b6:5:335::28)
 by SJ0PR02MB8529.namprd02.prod.outlook.com (2603:10b6:a03:3f5::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.30; Wed, 1 Mar
 2023 11:23:35 +0000
Received: from DM3NAM02FT017.eop-nam02.prod.protection.outlook.com
 (2603:10b6:5:335:cafe::79) by DM6PR05CA0059.outlook.office365.com
 (2603:10b6:5:335::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.18 via Frontend
 Transport; Wed, 1 Mar 2023 11:23:35 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is
 149.199.62.198) smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=amd.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 amd.com discourages use of 149.199.62.198 as permitted sender)
Received: from xsj-pvapexch02.xlnx.xilinx.com (149.199.62.198) by
 DM3NAM02FT017.mail.protection.outlook.com (10.13.5.6) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.6156.18 via Frontend Transport; Wed, 1 Mar 2023 11:23:35 +0000
Received: from xsj-pvapexch02.xlnx.xilinx.com (172.19.86.41) by
 xsj-pvapexch02.xlnx.xilinx.com (172.19.86.41) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 1 Mar 2023 03:23:24 -0800
Received: from smtp.xilinx.com (172.19.127.96) by
 xsj-pvapexch02.xlnx.xilinx.com (172.19.86.41) with Microsoft SMTP Server id
 15.1.2507.16 via Frontend Transport; Wed, 1 Mar 2023 03:23:24 -0800
Envelope-to: git-dev@xilinx.com,
 robh@kernel.org,
 mripard@kernel.org,
 heiko@sntech.de,
 michal.simek@amd.com,
 varunkumar.allagadapa@amd.com,
 vishal.sagar@amd.com,
 robh+dt@kernel.org,
 devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 parth.gajjar@amd.com
Received: from [172.19.10.45] (port=37142 helo=xsjssw-mmedia2.xilinx.com)
        by smtp.xilinx.com with esmtp (Exim 4.90)
        (envelope-from <parth.gajjar@amd.com>)
        id 1pXKYO-0009Mo-13; Wed, 01 Mar 2023 03:23:24 -0800
From:   Parth Gajjar <parth.gajjar@amd.com>
To:     <robh@kernel.org>, <mripard@kernel.org>, <heiko@sntech.de>
CC:     <git-dev@xilinx.com>, <michal.simek@amd.com>,
        <varunkumar.allagadapa@amd.com>, <vishal.sagar@amd.com>,
        <robh+dt@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Parth Gajjar <parth.gajjar@amd.com>
Subject: [PATCH 0/2] arm64: zynqmp: Update MALI 400 interrupt and clock names
Date:   Wed, 1 Mar 2023 03:23:02 -0800
Message-ID: <20230301112304.24107-1-parth.gajjar@amd.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM3NAM02FT017:EE_|SJ0PR02MB8529:EE_
X-MS-Office365-Filtering-Correlation-Id: f25a7395-c790-4179-f8b7-08db1a476598
X-MS-Exchange-SenderADCheck: 2
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: //F4lBjo8Hg4XVdrD3wayau9FG2wIPERpITxmnyspJ0ibSnMG7hvfmMxuqoSUKQZjyhkpupN2ccPfv9SnZQP7T32hSoYeiDCklXCFMMtzSY18EP3eHp7jB2whqyYNL1h6dwCw0Riekkwexdzi2qOfcR8LiXBZct22tWsdcTH0c+ZcaikBUwcQZc3BfcvWYF7JbUtmMTcEZiEo9IsoWu8Q9TSFwBOxB/c2BpWtFDPI1X/qwE061QezkAAIncaGPTjSBWp4o5iRPqNkLmeVPH0nkSPUWvLeflR4LH0zsNtwltJHqfS8tyCIuyPjkmmhg7tgt9bKZU904A3jxt/c3YuGoJi/eMK0YrocNGdYtKb02fF7IdPVHK8/wNh7w7DLn1kJkD8iE0PsQ8/3iNynSljOsQUVpBwgDzo+ee1T8T4xhr396xeZABxM3LPkgf6SZ8N+/pczU3elsytyNA/ewgvAR2oEcsrHuFuojkk76deGkQNhHVwd4BkN76SamUruBKnKcaSCiKFSgE0hjN+UOqF9u30Gc5GAqbtDqRaOdS7bWVkid8xT0tO1WvBwbJjJkhh1wh0s9BGQfZKNS1n+gTDEwbbNmIHPSDCor+z1mwM8e9nUcN2JSSis/Tae3tif93Dr/K2XyetI4dAB5rMT4vRVJjKEV7WUCoB/ggA70sgXBRyU7yYxWakbD6GoVrXKPDLmevSJu54qzjxyhtnBnRZKA==
X-Forefront-Antispam-Report: CIP:149.199.62.198;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:xsj-pvapexch02.xlnx.xilinx.com;PTR:unknown-62-198.xilinx.com;CAT:NONE;SFS:(13230025)(136003)(396003)(39860400002)(346002)(376002)(451199018)(46966006)(40470700004)(7636003)(82740400003)(8936002)(356005)(86362001)(36756003)(44832011)(2906002)(4744005)(8676002)(4326008)(70206006)(5660300002)(7416002)(15650500001)(40480700001)(41300700001)(82310400005)(9786002)(70586007)(40460700003)(2616005)(1076003)(336012)(83380400001)(47076005)(110136005)(26005)(316002)(54906003)(35950700001)(498600001)(6666004);DIR:OUT;SFP:1101;
X-OriginatorOrg: xilinx.onmicrosoft.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Mar 2023 11:23:35.1643
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f25a7395-c790-4179-f8b7-08db1a476598
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c;Ip=[149.199.62.198];Helo=[xsj-pvapexch02.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-AuthSource: DM3NAM02FT017.eop-nam02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR02MB8529
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Motivation for the commit is to utilize the upstream community
device tree so that the either modified ARM Mali 400 driver
or upstream lima driver can be used.

Parth Gajjar (2):
  arm64: zynqmp: Update MALI 400 interrupt and clock names
  dt-bindings: gpu: mali-utgard: Add xlnx,zynqmp-mali compatible

 Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml | 1 +
 arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi             | 2 +-
 arch/arm64/boot/dts/xilinx/zynqmp.dtsi                     | 6 +++---
 3 files changed, 5 insertions(+), 4 deletions(-)

-- 
2.17.1

