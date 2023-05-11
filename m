Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 888EE6FF482
	for <lists+devicetree@lfdr.de>; Thu, 11 May 2023 16:35:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238567AbjEKOf0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 May 2023 10:35:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238692AbjEKOe7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 May 2023 10:34:59 -0400
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2041.outbound.protection.outlook.com [40.107.236.41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A84C1209E
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 07:34:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SeZGF/4cYfnUXx0Eb3GsBeCeubPdmKOuqrJ3Y0bcsPzZgr+xXYRDkaSaMjltgjBgypNLADrah8H1Mc3d33hKT/aN0wWWBxHu3ys5fm0XNH7y8AAw/hAAyRnTe9SDkboEdfnhf8Q5UrZTACRLbgM2cEyvERhpOcExZsNvh6qciCyOSqmI8H5rTfZF0OxA5h+7RDt8qPU1mtRWkxBfTS2NR2Cbqa7NF6QSibKjL4dvpBEjNT1aouTkGMYNvn92Fx12R7umvS6Ufr7q4HYg0x9FU9WqBzK19+j/wp+rFn8ZJvxEDViSQ5E42/3/SSHGJGFYLM9sqeEIRMynhCULTUf5uA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mU2CuVq6MDHJonga6siyLjRuqXvLsYDKvDhNdwTCiDM=;
 b=I4BplGmmXYG5MQL/JZuayu2UzPD6t+XoKH/g+sPnZIp9zeSXH1VnhKsYd7uLJfTARe6hRS5I4dKg8T7n9yHNNfAAG5mVV38a28w+CGsC4DT9cbtLAWuJSGLCE7AS5h1YmiwoxMcfBiHqZRrqMl8qJHwGhER3TFYx8TUq8YnesrDP8P/p2njr4df2TlME/2wDdwAGqYFVfJWPoY8RuNoBTEE6xhg85LFss4ERMheZtK28UeFCZtiSMmlZxuT5WpB0Na2ckIlNOsgWykyS1eEovqMMouJ+k4PKPWUU5rKvQvNGFYU/cYbv213qP8sNACBP6/lbW9HQ63NXNV2OzsmVfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=lists.denx.de smtp.mailfrom=amd.com;
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=amd.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mU2CuVq6MDHJonga6siyLjRuqXvLsYDKvDhNdwTCiDM=;
 b=BoUVttv9yf0SkpOjispXHQ4IXyF0LzVyYR4aHfA73u6Osz126P062SdxtI7OiR15NiCob1uW2bv7bWuRtGGZML+Mxce/xI2U5WdwcqNNtwNW5h0NPWBqIx0w+mA8n3Ob9N3gwNUtrMgAKG41nwkh7kNy6hpHz2OrV6pu/l4WKlc=
Received: from DM5PR08CA0044.namprd08.prod.outlook.com (2603:10b6:4:60::33) by
 CO6PR12MB5476.namprd12.prod.outlook.com (2603:10b6:303:138::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.18; Thu, 11 May
 2023 14:33:47 +0000
Received: from DM6NAM11FT089.eop-nam11.prod.protection.outlook.com
 (2603:10b6:4:60:cafe::be) by DM5PR08CA0044.outlook.office365.com
 (2603:10b6:4:60::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.22 via Frontend
 Transport; Thu, 11 May 2023 14:33:47 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB04.amd.com; pr=C
Received: from SATLEXMB04.amd.com (165.204.84.17) by
 DM6NAM11FT089.mail.protection.outlook.com (10.13.173.82) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.6387.20 via Frontend Transport; Thu, 11 May 2023 14:33:46 +0000
Received: from localhost (10.180.168.240) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.34; Thu, 11 May
 2023 09:33:44 -0500
From:   Michal Simek <michal.simek@amd.com>
To:     <u-boot@lists.denx.de>, <git@xilinx.com>,
        Simon Glass <sjg@chromium.org>, <devicetree@vger.kernel.org>
CC:     Algapally Santosh Sagar <santoshsagar.algapally@amd.com>,
        Michal Simek <michal.simek@amd.com>
Subject: [PATCH] dt-bindings: u-boot: Add variables for bootscript location
Date:   Thu, 11 May 2023 16:33:19 +0200
Message-ID: <ca0715934133dbce6a5a3fd91483e0af92ea8ac6.1683815597.git.michal.simek@amd.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: SATLEXMB03.amd.com (10.181.40.144) To SATLEXMB04.amd.com
 (10.181.40.145)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6NAM11FT089:EE_|CO6PR12MB5476:EE_
X-MS-Office365-Filtering-Correlation-Id: c6d094d9-b6ac-42ed-63f0-08db522cba72
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rbb5JB8VBOp9s19ZlIFunC92mh1v9RngLPd5b+b9A4kabjvBfudnP3a3mxlKU1VEMvSVmUpTwdwQuVaY9knOeHFb8bSoAGopPzDNYbP+aKBQLO/RMN092RoXW+ugNnpqTGlWLxOqCZb6MthN+6d995opFOP0fO3T8z88Jo/aIoji/L6QZ8+BJvS2kShICSkQaOEYyGC0FmiOd2c6pRiG9IxDbWY/VkyRTecZknlhWlB43M3vn5KpLBI+1P0+urfsxdbE2xogXi5vjV8CjMjl5Yq57nDj3/nqZHlcSton68ey5qnIuUGf7tXuz9JG5tza8PDC5il0vxvqmQXHtXwqLgo6bDJRWykEZGrSw58WvDdwj3FhWnV1GJcUx0Cm0EEAY2ankrvxQV/F6FRyJXCljgsPxb1BwfaiMq3PSAD6HVFGzvweBQnZAhf50dIll02BW8lD1C01uDghs51C1M9xH84bJ9PvmSa1VBGQ8nUbmdzc4zOS8nxRS2vRpEQV6AE6eDc7EFR+hpNBJQp2FBsSZwjr5bgsyO5pBADDHluCcvtaq9n1txROBkCvRpb5x/YPnhiVvMMUbsgaIs2HJ4cl1ilpj4UnVp1CT6w3ZZ6m/MoQ3tbjUDMk2d6gBVnbysrCU0Ejl10hBRlj48T6347XvvFr/1iYe7cttYFgiatK1DY3ffPZxp3MU43lDFDF2AuSc3o0M/8CZc2oQ2cXfEVLrq/OTBOnovt8WpKLC1VmAdkFB8EY9qfcDAOY36IqJdd4DBqcbjOSULYX/y8qGQ2FAA==
X-Forefront-Antispam-Report: CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:SATLEXMB04.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230028)(4636009)(376002)(346002)(396003)(39860400002)(136003)(451199021)(36840700001)(46966006)(40470700004)(426003)(336012)(2616005)(40460700003)(16526019)(47076005)(83380400001)(186003)(2906002)(82310400005)(36860700001)(36756003)(86362001)(356005)(81166007)(82740400003)(40480700001)(8936002)(5660300002)(8676002)(44832011)(70206006)(4326008)(70586007)(6666004)(478600001)(41300700001)(316002)(54906003)(26005)(110136005)(36900700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2023 14:33:46.2373
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c6d094d9-b6ac-42ed-63f0-08db522cba72
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[SATLEXMB04.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT089.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR12MB5476
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_SPF_HELO,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Algapally Santosh Sagar <santoshsagar.algapally@amd.com>

Add bootscr-address and offset-from-ram-start properties to help in easier
picking of boot script file when automated flows are used.

The bootscr-address holds the full 64 bit address of the bootscript
file.

The bootscr-offset-from-ram-start holds the offset address of the
bootscript file from the start of the ram base in systems with RAM
detection.

Signed-off-by: Algapally Santosh Sagar <santoshsagar.algapally@amd.com>
Signed-off-by: Michal Simek <michal.simek@amd.com>
---

The patch targets dtschema repository.

We would like to get opinion about option names before sending PR via
github.

---
 dtschema/schemas/options/u-boot.yaml | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/dtschema/schemas/options/u-boot.yaml b/dtschema/schemas/options/u-boot.yaml
index 71dfda71e4e2..565b54a424ae 100644
--- a/dtschema/schemas/options/u-boot.yaml
+++ b/dtschema/schemas/options/u-boot.yaml
@@ -71,6 +71,21 @@ properties:
       2: use simplified command line (e.g. avoid hush)
       3... reserved
 
+  bootscr-address:
+    $ref: types.yaml#/definitions/uint64
+    default: 0x0
+    description:
+      This property holds the full address of the boot script file. This helps in
+      making automated flows easier by fetching address directly from DT.
+
+  bootscr-offset-from-ram-start:
+    $ref: types.yaml#/definitions/uint64
+    default: 0x0
+    description:
+      This property holds the boot script file offset from start of the ram base
+      address. This helps in making automated flows easier by fetching address
+      directly from DT.
+
   silent-console:
     $ref: /schemas/types.yaml#/definitions/uint32
     default: 0
@@ -101,6 +116,8 @@ examples:
         bootcmd = "vboot go auto";
         bootdelay-sec = <(-1)>;
         bootsecure = <1>;
+        bootscr-address = <0x1000>;
+        bootscr-offset-from-ram-start = <0x2000>;
         silent-console = <1>;
       };
     };
-- 
2.36.1

