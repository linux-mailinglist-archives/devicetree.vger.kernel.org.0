Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8C315653D15
	for <lists+devicetree@lfdr.de>; Thu, 22 Dec 2022 09:42:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229567AbiLVImy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Dec 2022 03:42:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231892AbiLVImx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Dec 2022 03:42:53 -0500
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2059.outbound.protection.outlook.com [40.107.237.59])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A0CB23BDF
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 00:42:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TdH5rhW3J1kFXEebIb67xpeCTrw7IK/DDea3/I5mvpCAyPzgJabcR/+/vwbJ05xENiI9yTtN48wIfeTRf9NTFlQNfPnl7tqFmw1UhnFSnX9PhPAyQRk06m6/YdfF/yf6P2eoBTBVmJ1pvpXYo8TuVRPJNYO/8y9GoFegsoMwFYKtYng4FQhpQQ1zoRYRcCNLHaU/LuBjafmNeqjI12wKWrGEmuUCiEcOw1Obc0GC3T5l9gY4sZhhlXbPQat3qSDTrC+JDHooSXZyXHQnPw+KN1paWssQTPSVrpFSx217s4rysn5H8YztmEdGOnlibFXRyrAEABhe8GCN6dJ3JltxPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BZfu/y1WWd9hK6m3Ss/B3157ZoTlzL1R5OOi3nhRYG8=;
 b=AXI+GykO4TE51iYCA2YPbJS5y24PTLhq/BfhdRBu+fFI6PRyvbD8B0PrGko8D+LER6Xo/2buaaZxnNdaC7J7/uDT8TmHzHgEZpvteXWsr+EftIFt48XE/HvxPNyOaCvBnZXNatZAPc0aBZJ+GpzdSEl1l6HgA89L9uyrHYCmAO8GceRULDS377X5/1iHhdokunnY/LzkuDThrenEz99qhqnZ9EhpKiCEplYxcpUjoN8qB1PWxABcoSnXW+ycNUxhMXXweCokU3Qs0f9lDlEADwmZLhU1Ke8Z0XEL74IIzmQffKzGNlYxB6WyONjoDEFA/I4FrgUJt+UdUVl8UZdeiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=lists.infradead.org smtp.mailfrom=amd.com;
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=amd.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BZfu/y1WWd9hK6m3Ss/B3157ZoTlzL1R5OOi3nhRYG8=;
 b=0d7JPOj0DKzKEthz6WjwJfy7I4P+LpSnMXo/jv2nhyI6/p+b3feynAnSCbhHQsCdhf3R4sY3RnkkGU9O6DSWWr5efSredcgsGkEoDArrPVnz/tLFh8OOLeYTYpD/pIy0Z3csGy0kNj0Uj5Pe/MlCSoBDgUqVOA+IOTO99C7sY/Y=
Received: from MW4PR03CA0001.namprd03.prod.outlook.com (2603:10b6:303:8f::6)
 by DM4PR12MB5722.namprd12.prod.outlook.com (2603:10b6:8:5d::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.16; Thu, 22 Dec
 2022 08:42:48 +0000
Received: from CO1NAM11FT098.eop-nam11.prod.protection.outlook.com
 (2603:10b6:303:8f:cafe::2e) by MW4PR03CA0001.outlook.office365.com
 (2603:10b6:303:8f::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.11 via Frontend
 Transport; Thu, 22 Dec 2022 08:42:48 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB04.amd.com; pr=C
Received: from SATLEXMB04.amd.com (165.204.84.17) by
 CO1NAM11FT098.mail.protection.outlook.com (10.13.174.207) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.5944.10 via Frontend Transport; Thu, 22 Dec 2022 08:42:47 +0000
Received: from SATLEXMB06.amd.com (10.181.40.147) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.34; Thu, 22 Dec
 2022 02:42:46 -0600
Received: from SATLEXMB04.amd.com (10.181.40.145) by SATLEXMB06.amd.com
 (10.181.40.147) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.34; Thu, 22 Dec
 2022 02:42:40 -0600
Received: from xhdshubhraj40.xilinx.com (10.180.168.240) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server id 15.1.2375.34 via Frontend
 Transport; Thu, 22 Dec 2022 02:42:38 -0600
From:   Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
To:     <linux-arm-kernel@lists.infradead.org>
CC:     <git@amd.com>, <devicetree@vger.kernel.org>,
        <michal.simek@xilinx.com>, <krzysztof.kozlowski+dt@linaro.org>,
        <robh+dt@kernel.org>
Subject: [PATCH v2 1/2] dt-bindings: Add the binding doc for xilinx APM
Date:   Thu, 22 Dec 2022 14:12:34 +0530
Message-ID: <20221222084235.12235-2-shubhrajyoti.datta@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20221222084235.12235-1-shubhrajyoti.datta@amd.com>
References: <20221222084235.12235-1-shubhrajyoti.datta@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1NAM11FT098:EE_|DM4PR12MB5722:EE_
X-MS-Office365-Filtering-Correlation-Id: 10238098-bf3b-4f67-65b6-08dae3f880f1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OR9GDuXSJ/08FHEijdEGRUSrW+uxLZRrlNJi3ox4byHR81BvPEQwiQ+c+p0pq+DE1a0heHYzd4uhI2IJiM4MC8AVNZGFFgQ9Fa484iMOgLaZJ3rBLhXPbkWM8hNm6a67g2lsBWAyzXGg4Mq5wwvw2ziCfItvbFSh0SZYFe7AOFVRs/SHX6/gTPvHL0DlsteoS4r0U4sybQQ34jlFuaBKgpOAbon+nFKDeZ7kJdAIdzM0a6dLANoBR320rjeLWoUcX4ZH4BucQcoWr2GkCoVhBPExHuY6XcgECKjFRTPvC4ju94chmFn+N6VnPPQ2OQB6TaC+8q7u4/byHJ6om0hy16Z1T2e01JXxzFHsekXu8AhCEZUgyV9SkrJN6eTaay9X4OJ0JyN/Now8OK8CRrkwgjBIcIqIo5jdgtXZpKscH6fXqafkh9BwNMm0s6pJ/+ZZ0Rqv1XhmsszhjJ8R90nZ+LdVXwKeYMO3Rr2bquNTwyW+eZBJm48evZzEKit9JqGxQ9AZ7oOtYl+dQTW2eh8X932RQmzElZVPLTmSfLfv4ttTF9PGwR0G7HZ/vf5cuIjkqCUioEPRMJYdAYffp5cAzQEjEnAHZJHMHXgql8RMpQnMJv6w2Rv5iV/TP2jqwmHy1h7UA0oqcZe8S84P69WYV3qGim6fYv8/5M6nmvo9h7aGV9sfvPw2YmkHGC+5h/oWclhw8L/vDT0uxnHN9SQpiXlZGfqv6HR0PoFzvogQ9ewox2N+Zgh2kAL//37AtWt+IiRCd0ItWUNmUODe08S46NxLgy0Yipv5ytb+qiw9uZA=
X-Forefront-Antispam-Report: CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:SATLEXMB04.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230022)(4636009)(346002)(39860400002)(376002)(136003)(396003)(451199015)(46966006)(36840700001)(40470700004)(40460700003)(86362001)(70586007)(70206006)(8676002)(4326008)(316002)(5660300002)(336012)(2616005)(36756003)(8936002)(1076003)(41300700001)(82310400005)(6666004)(36860700001)(426003)(26005)(83380400001)(356005)(186003)(47076005)(54906003)(40480700001)(6916009)(82740400003)(81166007)(478600001)(44832011)(966005)(2906002)(36900700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2022 08:42:47.9482
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 10238098-bf3b-4f67-65b6-08dae3f880f1
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[SATLEXMB04.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: CO1NAM11FT098.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB5722
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

Changes in v2:
 - Use boolean for the values xlnx,enable-profile , xlnx,enable-trace
and xlnx,enable-event-count
- Update the file name
- use generic node name pmu

 .../bindings/perf/xlnx,axi-perf-monitor.yaml  | 133 ++++++++++++++++++
 1 file changed, 133 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/perf/xlnx,axi-perf-monitor.yaml

diff --git a/Documentation/devicetree/bindings/perf/xlnx,axi-perf-monitor.yaml b/Documentation/devicetree/bindings/perf/xlnx,axi-perf-monitor.yaml
new file mode 100644
index 000000000000..72843504c946
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
+  xlnx,profile:
+    description:
+      Has profile mode support. Event counting in profile mode consists of a
+      fixed number of accumulators for each AXI4/AXI3/AXI4-Lite slot. All the
+      events that can be counted are detected and given to the accumulator
+      which calculates the aggregate value. There is no selection of events,
+      and in this mode, event counting is done only on AXI4/AXI3/AXI4-Lite
+      monitor slots.
+    type: boolean
+
+  xlnx,trace:
+    description:
+      Has trace mode support. In trace mode, the APM provides event logging in a
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
+  xlnx,event-count:
+    description:
+      Has event counting capability..
+    type: boolean
+
+  xlnx,event-log:
+    type: boolean
+    description:
+      Has event logging support.
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
+        xlnx,event-count;
+        xlnx,event-log;
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

