Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 774446ADA42
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 10:24:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230374AbjCGJY3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 04:24:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230368AbjCGJY1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 04:24:27 -0500
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on20601.outbound.protection.outlook.com [IPv6:2a01:111:f400:7eae::601])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC2243B0E0
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 01:24:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SL5Gs1KruXM4ZwyyQkM8c7PMn4l8FqH0sNgdWT0uk8JBlRtnIAGqkR7JXRY/5qOD/Cj1jmm6BzVUQQ84bFPP2pBVh9UnYNl7hATWR0CA7/62mEKFkD4vYig4m5m18Mf6p9KN3YFna5oBKifxPHra6yCkzsXHXImfStvO0/YSIzzAQ14GQA+2aXEXN2HpIAq57Yne6mii8NibPs0CxUTrssaJJlm8OVoboqfttxF4/pmtpGQaIblChKheS8Fu1Wz5PSO8x+XxAnBrVvGeiRd+TOcHEZUXfTBW40cVqEw+pDr7ICni9OaVPzywIMqeQu/hCNBb87qqhJOfZ6MDYCFXbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SGU+5tYx/Q1ETppAAz8dZHr3OZh0OggPJMU6ek11oe8=;
 b=K+PDZrCHOTqVjNfGHv15Y4lVY3klL5hajC8yI7/HueuRTeScmOfrXuDr9LRQwNITPiTcFSQdUmusqKGB59QsQ8J9b7GOkHK7d3GxbSsfTgSXeebQfw3JkFsRfVSP7aXv200US+R2flc3cRj5MMqCv5EpMS+V486Gfj3k5sfLlBUhPuc0jcBKFl1ptFs6Vg9iLoYcRHt/MYhfHqHBgIfsI0HA0f2rSayWsNrF1/jGf+KnDkNdi+7hThDfAcV2WSJhNVZRsEdw+XJuNdRj3SYkS3UQ4zDevAnBHdNWv+8X9Vkm8/wQa1MQVoqt0TeSEWGRCrYu42gPqc76llaIoJbu6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=kernel.org smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SGU+5tYx/Q1ETppAAz8dZHr3OZh0OggPJMU6ek11oe8=;
 b=Nf0dUxb7tCafA9K4MjdawSK5GM3v9DLaL+39+Ywhs+d0rFoVKqgviuWIYfwZ0C0kohxe8JkMaWxELT6+Vmc6WJbqsJlBZSTYEJPtTQ/LfLcudYO3iS/75d8Z8iV2hnNiqzPTLvUfsIr0Qz4HVuJjFHHASBYCXT+fEt50IWP6lZE=
Received: from DS7PR06CA0052.namprd06.prod.outlook.com (2603:10b6:8:54::30) by
 SJ2PR12MB7943.namprd12.prod.outlook.com (2603:10b6:a03:4c8::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.21; Tue, 7 Mar
 2023 09:24:09 +0000
Received: from DS1PEPF0000E645.namprd02.prod.outlook.com
 (2603:10b6:8:54:cafe::86) by DS7PR06CA0052.outlook.office365.com
 (2603:10b6:8:54::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.29 via Frontend
 Transport; Tue, 7 Mar 2023 09:24:09 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB03.amd.com; pr=C
Received: from SATLEXMB03.amd.com (165.204.84.17) by
 DS1PEPF0000E645.mail.protection.outlook.com (10.167.17.203) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.6178.13 via Frontend Transport; Tue, 7 Mar 2023 09:24:09 +0000
Received: from SATLEXMB08.amd.com (10.181.40.132) by SATLEXMB03.amd.com
 (10.181.40.144) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.34; Tue, 7 Mar
 2023 03:24:07 -0600
Received: from SATLEXMB03.amd.com (10.181.40.144) by SATLEXMB08.amd.com
 (10.181.40.132) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.34; Tue, 7 Mar
 2023 01:24:06 -0800
Received: from xsjvarunkum50.xilinx.com (10.180.168.240) by SATLEXMB03.amd.com
 (10.181.40.144) with Microsoft SMTP Server id 15.1.2375.34 via Frontend
 Transport; Tue, 7 Mar 2023 03:24:05 -0600
From:   Parth Gajjar <parth.gajjar@amd.com>
To:     <robh@kernel.org>, <mripard@kernel.org>, <heiko@sntech.de>
CC:     <git-dev@xilinx.com>, <michal.simek@amd.com>,
        <varunkumar.allagadapa@amd.com>, <vishal.sagar@amd.com>,
        <robh+dt@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Parth Gajjar <parth.gajjar@amd.com>
Subject: [RESENT PATCH 2/2] dt-bindings: gpu: mali-utgard: Add xlnx,zynqmp-mali compatible
Date:   Tue, 7 Mar 2023 01:23:21 -0800
Message-ID: <1678181001-2327-3-git-send-email-parth.gajjar@amd.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1678181001-2327-1-git-send-email-parth.gajjar@amd.com>
References: <1678181001-2327-1-git-send-email-parth.gajjar@amd.com>
MIME-Version: 1.0
Content-Type: text/plain
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS1PEPF0000E645:EE_|SJ2PR12MB7943:EE_
X-MS-Office365-Filtering-Correlation-Id: a2f8bc12-eb7d-400d-b274-08db1eedb4df
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cJMnxbuXC6szb95jm7qoL7BHRjtG/3BMbJPbx5NZGdU1nbBmFWEkJMvtzCQUbtz/6TVam5oxm0Qx4M8ihn83YcUwwUGBlW79xsa8n254vl7zeGerQsDhykCXoOyz14su2/WvV97jUY2bSZBdNngEvhdtYzgMWbOhChxvmk7xb10pvOLnR0BKgaNcbq/DbRt60ccoEIVwIrEbEMpgtmRyzKxg2h5mXI0zx9rmTU3shC1KyW92NYnsYpy7nxFaNVCs6FSlAXNwAmd+wcArugZcRoKDI1vyupUx9UU5iLp2XaRb5EbjN7Q3WkUVieg93MYZlsRI1te/2kKHjpljKGxI0pQU3VxvSVI2maCdkiQ/ItBjL0MDDsLnRCTmRwUtBffxXuzw5kC2b3c6zL0ud3Myi+D8P37IbRDMA6ef4MhE6bfVueKUxUDMcvuhkXfGpIQJrGzcjZZKB20AMpINZIxOLydj/RO9Vrlc5bCODDHlsyRTn/WfsDOKyomdXm5bNtTnbw8tUFwFPHuQTAqFIsJh2mjwnzb+LK+jklA6amJV5yGU7NQQRF/UWzz9Pptub15f/hXhy00ZhgmHavKlnnohm3CrEpCpc21NsGirzpinu6LSpp2CvDp2zcsA/AYbrpC2X4OWpcYBqJLHFhh0uA55SOTAMUfryaaoNEngb0hTesbo5LtkPWSltnlqTuWsWCggHMogFb+cHuMvqWVrykBOpwAR/ACa8nniD3mLAzJ0gX8=
X-Forefront-Antispam-Report: CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:SATLEXMB03.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230025)(4636009)(136003)(39860400002)(396003)(376002)(346002)(451199018)(36840700001)(40470700004)(46966006)(40460700003)(2906002)(186003)(81166007)(356005)(41300700001)(44832011)(36860700001)(8676002)(4326008)(8936002)(70206006)(5660300002)(82740400003)(4744005)(70586007)(47076005)(426003)(6666004)(26005)(2616005)(478600001)(54906003)(110136005)(82310400005)(40480700001)(36756003)(86362001)(316002)(336012)(36900700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2023 09:24:09.2917
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a2f8bc12-eb7d-400d-b274-08db1eedb4df
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[SATLEXMB03.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: DS1PEPF0000E645.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR12MB7943
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_SPF_HELO,SPF_HELO_PASS,
        SPF_NONE,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Xilinx zynqmp SoC contains Mali400, so add its specific compatible to
bindings.

Signed-off-by: Parth Gajjar <parth.gajjar@amd.com>
Signed-off-by: Vishal Sagar <vishal.sagar@amd.com>
---
 Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml
index 318122d95eb5..0fae1ef013be 100644
--- a/Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml
+++ b/Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml
@@ -33,6 +33,7 @@ properties:
               - rockchip,rk3228-mali
               - samsung,exynos4210-mali
               - stericsson,db8500-mali
+              - xlnx,zynqmp-mali
           - const: arm,mali-400
       - items:
           - enum:
-- 
2.17.1

