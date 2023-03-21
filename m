Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A01F6C2B07
	for <lists+devicetree@lfdr.de>; Tue, 21 Mar 2023 08:07:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229583AbjCUHHV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Mar 2023 03:07:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229497AbjCUHHS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Mar 2023 03:07:18 -0400
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (mail-dm3nam02on2058.outbound.protection.outlook.com [40.107.95.58])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CF0E37F0D
        for <devicetree@vger.kernel.org>; Tue, 21 Mar 2023 00:07:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=auh91pWL8YyFplMTh4/WW/DRM0exsAAJ7cEpbZRBmZcvTH5/fEkrTx7CxpVacRh7cyT3lSdPAU4dSlYDlPoLW7GoBpUK9g5Svn24hCuOgqUtUCxwuWxKjOYatPgHQem74oaGvZ3eJYziUpDl05OPaXvMQD48AQRiqKU/SilC312yCq0zR+z5iT4nzo5rXmc+LcJB42sKv1mtS1g67onJTKN+cxnqWJPI3wiPU555M9hFjph2tqmM0D+9VMVo2nIwJK+oDcSkt1AIg38Burjs94LzWKJMIahmiNWUJEgGJAjdVMwkAIcRxOcNLri6ZY85vTNAdRHgAMMIrwUtl+mNXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FeJk7UXT7F4cohGrR5dL+vTuTxf63nY8SVfHlIF+geY=;
 b=cWjXnUtg3TqGsQrRm3DUcZ22krAoQeh95rtdGoTka9XrdSSbNGPa3g+Q9iqBRqSuPgYVqf6iqHzU9t05NM+oW+B5cnlwqMJWvhi/3QOiEQZJjg0IUG1ne9kMbql8DT9F09+qg8MEgiWMl/U3GJPkxF9xvH0GgaDX75ijuNAssi0s4ogTufqiUBMrWzNPru6lEmYL8sGMQqF+O2aMXkWe/eZhTQRqWvzENFefIBEQd/lcr6ZmTcT1tieYHOk+SX6/4owXAMnlFoJ93jVnTsEJJ7ubah5n+/ATpO6tPwTRfeftqWiMdWaz4UTvpc02lcix8beqC3YVzv0udnK56SjYTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=kernel.org smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FeJk7UXT7F4cohGrR5dL+vTuTxf63nY8SVfHlIF+geY=;
 b=hN2Os613nXrvN39oLvxZSKpuQMEW9MFHIFc5a7SHqnTNL0aak+4EYDtrQllyVGBHeJ6uA8s3Q1zdcg1/YAZCNlT1lqCPra+P7YLHcIAeqRHCFfdeDNFAneLFhXFxwTxO/tjmDbdzvD7yU0iodDzPL6cEG3iP9GO9ztbYJAnrQsM=
Received: from DS7PR05CA0062.namprd05.prod.outlook.com (2603:10b6:8:57::8) by
 MN0PR12MB6150.namprd12.prod.outlook.com (2603:10b6:208:3c6::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Tue, 21 Mar
 2023 07:07:15 +0000
Received: from DM6NAM11FT066.eop-nam11.prod.protection.outlook.com
 (2603:10b6:8:57:cafe::c6) by DS7PR05CA0062.outlook.office365.com
 (2603:10b6:8:57::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.16 via Frontend
 Transport; Tue, 21 Mar 2023 07:07:15 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB03.amd.com; pr=C
Received: from SATLEXMB03.amd.com (165.204.84.17) by
 DM6NAM11FT066.mail.protection.outlook.com (10.13.173.179) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.6222.16 via Frontend Transport; Tue, 21 Mar 2023 07:07:14 +0000
Received: from SATLEXMB06.amd.com (10.181.40.147) by SATLEXMB03.amd.com
 (10.181.40.144) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.34; Tue, 21 Mar
 2023 02:07:14 -0500
Received: from SATLEXMB03.amd.com (10.181.40.144) by SATLEXMB06.amd.com
 (10.181.40.147) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.34; Tue, 21 Mar
 2023 02:07:12 -0500
Received: from xsjssw-mmedia2.xilinx.com (10.180.168.240) by
 SATLEXMB03.amd.com (10.181.40.144) with Microsoft SMTP Server id 15.1.2375.34
 via Frontend Transport; Tue, 21 Mar 2023 02:07:06 -0500
From:   Parth Gajjar <parth.gajjar@amd.com>
To:     <robh@kernel.org>, <mripard@kernel.org>, <heiko@sntech.de>
CC:     <git-dev@xilinx.com>, <michal.simek@amd.com>,
        <varunkumar.allagadapa@amd.com>, <vishal.sagar@amd.com>,
        <robh+dt@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Parth Gajjar <parth.gajjar@amd.com>
Subject: [PATCH v2 1/2] dt-bindings: gpu: mali-utgard: Add xlnx,zynqmp-mali compatible
Date:   Tue, 21 Mar 2023 00:06:18 -0700
Message-ID: <20230321070619.29440-2-parth.gajjar@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230321070619.29440-1-parth.gajjar@amd.com>
References: <20230321070619.29440-1-parth.gajjar@amd.com>
MIME-Version: 1.0
Content-Type: text/plain
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6NAM11FT066:EE_|MN0PR12MB6150:EE_
X-MS-Office365-Filtering-Correlation-Id: da4bb568-27b9-40cc-02b2-08db29dae64c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: t2NH3hYo+TTBlFIEaMjUDujRRQtaeSzGHgHwuR4Fn2DhYGBMXfDQvLr8Tx7UZe1bwt6EoGBTmPXuAjInQyZJdkvur48RpgDDvp31lWPUWkbdnhydSuWTR8Zt1fWT3adTaLPh/tuT3vLZvRu9OMiJ2PqSs+YZYDlE/NFkleV5YXV5C2KqtPDE4cI5zyanoeZ8QkPJ1WaL+vAmlYbsqE1NmhAHjItPXC3g8GbFntjYeYdwNxkd1B7A9yNjMUB2mmze5FcHIKzzYb2XObiZuYSUMktAIpwJJjKnlOQGGgxVZBognRqEKzfkOFBRQ+F3Pd77kMcarT198H+jxn83RFSoaNUXof0KjvDAGwE8KmzVBlxniU+WS6T4DvrEAYZzsusrnlihzrDfFXjYJSiiKj40/AQFjqe+/MqsUCSb96P1idirQmvHc1xaELlN2wxwPZquzqT786L+gxRtwmhkiGRtpfpVq4FucIR2Fz8b9VpgUVWLdENRHqAyb2NCvJI2oLk+rXQmlUnIho1T6MmL3nHWgozYqdwhDJCDcGM2vHCudA+j9tW5m2qBATOMw5FjG3WDJfavIGEwvlDlWuZ1p6OH/+QyXtDOZKpwrT9Y0Lnes+91e2nQRq7nV6cFfZp3B/Ms1vxTUGNZgtWr52adqBmC5Kftn6XMaIKMrO8XRKVxkjjuRS+7AGr8jKCii3tnhocr0n4kf7KxsDXW34UHiEGQJeZn3yUxDOSr0k0kJEB0fEs=
X-Forefront-Antispam-Report: CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:SATLEXMB03.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230025)(4636009)(39860400002)(376002)(136003)(346002)(396003)(451199018)(46966006)(36840700001)(40470700004)(40460700003)(40480700001)(5660300002)(4326008)(8676002)(70586007)(70206006)(110136005)(316002)(54906003)(2616005)(6666004)(8936002)(36860700001)(44832011)(26005)(1076003)(336012)(41300700001)(4744005)(186003)(426003)(47076005)(478600001)(82310400005)(86362001)(36756003)(2906002)(82740400003)(356005)(81166007)(36900700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Mar 2023 07:07:14.5626
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: da4bb568-27b9-40cc-02b2-08db29dae64c
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[SATLEXMB03.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT066.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR12MB6150
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_SPF_HELO,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_NONE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Xilinx zynqmp SoC contains Mali400, so add its specific compatible to
bindings.

Signed-off-by: Parth Gajjar <parth.gajjar@amd.com>
Signed-off-by: Vishal Sagar <vishal.sagar@amd.com>
Acked-by: Rob Herring <robh@kernel.org>
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
2.25.1

