Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5414F6040A7
	for <lists+devicetree@lfdr.de>; Wed, 19 Oct 2022 12:08:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231490AbiJSKId (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Oct 2022 06:08:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49712 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233223AbiJSKIN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Oct 2022 06:08:13 -0400
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (mail-sn1anam02on20613.outbound.protection.outlook.com [IPv6:2a01:111:f400:7ea9::613])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8555A11D98E
        for <devicetree@vger.kernel.org>; Wed, 19 Oct 2022 02:46:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UZXjjdmYtIswghK8JmyHmGmUUYcrVoTsMohNVcmL0y5yqwW2ICLTejHh1N4ifXVkktCIWNQXLD638nk1FCnwmaizGk2aSWJATaSEg7F521CoQqITK8rYimaqBAdy/G2cBS6nnZ0NVAMzvFeKh79dWw/1rEJtjM/7N5gm59li14FN4Kf8sRqUQ7UJX096gdZJ1kUlZWyUCOBH5pxWW44kgEQiYm2JjvYusEH3++VPTAg75GycW9dkKGBJc2PN74RHzy7kqcT+/WtnfU0Zqnb4ci7zEANcRLifeLvqlX8UORgy92ANcb0+cflBilSEwVhjF9iiQGW9JZQuUQrQUI9B6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xzUOmnoqE1iX4MGCejJbW0ZUiOx0TsgZySLBtw25DzM=;
 b=baraXNq23eb3mrk7UOBSeu65/lVUB7uCryj4OnbZNmzdc42cRwcAZUSWs17aujVLH8JL8COEWleLKlI6GYanuKrOLBrhKpt9CB5azXzcbqbBA7+j8Szqxf4BazzfbMCFcOdsLQQhlPktldFSCGKJVycIE5UhF7C680utoP6VYtCvMVc8AgKHy3T8/2ZjWH3oqcnH+rB6dntOThTnHB7wCD4y+DBt8tkov1xATged8WSqBh1Uof6NBrXtNccU++rJF762UcKfkq2lld//E+Pg4btGVKcvvTTgsspkMuXqNjcZz5rpFMTsBTWZS5TVqZxougcNNYvnahdty3sSV9Pfvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=lists.infradead.org smtp.mailfrom=amd.com;
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=amd.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xzUOmnoqE1iX4MGCejJbW0ZUiOx0TsgZySLBtw25DzM=;
 b=cqIxZmT9WewxsJWehXKEjkvaMrXnX/BT0agLVKypU5XUeD2xjV2B689irLjqiM3GqzvGRRXmOnHpClChZdBBTMg+S5Jpi0NGDxB0BFBC6W8hBRb3QIVby/KfTK6sFOaHXHpvLeBXpQmJM1m6NTyC4oyQIsxWI1uzc02/ClRNEAo=
Received: from BN9PR03CA0342.namprd03.prod.outlook.com (2603:10b6:408:f6::17)
 by BY5PR12MB4162.namprd12.prod.outlook.com (2603:10b6:a03:201::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.34; Wed, 19 Oct
 2022 09:17:20 +0000
Received: from BN8NAM11FT080.eop-nam11.prod.protection.outlook.com
 (2603:10b6:408:f6:cafe::cc) by BN9PR03CA0342.outlook.office365.com
 (2603:10b6:408:f6::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.34 via Frontend
 Transport; Wed, 19 Oct 2022 09:17:20 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB03.amd.com; pr=C
Received: from SATLEXMB03.amd.com (165.204.84.17) by
 BN8NAM11FT080.mail.protection.outlook.com (10.13.176.82) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.5746.16 via Frontend Transport; Wed, 19 Oct 2022 09:17:19 +0000
Received: from SATLEXMB07.amd.com (10.181.41.45) by SATLEXMB03.amd.com
 (10.181.40.144) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Wed, 19 Oct
 2022 04:17:19 -0500
Received: from SATLEXMB04.amd.com (10.181.40.145) by SATLEXMB07.amd.com
 (10.181.41.45) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Wed, 19 Oct
 2022 02:17:18 -0700
Received: from xhdshubhraj40.xilinx.com (10.180.168.240) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server id 15.1.2375.31 via Frontend
 Transport; Wed, 19 Oct 2022 04:17:14 -0500
From:   Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
To:     <linux-arm-kernel@lists.infradead.org>
CC:     <git@amd.com>, <devicetree@vger.kernel.org>, <will@kernel.org>,
        <mark.rutland@arm.com>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <michal.simek@xilinx.com>
Subject: [PATCH v1 0/2] perf: Add xilinx APM support
Date:   Wed, 19 Oct 2022 14:47:11 +0530
Message-ID: <20221019091713.9285-1-shubhrajyoti.datta@amd.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8NAM11FT080:EE_|BY5PR12MB4162:EE_
X-MS-Office365-Filtering-Correlation-Id: 06cc7f4e-2360-413e-58d7-08dab1b2b973
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aXZ0E2H92X+2bek1fc3aUiQcmcI8RdYYtHAfz7vQ/rZgFxJr9jmr+JDue1Ks6UK3YgEGpF4Oc0Gg4p+py8rxjqQzoEdm+rTYVtxLhEMD3wnQKzgmq5tjHjtI7olXHahlu+k7eTgKGcZPdUYH6ihRoYj8/oMA06pYrhH2fDiDAw55sGcyo3fCL567KsTTB057WP74ykUd332WaUDEYECRn2bhkg6vj8BOpWNNkERg6j2xvsheGxvhBVsbohJBGvVYlT/fDRo/LT0F48u7L8Zvfmc2wbnnRhU0BqiYGy2wJfuKqCjkhipCBLc0p+Ck0FuVzfBYor2BJQa6jL7eLp74mMTfD6g8kSUhdVfx+gIlMgriTM0lsSy1vIOwQsY1GuJ3TwhV5clRj0F79KE9qOrCnZ0AhzQbNtU5RUcIPFvNSrFoyiovJQhunsLF72ATwa8f06V1omfzVWM2xTuIQbMqyCMKlusaQcgFvlKoPsUinuMwe4U5znhOFU1wrMUzGp5gBocQkj7j2wSGX/O4/wFt6lEsHAh1kqLaeLv/j8WC64up0cTTZtRGcU08FcnNhW7aLUexnpRugC+5tnzxkNA6jrbfNVBwZ3Sn3F/gJfqaOUrCesZ3UcXpGMbIJJ9r4bzzPH3lRkMWSpm1Nu3zDg1ugcLCjwsVYqVHlqx32sLosK7FHRQDU7Cunw+3Ps72/L0+EBn+x1YHq0Okcd3YoPTu+rDBi+7zVuUYfdMicGm3NfkY+th36eGdv32Zl2txvkso1wdBDtZgwg/Od4JGyhidQ7quZDZTRdrH1P8/VZwB5t+xd7ESwtqcbjqL8Mc1SE4yVVdJ0UTMQwAKOS0AXbq/zw==
X-Forefront-Antispam-Report: CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:SATLEXMB03.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(136003)(396003)(376002)(346002)(451199015)(36840700001)(46966006)(40470700004)(5660300002)(4326008)(8676002)(8936002)(70586007)(70206006)(2906002)(44832011)(54906003)(40480700001)(6916009)(41300700001)(316002)(81166007)(356005)(83380400001)(82740400003)(36860700001)(6666004)(107886003)(478600001)(86362001)(966005)(26005)(426003)(47076005)(336012)(186003)(1076003)(2616005)(82310400005)(40460700003)(36756003)(36900700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Oct 2022 09:17:19.9517
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 06cc7f4e-2360-413e-58d7-08dab1b2b973
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[SATLEXMB03.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: BN8NAM11FT080.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB4162
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


The programmable AXI performance monitors (APM) collect real-time
transaction metrics at multiple points on the PS AXI interconnect
to help system software profile real-time activity.
In our platform we have it in PL and also some of the hardened
instances in PS.

Perf is a profiler tool for Linux 2.6+ based systems that abstracts
away CPU hardware differences in Linux performance measurements and
presents a simple commandline interface.

Perf is based on the perf_events interface exported by recent versions of
the Linux kernel. Therefore we register to the framework for the APM.

The IP has support for multiple slots and ranges that we are supporting
by extending the sysfs interface.

Datasheet:
https://docs.xilinx.com/v/u/en-US/pg037_axi_perf_mon
Also the Hardened instances described in
AXI Performance Monitor of ug1085.


Changes since RFC:
 - Use boolean for the values xlnx,enable-profile , xlnx,enable-trace
and xlnx,enable-event-count
- Update the file name
- use generic node name pmu
- Fix a warn

Shubhrajyoti Datta (2):
  dt-bindings: Add the binding doc for xilinx APM
  perf: Add xilinx APM support

 .../bindings/perf/xlnx,axi-perf-monitor.yaml  | 133 +++++
 drivers/perf/Kconfig                          |  11 +
 drivers/perf/Makefile                         |   1 +
 drivers/perf/xilinx_apm.c                     | 517 ++++++++++++++++++
 4 files changed, 662 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/perf/xlnx,axi-perf-monitor.yaml
 create mode 100644 drivers/perf/xilinx_apm.c

-- 
2.17.1

