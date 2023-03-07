Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3A7536ADA43
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 10:24:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229734AbjCGJYa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 04:24:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230363AbjCGJY1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 04:24:27 -0500
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on20628.outbound.protection.outlook.com [IPv6:2a01:111:f400:7e8a::628])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB4543801A
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 01:24:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=akZQCSXushYtooQbk6N4IGMGhH1ZQ/Fm7oV+S65Pk+8+Qou/adKCV8teCTUtFh9l77Cr+oH0ZLodYh1P0zSKIzCUTZg0uVVQo8XS78IUxn/QZVnY0YK3wVYp8oHwQaq190ym3IFhe9gtktcG7vSLsDTUSww4UFYFVuJOc0/Xi44r3kNyN6CKKgV+8q4pdS49glDz/+Z/OdaNnIHgq6UoyHBuOqdkgoMYF+8+0DuEKbWcs9RgO+liKqNF7wXyQJKRzrDsTYEYTnL2EinlhiwLBILlD7smFcdfvPwFNan7/3+G8EkI3CDwg4ljyIKbl1AxIW5+bcWE+VRkvnn50nBhHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KAFppHVpEZn/dnPf5blZDW+HYJNgqYNAdzMIT0ctcok=;
 b=LYu+sIjINR19XpYjqvKcnToWUAjyXh3rOukmbkdATv8zd5OV+IFDZHJoB5eUTS2QQMjhpMbi+mL0aEOWvssL7jzJXfdT9EgohdaBCXj6jkpDZdbl+XmNkzpnX82Eu/9RaJ4lHv2Tbvb3OBLQP6hZUwCTzM71zvwK8WjGHWXPEBQ3M1KbB5S8787zPr8G58NdImgtQghQDR8Kw6rkvrZEDsJpZZBmBHoYkB1E4MGamZ0Mw7Xh4LnnCYUE/c1sZUIGlt7if/KxOZmANKZ1OlZMrGm8objnDwtP8hHMPC/IEHOXXwT/zz7hwJyc42ojZNm5c+LCojWfwrbcGLxXul7GCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=kernel.org smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KAFppHVpEZn/dnPf5blZDW+HYJNgqYNAdzMIT0ctcok=;
 b=UAIuLiM+PLUhfa2Nl6WYSFGL07D6EnzJ7Gzic3HfYQQg/htnC3CeOm0lgPSPQ91b/8I27XVZNMaOizQCvCKGwYZuAAVh9sPuzi/aVw774hkcItGjOaND5rusI+0aW4L+vNhRGy96c6EAgCBl4d6QvdyW7Axg8E8+NzF9FeDZG30=
Received: from MW4PR04CA0164.namprd04.prod.outlook.com (2603:10b6:303:85::19)
 by CH0PR12MB5188.namprd12.prod.outlook.com (2603:10b6:610:bb::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.29; Tue, 7 Mar
 2023 09:24:09 +0000
Received: from CO1NAM11FT024.eop-nam11.prod.protection.outlook.com
 (2603:10b6:303:85:cafe::c8) by MW4PR04CA0164.outlook.office365.com
 (2603:10b6:303:85::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.28 via Frontend
 Transport; Tue, 7 Mar 2023 09:24:09 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB04.amd.com; pr=C
Received: from SATLEXMB04.amd.com (165.204.84.17) by
 CO1NAM11FT024.mail.protection.outlook.com (10.13.174.162) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.6178.14 via Frontend Transport; Tue, 7 Mar 2023 09:24:09 +0000
Received: from SATLEXMB06.amd.com (10.181.40.147) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.34; Tue, 7 Mar
 2023 03:24:06 -0600
Received: from SATLEXMB03.amd.com (10.181.40.144) by SATLEXMB06.amd.com
 (10.181.40.147) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.34; Tue, 7 Mar
 2023 03:24:05 -0600
Received: from xsjvarunkum50.xilinx.com (10.180.168.240) by SATLEXMB03.amd.com
 (10.181.40.144) with Microsoft SMTP Server id 15.1.2375.34 via Frontend
 Transport; Tue, 7 Mar 2023 03:24:04 -0600
From:   Parth Gajjar <parth.gajjar@amd.com>
To:     <robh@kernel.org>, <mripard@kernel.org>, <heiko@sntech.de>
CC:     <git-dev@xilinx.com>, <michal.simek@amd.com>,
        <varunkumar.allagadapa@amd.com>, <vishal.sagar@amd.com>,
        <robh+dt@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Parth Gajjar <parth.gajjar@amd.com>
Subject: [RESENT PATCH 1/2] arm64: zynqmp: Update MALI 400 interrupt and clock names
Date:   Tue, 7 Mar 2023 01:23:20 -0800
Message-ID: <1678181001-2327-2-git-send-email-parth.gajjar@amd.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1678181001-2327-1-git-send-email-parth.gajjar@amd.com>
References: <1678181001-2327-1-git-send-email-parth.gajjar@amd.com>
MIME-Version: 1.0
Content-Type: text/plain
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1NAM11FT024:EE_|CH0PR12MB5188:EE_
X-MS-Office365-Filtering-Correlation-Id: be548f18-8e6a-43e3-4020-08db1eedb4f4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: R2VI727MsWsei71LyTzCQ8pJV3t11/a35noA/4gYFXWN8HIkzSCcENdGgTJB7DUcHXu3LlEm8R1kFjkuwVkpMLb78J9QQxv9Vs+un9CcMZZjZCVGrjkgAAXgVDNgTQs9GOumYN1Q3hmTR0NKVjQoLOtHy8xDVNl74BHur2RsT3Tt95DNk2ILTq8D5rnG9ATzryFy3BdsUOdPbuwGElslOtfJo2AvBHL9+KishL2sjFMINsiEYskWt305d4CvzHwgHGWJd0hRqXDP8brPFKaE8D/yO5W41P2EAk6CyHZROpGP8brK+pmhAW/DI8xlGvprLvDYzE7VNBXsirPkjPzIrO1EX6wekr0pR5TeHtePwrwmdb6fFWHoYbcdWmQ8miNA5e//zxTk5Z50SZU1uVpqtQtHbDkhSRE6qg9eRWqfd6/QikPZuGTAzHWjGPcHfakU0Lpib1cubh7I6RAtVSStqU2ol05sHk4hvPHBYRW2eZG7+IrCRG/jRS4CoMslBc2Kx2z2ID/CWkegFmaZTH7l34KymHmUI9duoUa3fhj0R62cz2tPtsEm5ldnaoWLcIXv+g/WGkODBJJpX7zt09NtMXpqf8kuwJvhkW+iJylABlHs+Yr2OkFTSDX9Os8IKX9m9941sU7YLCsBzYWzhSjRBJaDO8p1Cd87zewd8WgGYznNomXrvovK98IwpdS34DMyttyTLELQZKrOxuXINnnfbzq9QW0qbfX3Kzi0GQ4+aSc=
X-Forefront-Antispam-Report: CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:SATLEXMB04.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230025)(4636009)(346002)(396003)(376002)(136003)(39860400002)(451199018)(40470700004)(36840700001)(46966006)(36860700001)(81166007)(82740400003)(356005)(86362001)(41300700001)(36756003)(5660300002)(2906002)(44832011)(4326008)(70586007)(40480700001)(8936002)(8676002)(70206006)(82310400005)(40460700003)(2616005)(336012)(186003)(83380400001)(47076005)(426003)(110136005)(316002)(54906003)(6666004)(26005)(478600001)(36900700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2023 09:24:09.3483
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: be548f18-8e6a-43e3-4020-08db1eedb4f4
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[SATLEXMB04.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: CO1NAM11FT024.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR12MB5188
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_SPF_HELO,SPF_HELO_PASS,
        SPF_NONE,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Motivation for the commit is to utilize the upstream community
device tree so that the either modified ARM Mali 400 driver
or upstream lima driver can be used.

Signed-off-by: Parth Gajjar <parth.gajjar@amd.com>
Signed-off-by: Vishal Sagar <vishal.sagar@amd.com>
---
 arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi | 2 +-
 arch/arm64/boot/dts/xilinx/zynqmp.dtsi         | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi
index ff2f34ce380c..ac8ed4a434d0 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi
@@ -133,7 +133,7 @@
 };
 
 &gpu {
-	clocks = <&zynqmp_clk GPU_REF>, <&zynqmp_clk GPU_PP0_REF>, <&zynqmp_clk GPU_PP1_REF>;
+	clocks = <&zynqmp_clk GPU_REF>, <&zynqmp_clk GPU_PP0_REF>;
 };
 
 &lpd_dma_chan1 {
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
index 96cba469ab5d..6a210cb9bce9 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
+++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
@@ -448,12 +448,12 @@
 
 		gpu: gpu@fd4b0000 {
 			status = "disabled";
-			compatible = "arm,mali-400", "arm,mali-utgard";
+			compatible = "xlnx,zynqmp-mali", "arm,mali-400";
 			reg = <0x0 0xfd4b0000 0x0 0x10000>;
 			interrupt-parent = <&gic>;
 			interrupts = <0 132 4>, <0 132 4>, <0 132 4>, <0 132 4>, <0 132 4>, <0 132 4>;
-			interrupt-names = "IRQGP", "IRQGPMMU", "IRQPP0", "IRQPPMMU0", "IRQPP1", "IRQPPMMU1";
-			clock-names = "gpu", "gpu_pp0", "gpu_pp1";
+			interrupt-names = "gp", "gpmmu", "pp0", "ppmmu0", "pp1", "ppmmu1";
+			clock-names = "bus", "core";
 			power-domains = <&zynqmp_firmware PD_GPU>;
 		};
 
-- 
2.17.1

