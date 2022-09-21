Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA5E45BF89A
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 10:06:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229688AbiIUIGn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 04:06:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229932AbiIUIGm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 04:06:42 -0400
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (mail-bn8nam04on2056.outbound.protection.outlook.com [40.107.100.56])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFA3D7859C
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 01:06:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HRj9ScePxT6kb8+HGrjNYWSfXKqJUY+B9cKjn9DZgNFjbHHHluIhRTmDbjLv8EYNbtFv5hAQGMXC/+1kFYF+laCilU+F5Ou80gq92wueS97rdSCNSxKt8ZxJRgzLrPW0bG9yb7X9wGmM/ELWgIPmgI8XEkV4iyQA/4R4oW3UzDFp/eR3X3ViOWsQHcc1c35n7ifALnRbeCDSWzJAoZV/N2yfyba00aiwIts5etk4Ez6Uv4NNzqSgCmxh6Ic72pc+7GIluaEk/pmI5NwUzwRzAbMhIeZAMWGiOuyG1FO5qZaBLERYNb/WJ7/DUCBzLetWyudUC8RdBxyW2Hj4OI/wDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/yu5B9XBIgFZJHyMb3KvQiEqZtls+8iJfmNP0JHHPUY=;
 b=NUhX9t20G5R9KCz7Pq+N1svG9q5/S0nKaEkpXjmO+Sc1QCdu4XoLkITRZAH5rQH/cMoqbKxuOy4Xl9OczfYvtuNI6svfOFSlBbA88ckvLuetWoGKE79T+DxT0T9F4cnDiSzu+d3QFiNzhdqeQa64xMOdEMkmZOmL28Acf/XKLXVK4wm2eYpvQcyiQ/BrjK9vB/eXRe/9dly8GgPfdio2LOlVtADsyfAJ6QkU032dtTnKFAeG2/O2tLnxXqyshCy9gUFJpdYN68PJF403cXmMpbFaDuxkVO0Yru+NUIQU3jp0/9l7D7aEOLMiXp4JxREPsXaYMSmAxz4Pfa3FrO8rvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=lists.infradead.org smtp.mailfrom=amd.com;
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=amd.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/yu5B9XBIgFZJHyMb3KvQiEqZtls+8iJfmNP0JHHPUY=;
 b=ko72PwXn0hb4bHtexxElsz7Okc0nUrP5k1yAIp3P6uZnigDOqTZwzv24tQTMCmD3ULdThkSvE6P/uuLyBijTJDf64BF5wbsAKCOh6x82Nw9XnMI/TLrJflaG4ewYr4VYYZFk5rvKdZ3uJq3guzoN9eYoWlvpbdbwxkmtg26sDXs=
Received: from DS7PR03CA0305.namprd03.prod.outlook.com (2603:10b6:8:2b::25) by
 SA1PR12MB5671.namprd12.prod.outlook.com (2603:10b6:806:23b::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.18; Wed, 21 Sep
 2022 08:06:37 +0000
Received: from DM6NAM11FT053.eop-nam11.prod.protection.outlook.com
 (2603:10b6:8:2b:cafe::15) by DS7PR03CA0305.outlook.office365.com
 (2603:10b6:8:2b::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.17 via Frontend
 Transport; Wed, 21 Sep 2022 08:06:37 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB03.amd.com; pr=C
Received: from SATLEXMB03.amd.com (165.204.84.17) by
 DM6NAM11FT053.mail.protection.outlook.com (10.13.173.74) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.5654.14 via Frontend Transport; Wed, 21 Sep 2022 08:06:37 +0000
Received: from SATLEXMB06.amd.com (10.181.40.147) by SATLEXMB03.amd.com
 (10.181.40.144) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Wed, 21 Sep
 2022 03:06:36 -0500
Received: from SATLEXMB03.amd.com (10.181.40.144) by SATLEXMB06.amd.com
 (10.181.40.147) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Wed, 21 Sep
 2022 03:06:27 -0500
Received: from xhdshubhraj40.xilinx.com (10.180.168.240) by SATLEXMB03.amd.com
 (10.181.40.144) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Wed, 21 Sep 2022 03:06:24 -0500
From:   Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
To:     <linux-arm-kernel@lists.infradead.org>
CC:     <git@amd.com>, <devicetree@vger.kernel.org>,
        <michal.simek@xilinx.com>, <mark.rutland@arm.com>,
        <will@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>
Subject: [RFC PATCH 0/2]  Add: Add Xilinx APM support
Date:   Wed, 21 Sep 2022 13:36:21 +0530
Message-ID: <20220921080623.22077-1-shubhrajyoti.datta@amd.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6NAM11FT053:EE_|SA1PR12MB5671:EE_
X-MS-Office365-Filtering-Correlation-Id: c70af12b-6453-470c-c0c0-08da9ba8353a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: W27GBkCFvOT9lUufCQ2EZFGXcirEMbuGFXkgI9bYaCyHTblVok8o5MLHy+C800ZxpoXi/+qXxajw80Uf/2BeZxUsTKFWAaeVJyd7nco+cwqWjq2x9v8WL8ik+yfr8SpOwfA2yW9WI7vodFWyKwoG+VnTcHZncYzDMIsAyUfqY8SVqU03ndquGnndNaWk+ULHtfX+YusJQnaykXZPtqbIuj2NIPAYnHS98rvi1ar1Szew5MfRS9PXya5jYF45mJV67BkfhjvQTOQ50K8zZQXR2mdne8z+pFZcOwyUq60X7Mf28F96Gylo4rQB6ce4tDONhD6bijw0ZdBsSqiLEbgCHc2O6B5D5ogon9qrilGKmetZDrV/xAfDHMusZvAQHH8kC59x+N7G9n7eSizFTbCYZ4wUHCCOUQFIvmSTQzMAWHkUEfrDOqBmvzDqQmZqYICAxKsAe9rrzTPrztDFscix0hCS9BiacDKMOOTwDgsHHUKla+JBUicHMA3CR/id1xHrQNfqvFahsvskITSidrz1f8cMLjKSm1pYl0+hFLZkn2+lvFJ4Fi1WdqGcS6WnWgx03MJmcanPeD7WV+sm7z/84nQnPPW5I4F3VH28ZTMQVut+oT0LsnLHv3rQMy7WnEKEB0WajK3mFv3cvd/J/OGgabNph83QqMZ/Ne4fdViZcNtBzJIsrjMHY0WS6jt2FTP8L1gz4stsVz521x6zh5q1EXN82EgYExl8P5ODc43HWOluVPVV/fgMu8WdE4Rw1++tRtTZ9NFtjqwyxMxI43dUYY3egnfVSITDJK477oO5sLDvunYa2POW/wZMTR/kxq6YIL15Rt/PNkWBzLympnECyQ==
X-Forefront-Antispam-Report: CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:SATLEXMB03.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230022)(4636009)(136003)(376002)(39860400002)(346002)(396003)(451199015)(46966006)(36840700001)(40470700004)(5660300002)(36860700001)(86362001)(82310400005)(81166007)(356005)(82740400003)(8676002)(70586007)(478600001)(4326008)(41300700001)(6916009)(44832011)(54906003)(40480700001)(316002)(47076005)(336012)(966005)(40460700003)(1076003)(6666004)(186003)(426003)(2616005)(26005)(2906002)(36756003)(70206006)(8936002)(36900700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Sep 2022 08:06:37.5106
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c70af12b-6453-470c-c0c0-08da9ba8353a
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[SATLEXMB03.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT053.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR12MB5671
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

Shubhrajyoti Datta (2):
  dt-bindings: Add the binding doc for xilinx APM
  perf: Add xilinx APM support

 .../bindings/perf/xlnx-axi-perf-monitor.yaml  | 137 +++++
 drivers/perf/Kconfig                          |  11 +
 drivers/perf/Makefile                         |   1 +
 drivers/perf/xilinx_apm.c                     | 516 ++++++++++++++++++
 4 files changed, 665 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/perf/xlnx-axi-perf-monitor.yaml
 create mode 100644 drivers/perf/xilinx_apm.c

-- 
2.17.1

