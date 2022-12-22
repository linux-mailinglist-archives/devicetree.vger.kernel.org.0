Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9D885653D14
	for <lists+devicetree@lfdr.de>; Thu, 22 Dec 2022 09:42:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229608AbiLVImo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Dec 2022 03:42:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229567AbiLVImn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Dec 2022 03:42:43 -0500
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2076.outbound.protection.outlook.com [40.107.244.76])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F08EA23BDF
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 00:42:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CIaQUH/ZV8YlzB/O+vY36fyldOQVst+MIIXx1dyi6FGyZTPKXSBfTbQd7l4qIzvmmFar80juYV61JVYqE7uhndtj1/SjbmuRJaVys/uxM6MZdhalJvyyQ8spGgQIr8HNfvPUnxUJVWpwu+iBdjZC7YzrZRkODZM9S73U8OHbLowBzEWftMT6BmTGGENvqW+LEfr7pOPq4UCfnUg83DEAcoXS8o99PNF55OoQwQDMDqmaxWRNCSgD21Kjpx1MxBceC8s1EgosxwAMKSLJsqnNaqaLbeJEYUtnvmpvyNU2Bw7fLbvVkKV+Ec/2oBdLEg+jlan1WdrquOSM0L6V2bQCNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uM3T9L2/jDeri9nhTkWpFTekXEYO3c3Am6xOjx+cUzQ=;
 b=OHntPJVTVo8UJEuG0zuqzIm4zOsofRwDdR/bdRMii8ARMIy+iJ0zHNc9eGnFZ/4GoZoLBoHKAlOrr+1IZ3lv5N7LYGw0sceJflEmCcA2VgJWSXIHq9O7hLa1nOUisF3HpH1ycXiyGPTvgSmT6ZFGe5umAmizd1Gcj2x61040Y2khAO2LT+KvFt9fwkuRenx1tEqwcH/tNG61oPNmkTrp6BopMG45G81EAQzT6zDOfkhTFnnxaBMpoVV7aT2lmzvbMddomHeeTIA9F0GOsXTAYkVBliYeT/rlGI9Lg+/a5HZNspYD95sNB7oNiur/lDLZFvKbX4pbFUuSz8NxD2404Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=lists.infradead.org smtp.mailfrom=amd.com;
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=amd.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uM3T9L2/jDeri9nhTkWpFTekXEYO3c3Am6xOjx+cUzQ=;
 b=mHueaFNctYYVMihPSheGwNQ4lhpXt4v3/lmkf8AnY8Fr58ZyeS9bcCPyRuKus5Th4GXEM8GzRiVDFbaEvahovNCAJKHnp6To5qvIl/7VtXRYBZTjKdz/sVtNKsOGuwRUJQhuFuhgACngrxFD0FnMT2eMq+mtgA+PXGufJsbcgIA=
Received: from MW4PR04CA0293.namprd04.prod.outlook.com (2603:10b6:303:89::28)
 by DS0PR12MB6559.namprd12.prod.outlook.com (2603:10b6:8:d1::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5924.16; Thu, 22 Dec 2022 08:42:40 +0000
Received: from CO1NAM11FT035.eop-nam11.prod.protection.outlook.com
 (2603:10b6:303:89:cafe::23) by MW4PR04CA0293.outlook.office365.com
 (2603:10b6:303:89::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.21 via Frontend
 Transport; Thu, 22 Dec 2022 08:42:40 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB04.amd.com; pr=C
Received: from SATLEXMB04.amd.com (165.204.84.17) by
 CO1NAM11FT035.mail.protection.outlook.com (10.13.175.36) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.5944.12 via Frontend Transport; Thu, 22 Dec 2022 08:42:39 +0000
Received: from SATLEXMB07.amd.com (10.181.41.45) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.34; Thu, 22 Dec
 2022 02:42:38 -0600
Received: from SATLEXMB04.amd.com (10.181.40.145) by SATLEXMB07.amd.com
 (10.181.41.45) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.34; Thu, 22 Dec
 2022 00:42:37 -0800
Received: from xhdshubhraj40.xilinx.com (10.180.168.240) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server id 15.1.2375.34 via Frontend
 Transport; Thu, 22 Dec 2022 02:42:36 -0600
From:   Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
To:     <linux-arm-kernel@lists.infradead.org>
CC:     <git@amd.com>, <devicetree@vger.kernel.org>,
        <michal.simek@xilinx.com>, <krzysztof.kozlowski+dt@linaro.org>,
        <robh+dt@kernel.org>
Subject: [PATCH v2 0/2] perf: Add xilinx APM support
Date:   Thu, 22 Dec 2022 14:12:33 +0530
Message-ID: <20221222084235.12235-1-shubhrajyoti.datta@amd.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1NAM11FT035:EE_|DS0PR12MB6559:EE_
X-MS-Office365-Filtering-Correlation-Id: 7e113225-684c-4acf-b089-08dae3f87be6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KT5ESyIKLLjGv7UIe4Hy4D1KufSogylIPXSTrqAUkwgDHXUYIEYptViPQEu0auL00f6rc8ZGuJ1MJCI+YrETUOvMI2V62Lls5my1Wt7A+09Kztt8gCmXrEbeDkhlR80Un12xjI1sJZK1EMs6SDmpOTUqorr1IW/psiIq69q3sHClKceH/zGiRPRkKRnxXQcdBqomizU/zsRlr4H75PbcSza+/PNJhIWsGgZpwiVJHKvwmA6PmrCXQvr2IiaDKzkKodG62WzL9pkFVje6InxOT9TKuJH2r9XVqZB9uapeWMqa4gADIHwunAR2t7Db67TFIHUssfjSkXC2Xj9Ck0khNyPzDpjWMTtL4KqQ2OTXb8tCV5n1WOm/yfFfpGJ20eFReNGbhUttpr/MZnohp8p1pupsaqVmO6a7ipSFlTzSTci+fKax6OuAlI9Henw+o/inaUJZ+mYBLpkX+8XkrLcLuZb+lzxdR8pb0aNwGf2YN9fFnR+iJe9ojxHWRcg2K96Biy5gCc6b4mlPFwcd8qgZpxh+IUQDXHv1U+xfTtjQ+sKpBw1n91o0yTBqmou7kAP7fRftoaOX9GV0UBg+St8ilIcHKOyaju0GYbtd4qx1resy/7C0daZkubBUbxmSoZun601gbu1BC3/1KhWBzhJChMmyVid/5GI4z711d+Vug6wbmMSOXuIf1x6tNjo8xXaEFJv3EvA9TYnxEm2dS8iVhgbHvHH2xaqdJwyUq2m4xjZqUK1+9301scNnrs8Vt0rckCT+jg5EYM0f1UcEuYEk2Q==
X-Forefront-Antispam-Report: CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:SATLEXMB04.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230022)(4636009)(346002)(39860400002)(376002)(136003)(396003)(451199015)(46966006)(40470700004)(36840700001)(86362001)(70586007)(40460700003)(70206006)(4326008)(8676002)(316002)(5660300002)(2616005)(36756003)(8936002)(1076003)(82310400005)(6666004)(41300700001)(36860700001)(426003)(26005)(356005)(186003)(47076005)(336012)(83380400001)(54906003)(6916009)(82740400003)(478600001)(81166007)(966005)(40480700001)(44832011)(2906002)(36900700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2022 08:42:39.4738
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e113225-684c-4acf-b089-08dae3f87be6
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[SATLEXMB04.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: CO1NAM11FT035.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB6559
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


The programmable AXI performance monitors (APM) collect real-time
transaction metrics at multiple points on the PS AXI interconnect
to help system software profile real-time activity.
In our platform we have it in PL and also some of the hardened
instances in PS.

Perf is a profiler tool for Linux 2.6+ based systems that abstracts
away CPU hardware differences in Linux performance measurements and
presents a simple commandline interface.

Perf is based on the perf_events interface exported by recent versions of
the Linux kernel. Therefore we register to the framework for the APM.

The IP has support for multiple slots and ranges that we are supporting
by extending the sysfs interface.

Datasheet:
https://docs.xilinx.com/v/u/en-US/pg037_axi_perf_mon
Also the Hardened instances described in
AXI Performance Monitor of ug1085.


Changes in v2:
 - Use boolean for the values xlnx,enable-profile , xlnx,enable-trace
and xlnx,enable-event-count
- Update the file name
- use generic node name pmu
    - Fix a warn

Shubhrajyoti Datta (2):
  dt-bindings: Add the binding doc for xilinx APM
  perf: Add xilinx APM support

 .../bindings/perf/xlnx,axi-perf-monitor.yaml  | 133 ++++
 drivers/perf/Kconfig                          |  11 +
 drivers/perf/Makefile                         |   1 +
 drivers/perf/xilinx_apm.c                     | 666 ++++++++++++++++++
 4 files changed, 811 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/perf/xlnx,axi-perf-monitor.yaml
 create mode 100644 drivers/perf/xilinx_apm.c

-- 
2.17.1

