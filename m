Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AB8566A6B9F
	for <lists+devicetree@lfdr.de>; Wed,  1 Mar 2023 12:23:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229714AbjCALXd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Mar 2023 06:23:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229546AbjCALXc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Mar 2023 06:23:32 -0500
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2060.outbound.protection.outlook.com [40.107.243.60])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C4D915176
        for <devicetree@vger.kernel.org>; Wed,  1 Mar 2023 03:23:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zy4YfORusiW+ZJWmfYZGx3z5PSaP42YssRsNT2wR6iVS69xBiu0DtOWNsK3rGF9RxRuA6NPDqhwIdGH2aNfjFUU/tiEQrLiFJHISeEjn8dkq8i1LsjpN7woTnUdzATwEWKv5ut9n/8nTatv6S54f0PMskNLNC8TbSYT7WilCszPeu/6uuR1/NbXAr9aua2P89IhLAluOXbflyRNGOxL8jyb95MKuAdCtIeheEiDPZXVBLmyzfvx0xShyPHs5SWvVLoVaUi1Nzt+35EWqqZynM60bH5HI9j3hUDlkrUvUzE2PqJOrolr7Zd1ANuGqIOGv7N1DlNk9LGXo5NKb4yrmsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KAFppHVpEZn/dnPf5blZDW+HYJNgqYNAdzMIT0ctcok=;
 b=jbGrcgJas/TC711CGbG4Jq76F8fl0lfwVINhy4Neqc41ruCy/J/hMbXaIdOsea7i4SfMI2cQ6as1ntCrtAh4kN1B3u5PCPZGVhlk7yLR2fI9ndy2t3QKGZ0BybC/h9yqCAMuB4tKI2mgRZ3tE1srdc3uaryIG7cpFzbbhz07W4hOhIU993IqP/nQiYASGBXFCxHI6RKm4d8qMUf9yPA2lsKdPUEf2jhgpcUUqW1Nj8NnMdVXwjWSSCv5LjmER7BuusUYQJXv1lcAzGnkyIvvqH0y6JVzwuveEkSceZgdmxQjjhtn1fj/XYQTHSGmZZfOI7zzxwD8md6V4soZqaYw5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 149.199.62.198) smtp.rcpttodomain=kernel.org smtp.mailfrom=amd.com;
 dmarc=fail (p=quarantine sp=quarantine pct=100) action=quarantine
 header.from=amd.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KAFppHVpEZn/dnPf5blZDW+HYJNgqYNAdzMIT0ctcok=;
 b=Pe9H3LP6GTCy79daS9ZOl795Vzd2lXuDa9DEBpETIu1InwzRswANanzpbhi7odjaFJiz1NOgNISs6D5PpGl1POme4+iK1lbTCFJ1xEGJTTD4P7mC1c59fEtP/TQgOVrPObto0vsR4eCkbbcVtMy4VyxMr9VMXeJyrRcv+jUHqn8=
Received: from DM6PR05CA0038.namprd05.prod.outlook.com (2603:10b6:5:335::7) by
 DM8PR02MB8121.namprd02.prod.outlook.com (2603:10b6:8:1a::12) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6134.30; Wed, 1 Mar 2023 11:23:27 +0000
Received: from DM3NAM02FT017.eop-nam02.prod.protection.outlook.com
 (2603:10b6:5:335:cafe::b1) by DM6PR05CA0038.outlook.office365.com
 (2603:10b6:5:335::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.18 via Frontend
 Transport; Wed, 1 Mar 2023 11:23:27 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is
 149.199.62.198) smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=amd.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 amd.com discourages use of 149.199.62.198 as permitted sender)
Received: from xsj-pvapexch02.xlnx.xilinx.com (149.199.62.198) by
 DM3NAM02FT017.mail.protection.outlook.com (10.13.5.6) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.6156.18 via Frontend Transport; Wed, 1 Mar 2023 11:23:27 +0000
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
        id 1pXKYO-0009Mo-1f; Wed, 01 Mar 2023 03:23:24 -0800
From:   Parth Gajjar <parth.gajjar@amd.com>
To:     <robh@kernel.org>, <mripard@kernel.org>, <heiko@sntech.de>
CC:     <git-dev@xilinx.com>, <michal.simek@amd.com>,
        <varunkumar.allagadapa@amd.com>, <vishal.sagar@amd.com>,
        <robh+dt@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Parth Gajjar <parth.gajjar@amd.com>
Subject: [PATCH 1/2] arm64: zynqmp: Update MALI 400 interrupt and clock names
Date:   Wed, 1 Mar 2023 03:23:03 -0800
Message-ID: <20230301112304.24107-2-parth.gajjar@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230301112304.24107-1-parth.gajjar@amd.com>
References: <20230301112304.24107-1-parth.gajjar@amd.com>
MIME-Version: 1.0
Content-Type: text/plain
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM3NAM02FT017:EE_|DM8PR02MB8121:EE_
X-MS-Office365-Filtering-Correlation-Id: b7f75afc-ba2a-4686-56b3-08db1a476112
X-MS-Exchange-SenderADCheck: 2
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9s7DmPK39rUeFtZUwc9XZJiqrZ+qcqCYHOlZBLPqM5IwkUYGq0uEfO5nTlQxBC7beJ4rvjd6oSSiH4Ueb7PE+74D9iS+NO/Np1/BtnumAC6rlhfQrZE7FJ1pjOMDOYIgDDNWG2RtqzooXUey4hg3vHsEucMrfwtxsnzv4Yg3W/eTvwnU8B07wrwTgHfAttunfjDjWN8OqmK+jtYzrNdVi5FaFrTFmwZljqCMT5uP0niZXwOb3cUj8+fCAYZKPdjQ86xFNF0db26WMPG9YXLQ8Z8w7JPzOpBkyi7FmbLWIwpbrVfzLYjHNzqjcw6TGoLSZHzk/Wnc+dLmoeC/7N3d8EFZHYf6zhHPzxEg3+Xad2y8LXhL5ooKGl2xx41UcXNYwvjO0oDwPQaEXUa4/9fqYu3tXwXM3JGY77ehDs/rlAM5RtEuOarAXwO+VwNu+0QMZdiS0KtFYXa8rKTMDw872Vzk3JAR5wYsVtJ4w7S4rUnzhTUdtO2FFKoUSUxXDgtReyvtggBrIgGUsWoZkgJGfVuF1Hj1veRI4za/qeby1t3VeSW1Nq9y05qMPYYNFiUcFZcGZLKyV+OUI7KysbA8COj4MKj9uSFPyxj3tnIPypOL7hUlAFAP6zffy4ovjrp4VbF1V7MApNc7zeJ4pd8SP5G9GNO0W1GTvvfGEmsvB8VlF31hzf+bFl2BOrLSKkmsOigc3947lm8gnE/lrjyCAw==
X-Forefront-Antispam-Report: CIP:149.199.62.198;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:xsj-pvapexch02.xlnx.xilinx.com;PTR:unknown-62-198.xilinx.com;CAT:NONE;SFS:(13230025)(346002)(39860400002)(396003)(136003)(376002)(451199018)(46966006)(40470700004)(82740400003)(7636003)(356005)(4326008)(86362001)(36756003)(44832011)(2906002)(7416002)(40480700001)(70206006)(41300700001)(5660300002)(8676002)(8936002)(70586007)(82310400005)(9786002)(2616005)(1076003)(336012)(83380400001)(40460700003)(47076005)(110136005)(35950700001)(26005)(54906003)(316002)(6666004)(498600001);DIR:OUT;SFP:1101;
X-OriginatorOrg: xilinx.onmicrosoft.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Mar 2023 11:23:27.5711
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b7f75afc-ba2a-4686-56b3-08db1a476112
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c;Ip=[149.199.62.198];Helo=[xsj-pvapexch02.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-AuthSource: DM3NAM02FT017.eop-nam02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR02MB8121
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

