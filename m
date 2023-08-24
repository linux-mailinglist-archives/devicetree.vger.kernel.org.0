Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC590787630
	for <lists+devicetree@lfdr.de>; Thu, 24 Aug 2023 18:57:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242758AbjHXQ44 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Aug 2023 12:56:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242847AbjHXQ4v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Aug 2023 12:56:51 -0400
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2062.outbound.protection.outlook.com [40.107.220.62])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E37371989
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 09:56:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hRDm1g/hRpHITkEpPwLfX2o1z2bGqhcBDy3D2EHQJYk7bbRGxlNM0FjEGHPAAtLQlu3dQJXR7QvXwfh8quFdjnNrzBKsmBJ/OZ+8nkIgSlbZvpEUb0toDj/tKNo1jzyYfT4HjI357+fig/3sLQQNfWO+jf9Vv5DSxCveUz43kPSgMVnV99TbI9c6Goud/NSDgEev4IOtw3d3FRKhBnDqzKawPTfLnJbd+5SlQ6MhHe1C67dVLY9KtI/ZnW4wOlg1wmYIjr7brSbfQwIlVr8Xz8L9/Ff0IbsduZoBlvhYFkM9Y6uHco97kmgUrqTBe7G98j13c7KzgCkFoP7eBZEkJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9YaBwu8hE1ze4Sc4G5VM2J6Lnz7TnZyIeS2MqNLHdHQ=;
 b=EpjuPhrEXB1LVAXQW8+oPWcW0euFUeMydouXcfAYi8np/GMgMFk0J1o65f3pE87tN5Flv4683Q6UKUgz0KWi1+8gJX/3BLcc/DssculDehhaqMaVu85ny+jHC63eVPhourGEPPEu9qTR6XmtngFKg2blM3JBEIEWZb5SJhbr0GhSmZO4kswZbAEbqhptVOWCq9QwbAue/J5SskzfS6oyV9x8pOMFfonvsBkB4Pw3c8jEE8mNF3YbFO30DtGomo/+r6q8snc6TBQSn1te1UhdJHYYy74IZrB2kmmKxZtT+F2pCdczSFNmu3/DSC6l/CLBfqEF3z2VSCaoaRChy4vx+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=kernel.org smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9YaBwu8hE1ze4Sc4G5VM2J6Lnz7TnZyIeS2MqNLHdHQ=;
 b=Ci4UAZDxk8RC8zxil6AHh56mebN4zv0xsyR+nEci7MWzcdRyrBOA5USjR8nLC/msDUsTmVuR7zaAIPebTj17B/MV8Wf8rP25eaEYYOhjMmsTh4A/CMcvW57WAtCGRKBwQR150PGtvs4OhidSVYgeoMSCD9963lw3I73Qqv2zyMI=
Received: from SJ0PR03CA0122.namprd03.prod.outlook.com (2603:10b6:a03:33c::7)
 by DM4PR12MB6350.namprd12.prod.outlook.com (2603:10b6:8:a3::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 16:56:47 +0000
Received: from CO1PEPF000042AE.namprd03.prod.outlook.com
 (2603:10b6:a03:33c:cafe::37) by SJ0PR03CA0122.outlook.office365.com
 (2603:10b6:a03:33c::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.20 via Frontend
 Transport; Thu, 24 Aug 2023 16:56:47 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB04.amd.com; pr=C
Received: from SATLEXMB04.amd.com (165.204.84.17) by
 CO1PEPF000042AE.mail.protection.outlook.com (10.167.243.43) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.6699.15 via Frontend Transport; Thu, 24 Aug 2023 16:56:46 +0000
Received: from SATLEXMB07.amd.com (10.181.41.45) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Thu, 24 Aug
 2023 11:56:44 -0500
Received: from SATLEXMB04.amd.com (10.181.40.145) by SATLEXMB07.amd.com
 (10.181.41.45) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Thu, 24 Aug
 2023 09:56:44 -0700
Received: from xsjlizhih40.xilinx.com (10.180.168.240) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server id 15.1.2507.27 via Frontend
 Transport; Thu, 24 Aug 2023 11:56:44 -0500
From:   Lizhi Hou <lizhi.hou@amd.com>
To:     <robh+dt@kernel.org>
CC:     Lizhi Hou <lizhi.hou@amd.com>, <devicetree@vger.kernel.org>,
        <sonal.santan@amd.com>
Subject: [PATCH 1/1] of: unittest: pci_dt_testdrv: Fix compile error
Date:   Thu, 24 Aug 2023 09:56:19 -0700
Message-ID: <1692896179-73192-1-git-send-email-lizhi.hou@amd.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
Content-Type: text/plain
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PEPF000042AE:EE_|DM4PR12MB6350:EE_
X-MS-Office365-Filtering-Correlation-Id: c6da52c6-27b8-4185-6719-08dba4c31a2e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: F0M7QhXOsPxZ+nvbSqkfJs1q7+FD7DJSqmkfe5SJQHBq3z6EhN2FEZlvOr6gl7ZSXofCZB9tSPblewVwjkV6OJ26TjSQZvcruJwD4TfMLLPtZFml0tT77kgEl6P04vRufOjldLFKDSn9zidWVrszQ/gqCcQqlUMhBWtPr/zJWflmWHSrla/k/LDvh5qqXHnyVh3n+/gFeH2tWAO3LKxyV72pyzZmWsLMfiwmoyAJA0Otf7j6/N3iivyOil3oHmmNaJa91pFi/w/JT+NXBK4EU8tfXq/yARKiBwUHY5OLM5KL+x15VuIbLodfslQGIBEx2LhutXyoJtOyO56wt6T9gRfliGYjSEPTekB6T24W6CD5m3+WznGPtQH3tzGUvTP1MBsUUW5H9nJw+ZmiXzbn3AwBM3R3qDOen2/GkhJob4JH+Zn4tQheLsYNV/fCTcdaComx8xN5XziDCOh7FR4Hc15dewQVA8K76vCCF9z4WgjRWXnuAQ9fecq3CRyn4JYinGENcq/79PllNZkK97HURkm7em1hdQvUgiWQVnL0z4ogw7Ix3H0Tx3nQ4kcpMfp5L8b0MleVFWg+t6cSWoOVjNpDYE9a8+zxlCp6Z2B4Xb/rlYHY6mQ9DUw0RZnv/2aco3M67cx+GgDk8PwSlPLCmCPYh1WFpIZU23hpB6tVkWx16X+90fLLDh3nmVr7ROhxT3ZIfZqd+WXRFDIA4dbqQrM9xbLCUILzwKlJ4Ar61h1k7y070HlGln6u1wKP45W5zbhEKO9l/Qj61jOUjFWBGQ==
X-Forefront-Antispam-Report: CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:SATLEXMB04.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230031)(4636009)(136003)(396003)(346002)(376002)(39860400002)(1800799009)(82310400011)(186009)(451199024)(40470700004)(46966006)(36840700001)(2616005)(40460700003)(4326008)(8676002)(8936002)(83380400001)(5660300002)(4744005)(426003)(336012)(36756003)(36860700001)(47076005)(44832011)(40480700001)(26005)(82740400003)(6666004)(81166007)(70206006)(70586007)(54906003)(316002)(478600001)(966005)(356005)(41300700001)(2906002)(86362001)(36900700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2023 16:56:46.6165
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c6da52c6-27b8-4185-6719-08dba4c31a2e
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[SATLEXMB04.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: CO1PEPF000042AE.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB6350
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_SPF_HELO,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_NONE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

pci_dt_testdrv depends on both PCI_DYNAMIC_OF_NODES and OF_OVERLAY.
Add #if check for OF_OVERLAY.

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202308241954.oRNfVqmB-lkp@intel.com/
Fixes: 26409dd04589 ("of: unittest: Add pci_dt_testdrv pci driver")
Signed-off-by: Lizhi Hou <lizhi.hou@amd.com>
---
 drivers/of/unittest.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/unittest.c b/drivers/of/unittest.c
index fef46a9a5e81..beb75d3b33f8 100644
--- a/drivers/of/unittest.c
+++ b/drivers/of/unittest.c
@@ -3732,7 +3732,7 @@ static inline __init void of_unittest_overlay_high_level(void) {}
 
 #endif
 
-#ifdef CONFIG_PCI_DYNAMIC_OF_NODES
+#if defined(CONFIG_PCI_DYNAMIC_OF_NODES) && defined(CONFIG_OF_OVERLAY)
 
 static int of_unittest_pci_dev_num;
 static int of_unittest_pci_child_num;
-- 
2.34.1

