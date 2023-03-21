Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA7DE6C2B08
	for <lists+devicetree@lfdr.de>; Tue, 21 Mar 2023 08:07:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229497AbjCUHHX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Mar 2023 03:07:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229803AbjCUHHV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Mar 2023 03:07:21 -0400
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2040.outbound.protection.outlook.com [40.107.93.40])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D87C335270
        for <devicetree@vger.kernel.org>; Tue, 21 Mar 2023 00:07:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n7fh5XFfaKvvwJ0ufT52Z3WZ55WiJZHcXzsvg+IccXSUtAzgvr7wE0HP9c2Rlz6QhFXnge+d5j6jtun8zzm1nenvo3s3SewhvddomyBT7vhwHPEFgo+il+gR2wqDDyooG3AVy0Bs5IF0GXacReMNDy/ueBEljOYJpYLgpqlsGS/vMMmde+rAXHtlUe2nRGZCeBZkXm5wRFMsTjwF8Zl07Vx8eogbnqz2PQIh4rS4yNofY8psaWZg2W1Akb6liyTx6ZO8T3BM3L+fepQnVYfQu5JLPsULFtRZl+BIoM3vjtluKjHlRTLqOjkdEk2xtDtbG1wvNhs/HDIrbVPRTS3iuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oR7XGP/XubGpDIMfm8WxxGz2mTbka7+WRhG6hN9hiPI=;
 b=kvfkwGY9dOHDHmfysZILkAAQ3SIHw4xkk1h62QtnH15zvOPc1szbGBn83ys8/m5wGhvdFBm0J6aU2e06bkTbERFXde8pQKzH1RWfZn+1rO5sb3VbQRNm/i4X9f31hgGwx/gGnaGKXhcnZJxV+9aU1EeAqMxrcVsIiHa+mTC5fAdyXYvKrybLLLEH5+nY8UUuV4yglrds0Ap6XP/dfv6g+63UdNKeBiDTvEsNMQYmxscT9rEkRNjyGSPbBYLmZQ9N6b4+AP35zJ31fAP4D8PQTEL2DNxZHzKNHRasJFyxijwvw+B2B/j4RUNB+1xl/GyK1wWkFKfkQDa27GUk56pFXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=kernel.org smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oR7XGP/XubGpDIMfm8WxxGz2mTbka7+WRhG6hN9hiPI=;
 b=WWWUfcS2vpKgJqkv6frAXhsthT7AaKLcaaBsOcEnAZO34ViB2L9R4+qqV3W55BiKn/sK7BK9Pxeu2JUJ1syowOgBCadpSxJhbyLsjPUDW1GrKujvCbBDurU8+hLuKpuef1GQ9APHaaioilIoLtTlFAe1WElsJswpmaPEuwYJe2o=
Received: from DS7PR05CA0083.namprd05.prod.outlook.com (2603:10b6:8:57::29) by
 SN7PR12MB6792.namprd12.prod.outlook.com (2603:10b6:806:267::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Tue, 21 Mar
 2023 07:07:16 +0000
Received: from DM6NAM11FT066.eop-nam11.prod.protection.outlook.com
 (2603:10b6:8:57:cafe::7e) by DS7PR05CA0083.outlook.office365.com
 (2603:10b6:8:57::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.16 via Frontend
 Transport; Tue, 21 Mar 2023 07:07:16 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB03.amd.com; pr=C
Received: from SATLEXMB03.amd.com (165.204.84.17) by
 DM6NAM11FT066.mail.protection.outlook.com (10.13.173.179) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.6222.16 via Frontend Transport; Tue, 21 Mar 2023 07:07:15 +0000
Received: from SATLEXMB05.amd.com (10.181.40.146) by SATLEXMB03.amd.com
 (10.181.40.144) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.34; Tue, 21 Mar
 2023 02:07:15 -0500
Received: from SATLEXMB03.amd.com (10.181.40.144) by SATLEXMB05.amd.com
 (10.181.40.146) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.34; Tue, 21 Mar
 2023 02:07:14 -0500
Received: from xsjssw-mmedia2.xilinx.com (10.180.168.240) by
 SATLEXMB03.amd.com (10.181.40.144) with Microsoft SMTP Server id 15.1.2375.34
 via Frontend Transport; Tue, 21 Mar 2023 02:07:13 -0500
From:   Parth Gajjar <parth.gajjar@amd.com>
To:     <robh@kernel.org>, <mripard@kernel.org>, <heiko@sntech.de>
CC:     <git-dev@xilinx.com>, <michal.simek@amd.com>,
        <varunkumar.allagadapa@amd.com>, <vishal.sagar@amd.com>,
        <robh+dt@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Parth Gajjar <parth.gajjar@amd.com>
Subject: [PATCH v2 2/2] arm64: zynqmp: Add mali-400 gpu node for zynqmp
Date:   Tue, 21 Mar 2023 00:06:19 -0700
Message-ID: <20230321070619.29440-3-parth.gajjar@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230321070619.29440-1-parth.gajjar@amd.com>
References: <20230321070619.29440-1-parth.gajjar@amd.com>
MIME-Version: 1.0
Content-Type: text/plain
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6NAM11FT066:EE_|SN7PR12MB6792:EE_
X-MS-Office365-Filtering-Correlation-Id: 44a3cb08-c419-4ff7-ccee-08db29dae71d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: C7jSuW3LV0NGHus0yruSdxVzyeVmb0ar9F1n1iNBBoucw6krPbXjMfwcZ2OI37pu1vHJ3zUX2t78BVdMgpK0WPkEbU8LRF2TOsjifYfgZo+BO05VCVVRic5lnwUr2fSJrFhanIkWani98iMXMu8bwbBThXI1HCH3nVUeUxwYzFwThYHfpdUtRCf29Jqd9QTUiDDyWmFzdGX3QiJPQs2136NlwtJqI3P5JeIGnMKnG0Ho3aoyF5Qy/LcoL5EfhigH/o/vDoYoROkGaL/n/8v/Z8GnDoqhxW6gaHvQjGiT+FXAnNSsomT9pmQBKF/yQxwRasrLMJIXGNDze/p5j6vC9QV6HIjk5pObZ7Wrt/eaciTysfi7xbVGA+M9Z4xQAeVmG/G/eqVi6nlJnfR6GrL7YZ+UBPQU5cl8Q4eAwEU0MhufXYG0IpZxr8Rx2XpXyP+hren8Lx+1xe5LLunlWh2CjjzjEkgUza8HLIJNyF9EFt5vZkqq5dooyGxCpFW06PPNfXUjDrHvWXRYb1wEEt9b4Ws7D/gYaaJO1wxKwMDMw5uYyP95pleB1QFIAdK/mCXKNq9KuMl6XdmP6hFJtz2MkGRlT5I7Bvxxdw6VZ2BIVw3sewVfM2Et/8FY8HOtp0tyyj9sM/HIPdmbu1BOxmbRSLpR39CMOUrXJmi8hgUECl/ZRXlPcuA5lTVWQnTFqMghEp3bfiYyoD5gDfcnSFKzS31EEObztPcgeiSQ/fwIYSk=
X-Forefront-Antispam-Report: CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:SATLEXMB03.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230025)(4636009)(396003)(39860400002)(376002)(346002)(136003)(451199018)(46966006)(40470700004)(36840700001)(41300700001)(40480700001)(44832011)(336012)(8936002)(5660300002)(40460700003)(36860700001)(47076005)(426003)(356005)(2906002)(82740400003)(186003)(82310400005)(2616005)(478600001)(81166007)(110136005)(316002)(83380400001)(26005)(86362001)(1076003)(54906003)(4326008)(36756003)(70206006)(70586007)(8676002)(36900700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Mar 2023 07:07:15.9375
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 44a3cb08-c419-4ff7-ccee-08db29dae71d
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[SATLEXMB03.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT066.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB6792
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_SPF_HELO,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_NONE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add mali-400 gpu node for zynqmp.
Enabled gpu node for xilinx boards.

Signed-off-by: Parth Gajjar <parth.gajjar@amd.com>
Signed-off-by: Vishal Sagar <vishal.sagar@amd.com>
---
 arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi       |  4 ++++
 arch/arm64/boot/dts/xilinx/zynqmp-sm-k26-revA.dts    |  4 ++++
 .../boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts      |  3 +++
 .../boot/dts/xilinx/zynqmp-zc1751-xm018-dc4.dts      |  4 ++++
 arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts    |  4 ++++
 arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts    |  4 ++++
 arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts    |  4 ++++
 arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revC.dts    |  4 ++++
 arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts    |  4 ++++
 arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts    |  4 ++++
 arch/arm64/boot/dts/xilinx/zynqmp.dtsi               | 12 ++++++++++++
 11 files changed, 51 insertions(+)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi
index 3e9979ab60bb..5e7e1bf5b811 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi
@@ -95,6 +95,10 @@ &fpd_dma_chan8 {
 	clocks = <&zynqmp_clk GDMA_REF>, <&zynqmp_clk LPD_LSBUS>;
 };
 
+&gpu {
+	clocks = <&zynqmp_clk GPU_REF>, <&zynqmp_clk GPU_PP0_REF>;
+};
+
 &lpd_dma_chan1 {
 	clocks = <&zynqmp_clk ADMA_REF>, <&zynqmp_clk LPD_LSBUS>;
 };
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-sm-k26-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-sm-k26-revA.dts
index 20e83ca47b5d..34412304d09f 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-sm-k26-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-sm-k26-revA.dts
@@ -287,3 +287,7 @@ &gpio {
 			  "", "", "", "", "", /* 165 - 169 */
 			  "", "", "", ""; /* 170 - 173 */
 };
+
+&gpu {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts
index b05be2552826..f89ef2afcd9e 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts
@@ -108,6 +108,9 @@ &gpio {
 	pinctrl-0 = <&pinctrl_gpio_default>;
 };
 
+&gpu {
+	status = "okay";
+};
 
 &i2c1 {
 	status = "okay";
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm018-dc4.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm018-dc4.dts
index 05a2b79738af..6e0106bf1294 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm018-dc4.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm018-dc4.dts
@@ -152,6 +152,10 @@ &gpio {
 	status = "okay";
 };
 
+&gpu {
+	status = "okay";
+};
+
 &i2c0 {
 	clock-frequency = <400000>;
 	status = "okay";
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts
index 6948fd40554b..c74bc3ff703b 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts
@@ -161,6 +161,10 @@ &gpio {
 			  "", "", "", "";
 };
 
+&gpu {
+	status = "okay";
+};
+
 &i2c1 {
 	status = "okay";
 	pinctrl-names = "default", "gpio";
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
index 5fd6b70a154a..13c43324f1d2 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
@@ -216,6 +216,10 @@ &gpio {
 	pinctrl-0 = <&pinctrl_gpio_default>;
 };
 
+&gpu {
+	status = "okay";
+};
+
 &i2c0 {
 	status = "okay";
 	clock-frequency = <400000>;
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts
index bd8f20f3223d..485585c491f4 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts
@@ -122,6 +122,10 @@ &gpio {
 	status = "okay";
 };
 
+&gpu {
+	status = "okay";
+};
+
 &i2c1 {
 	status = "okay";
 	clock-frequency = <400000>;
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revC.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revC.dts
index 96feaad30166..44ec9edd2452 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revC.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revC.dts
@@ -127,6 +127,10 @@ &gpio {
 	status = "okay";
 };
 
+&gpu {
+	status = "okay";
+};
+
 &i2c1 {
 	status = "okay";
 	clock-frequency = <400000>;
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
index 24a252317150..09773b7200f8 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
@@ -227,6 +227,10 @@ &gpio {
 	pinctrl-0 = <&pinctrl_gpio_default>;
 };
 
+&gpu {
+	status = "okay";
+};
+
 &i2c0 {
 	status = "okay";
 	clock-frequency = <400000>;
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
index d685d8fbc36a..e0305dcbb010 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
@@ -187,6 +187,10 @@ &gpio {
 	pinctrl-0 = <&pinctrl_gpio_default>;
 };
 
+&gpu {
+	status = "okay";
+};
+
 &i2c0 {
 	status = "okay";
 	clock-frequency = <400000>;
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
index 153db59dc4b3..bb0d0be30aa0 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
+++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
@@ -411,6 +411,18 @@ gic: interrupt-controller@f9010000 {
 			interrupts = <1 9 0xf04>;
 		};
 
+		gpu: gpu@fd4b0000 {
+			status = "disabled";
+			compatible = "xlnx,zynqmp-mali", "arm,mali-400";
+			reg = <0x0 0xfd4b0000 0x0 0x10000>;
+			interrupt-parent = <&gic>;
+			interrupts = <0 132 4>, <0 132 4>, <0 132 4>,
+				     <0 132 4>, <0 132 4>, <0 132 4>;
+			interrupt-names = "gp", "gpmmu", "pp0", "ppmmu0", "pp1", "ppmmu1";
+			clock-names = "bus", "core";
+			power-domains = <&zynqmp_firmware PD_GPU>;
+		};
+
 		/* LPDDMA default allows only secured access. inorder to enable
 		 * These dma channels, Users should ensure that these dma
 		 * Channels are allowed for non secure access.
-- 
2.25.1

