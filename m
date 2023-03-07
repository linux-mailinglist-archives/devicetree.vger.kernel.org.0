Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 450136ADA41
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 10:24:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230326AbjCGJY1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 04:24:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43260 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229663AbjCGJYZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 04:24:25 -0500
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2043.outbound.protection.outlook.com [40.107.237.43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE4DF16AC0
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 01:24:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T72cv0vv9/kr8AbjdLO7RSacpDYjJ1+jbtYxXQzAzkFMbrRCiLR1c5E9elShLnPLPQtOeLwZrmU+DxMXHWCse94ec6vYbFAG2/S2ajL5BpxGw1yZ5cnH1jWaa8cg5D3ySM02DyyUEQhz5uV44S2xHeJ5iuAsFjckoRC5DwctfkAg+5Uh7E9kh4LlvUQktmVAiXOx8TL+27M4dWfUtvE+RkI7r8UFGwQRdBwlJRJNDJW/7Hb65hDzJB5Xt70fUFLj0mUkpFwBZiUFcJxu+qodKiwx5ivizqZekNIlNhv3M+Yti0nKW7a0uiD+4PMxqVSLJm6PrtlRWHwsa4qtrVfo0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jt6kun4u5Tuc4gWJC4BUUzAztnByuWGvCyDtKdQrI/w=;
 b=a7YrSUR3ckmD9ix8TSMFNs1nRvUAVmPpU4j2Q2DrmrtuKu9Xi+hCbMo0KeEC7/Y+yF1PGqZiRcnEoy0P40KOXELzVE+JFNr86taIN8IkspOKjBwIpbtV+5sOLSJeGeHObULqg/LWwy6Rk0Z2mpwCwQICA0McAtIJ2rjHVjF0hPAukCFHo4nWved2rr0IidbN/SKxdWENPJ4iP/dhxYr+3l9Zir/GOwaqpBGLt5GP6Wz+T31w39mCzyQpC7hdxcAXKknI4EAf8Jzb6gyDtC3OQRYZSAqIw9Hk6I+UqOS8I9pM4Ibyg9eUdN73J+NgRm73TZKIOS2m9EPtoEbcGma0FA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=kernel.org smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jt6kun4u5Tuc4gWJC4BUUzAztnByuWGvCyDtKdQrI/w=;
 b=RtRuyBxf/IGC6whKgTM98XG4vnBiclSPsc9TA68W49KAGwq+YcXn/q3q59o2djCrLgYvkoqxpZULCiajyS8jnEDdH2w4jorTlzfdXEMITeH3ZRalEAXPGkH+Hvx+lwpwMQ+1I/nZuxseJk0xHzDoyI9zTAsjywmqdHqj044xv0w=
Received: from MW4PR04CA0177.namprd04.prod.outlook.com (2603:10b6:303:85::32)
 by DS7PR12MB6168.namprd12.prod.outlook.com (2603:10b6:8:97::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6156.28; Tue, 7 Mar 2023 09:24:07 +0000
Received: from CO1NAM11FT024.eop-nam11.prod.protection.outlook.com
 (2603:10b6:303:85:cafe::6d) by MW4PR04CA0177.outlook.office365.com
 (2603:10b6:303:85::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.29 via Frontend
 Transport; Tue, 7 Mar 2023 09:24:06 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB04.amd.com; pr=C
Received: from SATLEXMB04.amd.com (165.204.84.17) by
 CO1NAM11FT024.mail.protection.outlook.com (10.13.174.162) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.6178.14 via Frontend Transport; Tue, 7 Mar 2023 09:24:06 +0000
Received: from SATLEXMB07.amd.com (10.181.41.45) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.34; Tue, 7 Mar
 2023 03:24:06 -0600
Received: from SATLEXMB03.amd.com (10.181.40.144) by SATLEXMB07.amd.com
 (10.181.41.45) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.34; Tue, 7 Mar
 2023 01:24:04 -0800
Received: from xsjvarunkum50.xilinx.com (10.180.168.240) by SATLEXMB03.amd.com
 (10.181.40.144) with Microsoft SMTP Server id 15.1.2375.34 via Frontend
 Transport; Tue, 7 Mar 2023 03:24:03 -0600
From:   Parth Gajjar <parth.gajjar@amd.com>
To:     <robh@kernel.org>, <mripard@kernel.org>, <heiko@sntech.de>
CC:     <git-dev@xilinx.com>, <michal.simek@amd.com>,
        <varunkumar.allagadapa@amd.com>, <vishal.sagar@amd.com>,
        <robh+dt@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Parth Gajjar <parth.gajjar@amd.com>
Subject: [RESENT PATCH 0/2] arm64: zynqmp: Update MALI 400 interrupt and clock names
Date:   Tue, 7 Mar 2023 01:23:19 -0800
Message-ID: <1678181001-2327-1-git-send-email-parth.gajjar@amd.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Content-Type: text/plain
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1NAM11FT024:EE_|DS7PR12MB6168:EE_
X-MS-Office365-Filtering-Correlation-Id: d5654348-8fad-4e7e-210f-08db1eedb347
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oNrYnLCKIDRYZ/2N3PtThF1vt0D9bCcxU12kjt12QyX2VhOTYSRIzdUcYy9mz7MWlentVZfjSNhmXW8HF9NfFSPa7gJJHPrOf4bwkxUAGhkZh0Q/zhBSjh9/OO/l3q7BnCExtAfRCSPPtJdW05AnppTWJ0diE7ZFGYLcUeA6yj9hylPbJeFccLrWbZPxptbcvKxERov24ExqhsxAsrwp2b5GW6XTsMeF6egAFUTtdJeL/tXbmSOSWv37Y86MmwOxGytXE7mE66DTpp8/hTKtm3sf0TUU3zqMvw++u5MAoLNJm16fDPufFAPUfTu3iUzVu59/ODormlJacS/tBkvvDzOQLdjUI4GzkrJMA71XnoAtu4qHT9ioSSzWolxJrNfK8C62PYiRiaexdREiH8664iQ/Q6o90E2YWVY+QYsARZ5wVo9q7OGTDm3FCxKy0nmtqe3gibipL6CoEJQV2XEVblzkIILDqU3V+moIVPZdtMf+t4owpKHAqfE0KdXEC0Ey6H9SwJrKbH/jnlQpV/tgD7H0cH+nUdrJFDY5E32RHTMC6LVB6+vd+MTRnqzeIbsvs2FPTDnBIHI8AQdASG7v54OoVZb8R72t5oGAJ71EkArQ2JSnt2DA4Up4BIH1rMPcQYgjKExMjcpNA+8AYtW1KenZL26hwu8ZnQ+VsxlZ10Sj3GE6Q5GfQEuOdHSm88sNVKpQDPwA+KLAD6wKtAcMNCxzqg6rifLr5YbqmmZACf4=
X-Forefront-Antispam-Report: CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:SATLEXMB04.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230025)(4636009)(39860400002)(396003)(136003)(346002)(376002)(451199018)(36840700001)(46966006)(40470700004)(83380400001)(47076005)(36860700001)(426003)(36756003)(40460700003)(82740400003)(2906002)(15650500001)(81166007)(8936002)(478600001)(5660300002)(356005)(40480700001)(86362001)(82310400005)(336012)(2616005)(186003)(26005)(6666004)(70206006)(70586007)(4744005)(8676002)(316002)(4326008)(44832011)(54906003)(41300700001)(110136005)(36900700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2023 09:24:06.5360
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d5654348-8fad-4e7e-210f-08db1eedb347
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[SATLEXMB04.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: CO1NAM11FT024.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR12MB6168
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

Parth Gajjar (2):
  arm64: zynqmp: Update MALI 400 interrupt and clock names
  dt-bindings: gpu: mali-utgard: Add xlnx,zynqmp-mali compatible

 Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml | 1 +
 arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi             | 2 +-
 arch/arm64/boot/dts/xilinx/zynqmp.dtsi                     | 6 +++---
 3 files changed, 5 insertions(+), 4 deletions(-)

-- 
2.17.1

