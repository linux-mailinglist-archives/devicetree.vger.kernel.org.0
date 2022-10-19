Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2733A6040BE
	for <lists+devicetree@lfdr.de>; Wed, 19 Oct 2022 12:14:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231936AbiJSKOh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Oct 2022 06:14:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230199AbiJSKNm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Oct 2022 06:13:42 -0400
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2040.outbound.protection.outlook.com [40.107.220.40])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0AEF8165B7
        for <devicetree@vger.kernel.org>; Wed, 19 Oct 2022 02:54:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CPpcYVrSw4AYTRa1/3Ecfo+4gbA0zcO8UovqLLzssd5+2pczUaBzH+RAyxDz5ows8I3U8u1rDvlVb3qnZZy4+IaLgKm/HDNa5I+kEXKDfnQkNXOFCxQ6NXoaAB8HGXwf0GzftmW08IyajAwKHdlo95Un0NHZKmCJTIP9CDpReh6S7K5IgcpRwIcVnCYKrkvB3oIOCVP66Ja1V5JLzeCjEeKqArQ5x0PwMouI6n7pxhjfVGqm2Z1KRburA7kL+C34yY9gXIkndOZQA/gmGV9/sm+PGvStSoVt6JHdm8CasRoq2HNG2SuLqgaVcezd6IJjyRoAbCRd1vkDt6ygY4XEIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1DrQEriu6Frf/ivYlmEkfraardttDohUNl06GVy1L0U=;
 b=MMHtCy3+ATtrRG2Wc41uOfv7zBmh638CHrJhxrWeZZ7cuV5kBc6HYXNWCUNBHTfUTTRz4dJicRHHp8p3ux8WSW2DWO4kI/bGgCcHUEXiQS/p3RU4yJyA4bkuJHsq+7lP4gzD+at4JMxIvu14Gx7d6n17N2z/+Qpqd2m77k4e3RnM2GAJmkh1YQQeSsTCXedkny73pI3wIzju5MGsjx0ShniJbhcFY1DObLXTzFfVv/YrDzZ0hmvblye7GGvm7+WEd6vvFIYoxM2ICaXS4CVKF80q41OCnmbCyMpZKTzq30p14jV/cq6BMuUnxoAs/5Tl5b/EgnFAJ23t2LskuXvTKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=lists.infradead.org smtp.mailfrom=amd.com;
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=amd.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1DrQEriu6Frf/ivYlmEkfraardttDohUNl06GVy1L0U=;
 b=3niD29bf6A+rzJNzq+U4yf1piz00YaP1afruw0OKakUGC0jQMTJI1R+BNTiexneLzAe6uwspwVReVZoPfi+b3LF9DHmcqjIHrFNdz3uxLumoLpbuiL/NadXkYA71IRRXjkBuc9jG0+5+shB3cXxPcAmsYOHzamSQHHDxRs7CTD8=
Received: from BN9P221CA0010.NAMP221.PROD.OUTLOOK.COM (2603:10b6:408:10a::13)
 by MW4PR12MB7014.namprd12.prod.outlook.com (2603:10b6:303:218::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.32; Wed, 19 Oct
 2022 09:17:24 +0000
Received: from BN8NAM11FT021.eop-nam11.prod.protection.outlook.com
 (2603:10b6:408:10a:cafe::76) by BN9P221CA0010.outlook.office365.com
 (2603:10b6:408:10a::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.34 via Frontend
 Transport; Wed, 19 Oct 2022 09:17:23 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB04.amd.com; pr=C
Received: from SATLEXMB04.amd.com (165.204.84.17) by
 BN8NAM11FT021.mail.protection.outlook.com (10.13.177.114) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.5746.16 via Frontend Transport; Wed, 19 Oct 2022 09:17:23 +0000
Received: from SATLEXMB07.amd.com (10.181.41.45) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Wed, 19 Oct
 2022 04:17:23 -0500
Received: from SATLEXMB04.amd.com (10.181.40.145) by SATLEXMB07.amd.com
 (10.181.41.45) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Wed, 19 Oct
 2022 02:17:22 -0700
Received: from xhdshubhraj40.xilinx.com (10.180.168.240) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server id 15.1.2375.31 via Frontend
 Transport; Wed, 19 Oct 2022 04:17:19 -0500
From:   Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
To:     <linux-arm-kernel@lists.infradead.org>
CC:     <git@amd.com>, <devicetree@vger.kernel.org>, <will@kernel.org>,
        <mark.rutland@arm.com>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <michal.simek@xilinx.com>
Subject: [PATCH v1 1/2] dt-bindings: Add the binding doc for xilinx APM
Date:   Wed, 19 Oct 2022 14:47:12 +0530
Message-ID: <20221019091713.9285-2-shubhrajyoti.datta@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20221019091713.9285-1-shubhrajyoti.datta@amd.com>
References: <20221019091713.9285-1-shubhrajyoti.datta@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8NAM11FT021:EE_|MW4PR12MB7014:EE_
X-MS-Office365-Filtering-Correlation-Id: b69717d9-845c-45de-8776-08dab1b2bbbd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2ZDVG3E1iNSu/+2XqGgCzbUN5xFIquDslBnk8rkJGIhxWTwzTD/BQFRLLXEVC0hX0awpK1ZUUfsI0Ibb4DKmrSHmFPyGrIPieyjgXS/5TezjWZslWqa/qVa2xZVK8SrVBnGq7DPFXHoVeJbA5FXZMTaUpBgqQgwMUP1nB5fekC/yKtMRsgp1uxrqWFmG6S0BJgUxfzL3+dUy4gOafT8BrPCKY6pwOkguCqIv0DUJjTkM+DxfUz+if209XBD6AV82xUyd2Kq6lICXqMFfthZPMEjHL7Tiffdh/LG8rzpWxuFLY214DrjWSFhwJBCW1fi6k+693YAnSgBUsxTXWiNjjx788cpC1u79e7A9g81s8dhUNB2h80+eevIJxyiJDmJQIBFBNhcFGUrKDIqtpcF5LzSNEr9lz3ifbKtSVACCRSbLO30iUg+TinWEF/YkCkBOUezMt0lX/KVe6OIm6rClKmQ3mBb3vg4+dDK3mOPADWJpMXOxBqiKUfOKsASmTZL6nmlfrmLSPhJ6gGJsh0+fpRU+y3uz/v/2dLRm3LVYFh22iJHJ54uoODOvZiV0M/sJ9iIOu16MXNTvvxHZ16DZp2a/iyX4cffxcbI74hBWGbH0AYV+UC0uveJMYeqRq9ivF5zXwZR96hvYHnUGaXdpf9/Qlqd4jaVYbq2uKYlToskKaB76GEuEkJmA8vKOfRmzWyfp16OCeg4LkvHNtnSGwmilKsbm3L+EB2KogJVFk2K8wgEBY52UtfDrV62j18t5cyw2gsBDeHuyN0ZF17GC2Z4Z/93pR6Z9CsHbYpeFwiU2x8XN8AnKuolKPj1hegADhw2wQfTcseEEPb6gdt7Y4oAwea6I0mwsQpN1vklzIgPF63+wvhQlUIX1UhWH9tav
X-Forefront-Antispam-Report: CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:SATLEXMB04.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230022)(4636009)(376002)(346002)(136003)(39860400002)(396003)(451199015)(36840700001)(40470700004)(46966006)(41300700001)(26005)(40460700003)(186003)(82310400005)(336012)(478600001)(44832011)(2616005)(1076003)(36756003)(107886003)(6666004)(86362001)(2906002)(8936002)(5660300002)(4326008)(82740400003)(36860700001)(6916009)(40480700001)(54906003)(316002)(47076005)(8676002)(70586007)(83380400001)(426003)(81166007)(356005)(966005)(70206006)(36900700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Oct 2022 09:17:23.7933
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b69717d9-845c-45de-8776-08dab1b2bbbd
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[SATLEXMB04.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: BN8NAM11FT021.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB7014
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The LogiCORE IP AXI Performance Monitor core enables AXI system
performance measurement for multiple slots (AXI4/AXI3/
AXI4-Stream/AXI4-Lite) activity. Add the devicetree binding for
xilinx APM.

Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
---

Changes in v1:
 - Use boolean for the values xlnx,enable-profile , xlnx,enable-trace
and xlnx,enable-event-count
- Update the file name
- use generic node name pmu

 .../bindings/perf/xlnx,axi-perf-monitor.yaml  | 133 ++++++++++++++++++
 1 file changed, 133 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/perf/xlnx,axi-perf-monitor.yaml

diff --git a/Documentation/devicetree/bindings/perf/xlnx,axi-perf-monitor.yaml b/Documentation/devicetree/bindings/perf/xlnx,axi-perf-monitor.yaml
new file mode 100644
index 000000000000..bd3a9dbc1184
--- /dev/null
+++ b/Documentation/devicetree/bindings/perf/xlnx,axi-perf-monitor.yaml
@@ -0,0 +1,133 @@
+# SPDX-License-Identifier: GPL-2.0-or-later OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/perf/xlnx,axi-perf-monitor.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Xilinx Axi Performance Monitor
+
+maintainers:
+  - Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
+
+properties:
+  compatible:
+    const: xlnx,axi-perf-monitor
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
+    description:
+      Enables the profile mode. Event counting in profile mode consists of a
+      fixed number of accumulators for each AXI4/AXI3/AXI4-Lite slot. All the
+      events that can be counted are detected and given to the accumulator
+      which calculates the aggregate value. There is no selection of events,
+      and in this mode, event counting is done only on AXI4/AXI3/AXI4-Lite
+      monitor slots.
+    type: boolean
+
+  xlnx,enable-trace:
+    description:
+      Enables trace mode. In trace mode, the APM provides event logging in a
+      reduced dynamic configuration. It captures the specified AXI events,
+      external events and the time stamp difference between two successive
+      events into the streaming FIFO. The selection of events to be captured
+      is set through parameter configuration. Streaming agents are not
+      supported in trace mode.
+    type: boolean
+
+  xlnx,num-monitor-slots:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Number of monitor slots.
+    minimum: 1
+    maximum: 8
+
+  xlnx,enable-event-count:
+    description:
+      Enable event count.
+    type: boolean
+
+  xlnx,enable-event-log:
+    type: boolean
+    description:
+      Enable event log.
+
+  xlnx,have-sampled-metric-cnt:
+    type: boolean
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
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    pmu@44a00000 {
+        compatible = "xlnx,axi-perf-monitor";
+        interrupt-parent = <&axi_intc_1>;
+        interrupts = <GIC_SPI 123 IRQ_TYPE_EDGE_RISING>;
+        reg = <0x44a00000 0x1000>;
+        clocks = <&clkc 15>;
+        xlnx,num-monitor-slots = <4>;
+        xlnx,enable-event-count;
+        xlnx,enable-event-log;
+        xlnx,have-sampled-metric-cnt;
+        xlnx,num-of-counters = <8>;
+        xlnx,metric-count-width = <32>;
+        xlnx,metrics-sample-count-width = <32>;
+        xlnx,global-count-width = <32>;
+        xlnx,metric-count-scale = <1>;
+        xlnx,id-filter-32bit;
+    };
-- 
2.17.1

