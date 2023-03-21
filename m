Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 588906C2B06
	for <lists+devicetree@lfdr.de>; Tue, 21 Mar 2023 08:07:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229767AbjCUHHU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Mar 2023 03:07:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229583AbjCUHHS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Mar 2023 03:07:18 -0400
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2078.outbound.protection.outlook.com [40.107.92.78])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E641235270
        for <devicetree@vger.kernel.org>; Tue, 21 Mar 2023 00:07:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QfmK2Thk0uDhMHWXF/nedM6FAyaC7YycdfWMVba8htpJcIvZsTudN1di3Nq7W8OaAOOQFl2QRE5XMucqL3tLzY/UTufi6Ttx+h8eKQ7hT0BPsPNxSuVfYBoWr8IlTQQdA2UT20R5grF2Ft+tTMpvg/ToT51/NHKjPG0eBO8BbJJ6FedRo7OgXyNNzmsz0/QpzZqeQ6tA/+/qprYVSgfH0ExXe1bV8xFwUYrrfApt4EFy2nCi6kt916WlIStZV9rdh30Ee70kuWPXvfqSXksAONTFlRYBrfrFI1rAxz91Nh3x0K4Ex3FRb/BrNU6xf+xrpB9g/DhUhxakFl54jxqhNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ICtqNXmUpZmf4BAPlCB+QkWYESdeH5i4s9Ra5fAAotQ=;
 b=J/Ldo1YmuEsE+ZXMD2+HnWaUKdPmD4gMLeMD9LECzCg2i0q9CxIMZ9KCbg687QYmjs5N79PPDzkVIXgAhXxrm6UIwt878ZzBCzDppXIGUJ95b5K+V3kWLDzmUovpnec6PwoSSpjYrUYccq0SgO2mdVKSRPnUgg8hzf3kCBUfKKEgRL6nMa2zqkTGqh59QinagfP5bbJbhldS4Z1bH00k8tDYZSYUePT1JFarpV8pgr2m2cTDu8DKYipxYDfotphRAGoe7LEkNNObDqcd6LAcsDP1gRxo8hMFjpyBltJqSqpZg4xy7lViNNjoKeu/s1C2MDir2V6pDjssLkVyI2KeMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=kernel.org smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ICtqNXmUpZmf4BAPlCB+QkWYESdeH5i4s9Ra5fAAotQ=;
 b=Tj40mF8c3Q/NjecVG/v3akLe5xWpNhAChjjuaBVpK1tmZNCWShYisxPYL/wRwdymoT8LjY6NcIOB993HJrVCH/+H6CgQb3SoKG4HVZi0xnKVX4Lmau08Xb+svHjDbbK7YTW1EVCNYEnKe/8p61+XZpNeTCEQ/iUVc9golYk4MTo=
Received: from MW4PR03CA0289.namprd03.prod.outlook.com (2603:10b6:303:b5::24)
 by DM6PR12MB4355.namprd12.prod.outlook.com (2603:10b6:5:2a3::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Tue, 21 Mar
 2023 07:07:14 +0000
Received: from CO1NAM11FT077.eop-nam11.prod.protection.outlook.com
 (2603:10b6:303:b5:cafe::a3) by MW4PR03CA0289.outlook.office365.com
 (2603:10b6:303:b5::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37 via Frontend
 Transport; Tue, 21 Mar 2023 07:07:14 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB04.amd.com; pr=C
Received: from SATLEXMB04.amd.com (165.204.84.17) by
 CO1NAM11FT077.mail.protection.outlook.com (10.13.175.55) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.6222.16 via Frontend Transport; Tue, 21 Mar 2023 07:07:14 +0000
Received: from SATLEXMB06.amd.com (10.181.40.147) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.34; Tue, 21 Mar
 2023 02:07:13 -0500
Received: from SATLEXMB03.amd.com (10.181.40.144) by SATLEXMB06.amd.com
 (10.181.40.147) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.34; Tue, 21 Mar
 2023 02:07:02 -0500
Received: from xsjssw-mmedia2.xilinx.com (10.180.168.240) by
 SATLEXMB03.amd.com (10.181.40.144) with Microsoft SMTP Server id 15.1.2375.34
 via Frontend Transport; Tue, 21 Mar 2023 02:07:01 -0500
From:   Parth Gajjar <parth.gajjar@amd.com>
To:     <robh@kernel.org>, <mripard@kernel.org>, <heiko@sntech.de>
CC:     <git-dev@xilinx.com>, <michal.simek@amd.com>,
        <varunkumar.allagadapa@amd.com>, <vishal.sagar@amd.com>,
        <robh+dt@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Parth Gajjar <parth.gajjar@amd.com>
Subject: [PATCH v2 0/2] arm64: zynqmp: Update MALI 400 interrupt and clock names
Date:   Tue, 21 Mar 2023 00:06:17 -0700
Message-ID: <20230321070619.29440-1-parth.gajjar@amd.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1NAM11FT077:EE_|DM6PR12MB4355:EE_
X-MS-Office365-Filtering-Correlation-Id: bf0f8c72-8232-4727-f4d1-08db29dae618
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MKEUcg/Q5TtHG1iyRPSvyjYe4IvUzLLI1+nqJr4ZbfT0XRZdIuIp0qoJLW47xu5cL4A2GOJ1eo1A0h66EjmYnl1aFm8rLpWFGa5VOlwJOm+vxKe8EIXC9kAz9S8w5eTqjiuFI7itqQDEhejKrP1SIw16XNcMtpTdgIRQBNQ0rVDtU14LwPLx6YmS4IYYDAntNbEa9sJpgZh7HKQSpXoEXo1z4IIrivuWfT7wNqJjfCzQto8AWB8H2GKxYpuzexAfgy7Tn9iWcsir2UlwF9VhymDr53VZ3fXjR/8scidU2OjPkoEYfofqqQ9VAO/XWaEKdcmfbCxVJZOaNqg/LhS+qZmLjJ0pPSIZvza4FHRAYpYogmplPYOWFDOtWPutXKVqq5CqoNHHW1g5qIw7NSeVaQtOfXcwVlhjINKnS57Ra0ZE1RTMzdfRyOK2aZYWVTtqQtmIrnMVHcYpv34kbgrqFB8Kfi5+uElsQLniDU7DXdjzt55iBAA/9t2Bp4JJzLu4p2/En1l5+2kEw91zJLI6ncWXwor3FBKQeRPQfZJriHUeHq2qwJakSg6Vi0Rx1OcXGbJu0A90cNSSdS1VSdSbKqlNGZicmwXmEVXo0In4yG6xTr8DE3hKI1yG+nd/JQJhOmI13IubgUzn0R8kr8afk3oA076g0134TVYKmEAzw6jmcW220AGSL0PqE5YTuNn6GPVVMYdCRydtIs514/XqPCxHTwkAqlXWJcmcXkRhVoI=
X-Forefront-Antispam-Report: CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:SATLEXMB04.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230025)(4636009)(136003)(346002)(396003)(376002)(39860400002)(451199018)(36840700001)(40470700004)(46966006)(86362001)(40460700003)(36756003)(40480700001)(82310400005)(316002)(70586007)(8676002)(54906003)(4326008)(478600001)(110136005)(426003)(70206006)(1076003)(26005)(336012)(2616005)(47076005)(6666004)(186003)(356005)(5660300002)(36860700001)(8936002)(2906002)(44832011)(81166007)(41300700001)(82740400003)(36900700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Mar 2023 07:07:14.1499
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: bf0f8c72-8232-4727-f4d1-08db29dae618
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[SATLEXMB04.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: CO1NAM11FT077.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4355
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_SPF_HELO,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_NONE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Motivation for the commit is to utilize the upstream community
device tree so that the either modified ARM Mali 400 driver
or upstream lima driver can be used.
Added gpu node for zynqmp.
Enabled gpu node for xilinx boards.

v2 change:
- Added gpu node for zynqmp
- Enabled gpu node for xilinx boards

Parth Gajjar (2):
  dt-bindings: gpu: mali-utgard: Add xlnx,zynqmp-mali compatible
  arm64: zynqmp: Add mali-400 gpu node for zynqmp

 .../devicetree/bindings/gpu/arm,mali-utgard.yaml     |  1 +
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
 12 files changed, 52 insertions(+)

-- 
2.25.1

