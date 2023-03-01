Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 022036A6BA0
	for <lists+devicetree@lfdr.de>; Wed,  1 Mar 2023 12:23:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229546AbjCALXe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Mar 2023 06:23:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229676AbjCALXc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Mar 2023 06:23:32 -0500
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (mail-mw2nam04on2066.outbound.protection.outlook.com [40.107.101.66])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 062A61E9D0
        for <devicetree@vger.kernel.org>; Wed,  1 Mar 2023 03:23:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YJLUfKMKqYCwA+N4xxus48tnuR81GYxW3SsP2jHhmOt4oBS4wayg2nqW5T/EI2jhHYjGmojLRifuy5s13A+vuZcJxkkHlHqmZeBVRMwZzBnFtq+ycEyn92rbpd+LtqeCldJEcq1qFFa7cOIqfFsQp2r3P6p52Pj+ccdWNpwbWtBcl+mPqL7+dCyG+ydENpZgc5eKGKTegyveGCZYo1VWCFW+b08XO/At1ObTrfNops5Zx3WJfcaY30Zb/JhL7c3KWRoPVVTIz7f/X3vNQysETfaU7WuP3h+k1Fvyv4TBbmvVLYUFzUV/OIilgojBH7oU/co4SgHc+NMMVpq4PeLIfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SGU+5tYx/Q1ETppAAz8dZHr3OZh0OggPJMU6ek11oe8=;
 b=IwDjlzJ+75EQK+icYAcmgJQopTi8kXNXFF4DEpAGcbEya61eWYyCAbvE5gFIKySstx84Hnl+Lu+hOFOiggkwOleppVlP/ztYbLw4eeKva0cNQKZRA7cOXZhZ0pnjSyo+Nl99AQiAw7BswHBqcG83/PAFWIo1EV2Cd3BlOI0TFgN97ing0m7YcSLIG7GWCrzC1GdXWkT5Omrtm0ykjzoRjfe8gAtwlgABOA/5xiFf8izJEDW5fb0dGW1S5AuLNUyYNvKX9g36Wc7fk5eBjkWzKLpohEsLdg3kFC15mKeUs95akjUCGf46XpZDA63l7Exo5pMN6cC2cxun41Zkp18BRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 149.199.62.198) smtp.rcpttodomain=kernel.org smtp.mailfrom=amd.com;
 dmarc=fail (p=quarantine sp=quarantine pct=100) action=quarantine
 header.from=amd.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SGU+5tYx/Q1ETppAAz8dZHr3OZh0OggPJMU6ek11oe8=;
 b=ZvIvShqs/YlbfaleBy/rtBAtTdg5ZKMmCFI8xk7RkzSkv2DJhCrXwj7e9UfcVYLIR/Ti2851+PM4YztkK+DFgAdVQeWuejt5HmOou1e4MaVmFC7GVxW6jQZqpJGIkb4g6JHpJI/HKX4ykLv6YOMltYMhMrzOWTynTbD5/auJHjw=
Received: from BN6PR17CA0025.namprd17.prod.outlook.com (2603:10b6:405:75::14)
 by DM6PR02MB6876.namprd02.prod.outlook.com (2603:10b6:5:22c::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.18; Wed, 1 Mar
 2023 11:23:27 +0000
Received: from BN1NAM02FT017.eop-nam02.prod.protection.outlook.com
 (2603:10b6:405:75:cafe::a7) by BN6PR17CA0025.outlook.office365.com
 (2603:10b6:405:75::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.18 via Frontend
 Transport; Wed, 1 Mar 2023 11:23:27 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is
 149.199.62.198) smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=amd.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 amd.com discourages use of 149.199.62.198 as permitted sender)
Received: from xsj-pvapexch01.xlnx.xilinx.com (149.199.62.198) by
 BN1NAM02FT017.mail.protection.outlook.com (10.13.2.134) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.6156.18 via Frontend Transport; Wed, 1 Mar 2023 11:23:27 +0000
Received: from xsj-pvapexch02.xlnx.xilinx.com (172.19.86.41) by
 xsj-pvapexch01.xlnx.xilinx.com (172.19.86.40) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 1 Mar 2023 03:23:24 -0800
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
        id 1pXKYO-0009Mo-2C; Wed, 01 Mar 2023 03:23:24 -0800
From:   Parth Gajjar <parth.gajjar@amd.com>
To:     <robh@kernel.org>, <mripard@kernel.org>, <heiko@sntech.de>
CC:     <git-dev@xilinx.com>, <michal.simek@amd.com>,
        <varunkumar.allagadapa@amd.com>, <vishal.sagar@amd.com>,
        <robh+dt@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Parth Gajjar <parth.gajjar@amd.com>
Subject: [PATCH 2/2] dt-bindings: gpu: mali-utgard: Add xlnx,zynqmp-mali compatible
Date:   Wed, 1 Mar 2023 03:23:04 -0800
Message-ID: <20230301112304.24107-3-parth.gajjar@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230301112304.24107-1-parth.gajjar@amd.com>
References: <20230301112304.24107-1-parth.gajjar@amd.com>
MIME-Version: 1.0
Content-Type: text/plain
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN1NAM02FT017:EE_|DM6PR02MB6876:EE_
X-MS-Office365-Filtering-Correlation-Id: 0f16d427-4ffe-46f5-4bb5-08db1a4760d7
X-MS-Exchange-SenderADCheck: 2
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TND9Ye1VJiEmMqkf6vpCdHRsBfcBkEklDOFKU4gqCZMwmFvkxSSp9Fe4lfuk5AZ2vM1p9vXbYEgly/ZpIp7xf9IaOm8M03IlDxAEkZkofgN8y6GI7+viBE4Qw60nci5goWG8UaE5vkUNnmb7+HQOMOdETIhF5bVFhrYBpLzNrgHEdSwhHnwH58FTMJzeb75tK9L9xz+3Tr6ufrOSRuHue5D0/dTpbd36ZsUqlmdIggUTJmS40YwvqgNcuhRFsr4GhsHOHwQ6v/15bGuH9IL4h3OvmRd964OyGbrvs3S1vdfVsv9+kOpzKDxuLJFaYeNJXNpxlbgun+9BxmSTDQwQAnUHXMVsmIGAEldecgGXg9h4PmE31qrQnyZh6edyePRR0KrBs8/Qfghy3BGitiK1sOREH4W5D8LMXwBSO+jyORuEqB2+MmO7k3h6k2tLEwab71O0D4ornqX3kIeQ6Dd98YBfldowEWF2O0PwwFUdouO30UZqh/eDgPPR/y1br7lQO2dFGdF5vxGrkxD4DrZT+CoqS/NjovW6tAsR7TotTWK0NeskgXASQ7zBtH/8sfI3JkaCb2FORp9xsaC4MUwhEd67fXCjF5bj9reIwo6od2mskYrWb7i4+XiLgNZaI+FGjHl3pYz9bk5rQxq7PXK/QewCugSYUHrZxJ1jsCpk7NwQqz6S6rJHgCykvDqcsToRhQdgK4uMJBqkWctwpDhDHQ==
X-Forefront-Antispam-Report: CIP:149.199.62.198;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:xsj-pvapexch01.xlnx.xilinx.com;PTR:unknown-62-198.xilinx.com;CAT:NONE;SFS:(13230025)(136003)(396003)(346002)(376002)(39860400002)(451199018)(46966006)(40470700004)(70206006)(70586007)(82740400003)(8676002)(7636003)(8936002)(4326008)(7416002)(5660300002)(44832011)(4744005)(82310400005)(2906002)(356005)(41300700001)(336012)(2616005)(54906003)(9786002)(498600001)(36756003)(40460700003)(86362001)(40480700001)(47076005)(1076003)(6666004)(110136005)(316002)(35950700001)(26005);DIR:OUT;SFP:1101;
X-OriginatorOrg: xilinx.onmicrosoft.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Mar 2023 11:23:27.1061
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f16d427-4ffe-46f5-4bb5-08db1a4760d7
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c;Ip=[149.199.62.198];Helo=[xsj-pvapexch01.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-AuthSource: BN1NAM02FT017.eop-nam02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB6876
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
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

