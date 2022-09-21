Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 13C5A5BF89B
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 10:06:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229977AbiIUIGq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 04:06:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229932AbiIUIGp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 04:06:45 -0400
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (mail-sn1anam02on2079.outbound.protection.outlook.com [40.107.96.79])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A12C27859C
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 01:06:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TIh1NXoTTiCQ790wW68d+mBVYDAwAEfWewk8n7/jZ4Hk6qPXt0CHlxTe4Uo8mqnUKMA7B49Dr2I+FfV1aD42mmjtlyvCGdlcy75vhTsK6+3zaqZQwQgmmuvux4AVFCEPCv4xwCnG3Dw9fiVVQYxpViqZrjfkpFUZPRPrR5UXFL5L74UKim70gZHaEUoFNj/braTovQQy3Fq2VSLQ1RnbBDNBzojzEkqEBOdndNl6w8hIE0DZx9B9TDgCK2Q8g0Fj4OvVSfxXTp9U2taSduM1ba5bpiqqTX85NPZaZf7OwGxoRjyxOwHsH0PuXTl71YhmgDQe6Rl0dwe25loWfojdbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5ooN4BRUCO0fuP32IGz3+ms86kIVwuhzB20jHt3+tIk=;
 b=XrjHAWwzjKx0HrfcfNO3w8pUvip0Zsoz/pC7bcOwB2QrjAej2AHyboY2mJmVdeXRmo6x6DZogAOruCqpEtT17cKbLR3eujvD/cDwfSmays3P0rCdOluoHjpAm/eYkxGDbw7guJYOQ/2ubfOoeL2Tfuw78dhYNdgqokYDFh15+GiEn9PUtygWgef9yhHb67mZzt20uCJbM3o9NeyHSd4hJwLjJx/P7yuMDs1esjjOcJLBeTlfVWoCwiW60WZ5vBy0j+dvJAzTO7hgkK+0RtMgcmllxXcLSawpRrO9M/LGaOIbESNH0rkb2JDJhVAtuEDyJz8uUggmPDJRAehmyeu8EQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=lists.infradead.org smtp.mailfrom=amd.com;
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=amd.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5ooN4BRUCO0fuP32IGz3+ms86kIVwuhzB20jHt3+tIk=;
 b=LrxKu/a1tAnp7gXQMMcOVGM/ydHWZ6iW03yrXHkL1dRzBZrodvycIjKua9dXtr7l9qvyLz0DTAcPT22ldg7PKMqjJeanu0G30GJ0S7mY5XZjtMDYupmd2YpPcoTrXFtgX4WF/nhTiPYxdXnaHq8qTbDnznSRv2LPgIPqA7xgfBo=
Received: from MN2PR06CA0002.namprd06.prod.outlook.com (2603:10b6:208:23d::7)
 by CH0PR12MB5123.namprd12.prod.outlook.com (2603:10b6:610:be::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.16; Wed, 21 Sep
 2022 08:06:41 +0000
Received: from BL02EPF0000C406.namprd05.prod.outlook.com
 (2603:10b6:208:23d:cafe::c4) by MN2PR06CA0002.outlook.office365.com
 (2603:10b6:208:23d::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.15 via Frontend
 Transport; Wed, 21 Sep 2022 08:06:41 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB04.amd.com; pr=C
Received: from SATLEXMB04.amd.com (165.204.84.17) by
 BL02EPF0000C406.mail.protection.outlook.com (10.167.241.8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.5654.11 via Frontend Transport; Wed, 21 Sep 2022 08:06:41 +0000
Received: from SATLEXMB08.amd.com (10.181.40.132) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Wed, 21 Sep
 2022 03:06:40 -0500
Received: from SATLEXMB03.amd.com (10.181.40.144) by SATLEXMB08.amd.com
 (10.181.40.132) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Wed, 21 Sep
 2022 01:06:39 -0700
Received: from xhdshubhraj40.xilinx.com (10.180.168.240) by SATLEXMB03.amd.com
 (10.181.40.144) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Wed, 21 Sep 2022 03:06:36 -0500
From:   Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
To:     <linux-arm-kernel@lists.infradead.org>
CC:     <git@amd.com>, <devicetree@vger.kernel.org>,
        <michal.simek@xilinx.com>, <mark.rutland@arm.com>,
        <will@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>
Subject: [RFC PATCH 1/2]  dt-bindings: Add the binding doc for xilinx APM
Date:   Wed, 21 Sep 2022 13:36:22 +0530
Message-ID: <20220921080623.22077-2-shubhrajyoti.datta@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220921080623.22077-1-shubhrajyoti.datta@amd.com>
References: <20220921080623.22077-1-shubhrajyoti.datta@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL02EPF0000C406:EE_|CH0PR12MB5123:EE_
X-MS-Office365-Filtering-Correlation-Id: 7eb2eea6-f332-4e78-995b-08da9ba83755
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FsZTYDifeyvjeAi08I3BBaLd+QiCQ5sLPrK/hRgyuLh+TqS+tibV0WfXWyw63Ra6IcycFsW8nXJcjtczaAjissfj3wujcf/TDI4WYQKGGhFucsTDqMVD/wu6saQ9f6SHa5jeWVHqMKylIq7OqXJ+NVba0ZAfxIp7Nd4gd7gBPAMELjLzApBj42TBrOX1iL8xbTiyPmEHPxj+zU5F4dHCyOAGdPYWDXlrMxhEPOnrmXpIjAzFE8F2j5jEjOL2A8g54QbFHo3Y1ZfO8yChUssjUjtHjYEayp8rXtTrqseWCUo3b3Vk26qGBL5ZE9gaYRKt/NvWIi8DkAh+nfhB4I2KXa6OiS2UlJp/SVzRQJ4D46g5xujyKVA8Ye5fhIKlkGqWJGj6Ftp2egSy7SZ4YAvTDpW4+73giupX6E5NJl/iI3M7JdlvLYosJ5Dp8FTSJq00/zNJpFfgszM+8r52nng0076eBXlLTSojyBE4D5+UtuV5MMwQOf+RxSvyp0n7xMVu7in6s4ehLHKAsQTMQ4XiZmIsZlAx0U+UU0Q5JQUjXJPx+kyDB3yN+Bej4sZ3C1UoBjFI8lcXyVfGXdIVoqN5OJTpROoiVd2YWlcvKZ8X1W/tIodkugsFXgGsRBP0Ctf3XgAbtcqyZxzika4T0E8FNAN6ua8DnSaz3Oipa5uXc+v0lhxW3OAFGXOBOoSCY/lovqBzW51M5RzUD9/09UXbGQZpC1F54p5fpUkk7F2gbWiaAhOty7uke5zAO8KK/c14hdYUeDdGhoQG98uNay8aQ/C+a3r+rZEzsX21hyquybSSl89ABWghCBQWkl1q/Up5/kNU7q4lNWNOf2C41rumi6p4iHxHuzRZod7WG0D5nSstl93BAzBMHv65kFx1PjKO
X-Forefront-Antispam-Report: CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:SATLEXMB04.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230022)(4636009)(396003)(346002)(136003)(39860400002)(376002)(451199015)(36840700001)(40470700004)(46966006)(44832011)(6916009)(54906003)(5660300002)(70586007)(70206006)(8676002)(316002)(86362001)(8936002)(41300700001)(40480700001)(4326008)(47076005)(83380400001)(82740400003)(36860700001)(6666004)(966005)(2616005)(478600001)(40460700003)(356005)(81166007)(186003)(336012)(426003)(1076003)(26005)(36756003)(2906002)(82310400005)(36900700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Sep 2022 08:06:41.0420
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7eb2eea6-f332-4e78-995b-08da9ba83755
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[SATLEXMB04.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: BL02EPF0000C406.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR12MB5123
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The LogiCORE™ IP AXI Performance Monitor core enables AXI system
performance measurement for multiple slots (AXI4/AXI3/AXI4-Stream/
AXI4-Lite) activity. Add the devicetree binding for xilinx APM.

Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
---
 .../bindings/perf/xlnx-axi-perf-monitor.yaml  | 137 ++++++++++++++++++
 1 file changed, 137 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/perf/xlnx-axi-perf-monitor.yaml

diff --git a/Documentation/devicetree/bindings/perf/xlnx-axi-perf-monitor.yaml b/Documentation/devicetree/bindings/perf/xlnx-axi-perf-monitor.yaml
new file mode 100644
index 000000000000..0b8ba96aa867
--- /dev/null
+++ b/Documentation/devicetree/bindings/perf/xlnx-axi-perf-monitor.yaml
@@ -0,0 +1,137 @@
+# SPDX-License-Identifier: GPL-2.0-or-later OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/perf/xilinx-apm.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Xilinx Axi Performance Monitor device tree bindings
+
+maintainers:
+  - Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - xlnx,axi-perf-monitor
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  xlnx,enable-profile:
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - enum: [0, 1]
+    description:
+      Enables the profile mode.
+    maxItems: 1
+
+  xlnx,enable-trace:
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - enum: [0, 1]
+    description:
+      Enables trace mode.
+    maxItems: 1
+
+  xlnx,num-monitor-slots:
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - minimum: 1
+      - maximum: 8
+    description:
+      Number of monitor slots.
+
+  xlnx,enable-event-count:
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - enum: [0, 1]
+    description:
+      Enable event count.
+
+  xlnx,enable-event-log:
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - enum: [0, 1]
+    description:
+      Enable event log.
+
+  xlnx,have-sampled-metric-cnt:
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Sampled metric counters enabled in APM.
+
+  xlnx,metric-count-width:
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - enum: [32, 64]
+    description:
+      Metric Counter width.
+
+  xlnx,metric-count-scale:
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - enum: [1, 2, 4, 8]
+    description:
+      Metric Counter scale factor.
+
+  xlnx,num-of-counters:
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Number of counters in APM.
+
+  xlnx,metrics-sample-count-width:
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - enum: [32, 64]
+    description:
+      Sampled metric counter width.
+
+  xlnx,global-count-width:
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - enum: [32, 64]
+    description:
+      Global Clock counter width.
+
+  xlnx,id-filter-32bit:
+    description: APM is in 32-bit mode.
+    type: boolean
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    apm@44a00000 {
+        compatible = "xlnx,axi-perf-monitor";
+        interrupt-parent = <&axi_intc_1>;
+        interrupts = <1 2>;
+        reg = <0x44a00000 0x1000>;
+        clocks = <&clkc 15>;
+        xlnx,enable-profile = <0>;
+        xlnx,enable-trace = <0>;
+        xlnx,num-monitor-slots = <4>;
+        xlnx,enable-event-count = <1>;
+        xlnx,enable-event-log = <1>;
+        xlnx,have-sampled-metric-cnt = <1>;
+        xlnx,num-of-counters = <8>;
+        xlnx,metric-count-width = <32>;
+        xlnx,metrics-sample-count-width = <32>;
+        xlnx,global-count-width = <32>;
+        xlnx,metric-count-scale = <1>;
+        xlnx,id-filter-32bit;
+    };
-- 
2.17.1

