Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 731AC52A8AF
	for <lists+devicetree@lfdr.de>; Tue, 17 May 2022 18:56:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234814AbiEQQ4h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 May 2022 12:56:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350665AbiEQQ4A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 May 2022 12:56:00 -0400
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (mail-sn1anam02on2074.outbound.protection.outlook.com [40.107.96.74])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F18E4EDF0
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 09:55:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j5ZCxPuk6Yo4QRfQpKVF0yyULuNTsdvW7YOACOoKntqb9MTHU8GxAVr+QwDWsFsDZ3ks01pSsd1c0+jeYr+GQwi5fpkb+K20vWWXi8Cg4ix0+so01naKGRvTUS7/2ozWBdlbFAXLnEIxaRqZBn+cQaFlZb5VYx0s2z3fAS/6IRjSMqzq96TEBudqdCsKve3Ayz5VWHOzQUaRIEUa2WPiZ9Eti+RTsSYYytFQaKI34Wpf7x6Eg5xEzF+KDT+J9xN27eKEgQG5hVD/u/1rXyU9UBglgDEnI8GVJHA45Ubw/qsZbd+5DFoU6hGz6kxARfoLSox6S4xvHlcNqM2qShuF8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ppOCrciKH7+xIwrS8+EmCEKqYlwghx4SofaqoxqNomc=;
 b=aQgJEHn/bdquRQcBBtmBncAswxX2FQu7zwL/jgSlqRVhlc0C7W7CYU1R8IFwPdOc3CCuw7qqMWZ6DjPnnWYBm/3kIBm9upWEBz4C60H0dEr/d6TscuiuRAGsWQZqS0lELxn65LuK6vsrGLo8u2Iv9CGmGUZhTMivOW/7SW5wBFV5h6Fjn3QqBFUCH+CA455KFmdSh00zDb6e8GTDZuHZ6qv7eQjroMXjUJqi5TNWpP5SYWBDLUw0CxVQoqZDGU391VwGgkq/Iv6jeA/Mbt9o47+wlv4XcagZ/a/p7WURMmgE1HL2MOZ6mANTQi4h+Lb37pLtSu9jEGzaguvGl8F2Iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.62.198) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=xilinx.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ppOCrciKH7+xIwrS8+EmCEKqYlwghx4SofaqoxqNomc=;
 b=lS9HJFOIUG7Psro+xHCgt4/y+j9qJrpXcorKINAX9913kyFk6c+k6rGUyMIMRrrBO0SQaWqrPZDxTLzVe8rrOjSzJCSMqFyzsSOxOPHaK15Y5R1/CXrja/B50wy1MBtB25fP+PV1lero4OnQuz7Z+KMQljCPx8sgrmw9vFGFS5g=
Received: from BN8PR07CA0022.namprd07.prod.outlook.com (2603:10b6:408:ac::35)
 by CY4PR0201MB3555.namprd02.prod.outlook.com (2603:10b6:910:93::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5250.14; Tue, 17 May
 2022 16:55:55 +0000
Received: from BN1NAM02FT055.eop-nam02.prod.protection.outlook.com
 (2603:10b6:408:ac:cafe::38) by BN8PR07CA0022.outlook.office365.com
 (2603:10b6:408:ac::35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5250.13 via Frontend
 Transport; Tue, 17 May 2022 16:55:54 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 149.199.62.198)
 smtp.mailfrom=xilinx.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.62.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.62.198; helo=xsj-pvapexch02.xlnx.xilinx.com;
Received: from xsj-pvapexch02.xlnx.xilinx.com (149.199.62.198) by
 BN1NAM02FT055.mail.protection.outlook.com (10.13.2.163) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.5250.13 via Frontend Transport; Tue, 17 May 2022 16:55:54 +0000
Received: from xsj-pvapexch02.xlnx.xilinx.com (172.19.86.41) by
 xsj-pvapexch02.xlnx.xilinx.com (172.19.86.41) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Tue, 17 May 2022 09:55:42 -0700
Received: from smtp.xilinx.com (172.19.127.96) by
 xsj-pvapexch02.xlnx.xilinx.com (172.19.86.41) with Microsoft SMTP Server id
 15.1.2176.14 via Frontend Transport; Tue, 17 May 2022 09:55:42 -0700
Envelope-to: git@xilinx.com,
 devicetree@vger.kernel.org,
 robh+dt@kernel.org,
 jassisinghbrar@gmail.com
Received: from [10.140.6.59] (port=40830 helo=xhdshubhraj40.xilinx.com)
        by smtp.xilinx.com with esmtp (Exim 4.90)
        (envelope-from <shubhrajyoti.datta@xilinx.com>)
        id 1nr0U1-000GNe-JO; Tue, 17 May 2022 09:55:42 -0700
From:   Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
To:     <devicetree@vger.kernel.org>
CC:     <michal.simek@xilinx.com>, <robh+dt@kernel.org>,
        <jassisinghbrar@gmail.com>, <git@xilinx.com>,
        Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
Subject: [PATCH v5] dt-bindings: mailbox: zynqmp_ipi: convert to yaml
Date:   Tue, 17 May 2022 22:25:36 +0530
Message-ID: <20220517165536.8637-1-shubhrajyoti.datta@xilinx.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5804f285-91da-43c9-c886-08da38261b91
X-MS-TrafficTypeDiagnostic: CY4PR0201MB3555:EE_
X-Microsoft-Antispam-PRVS: <CY4PR0201MB3555D3A47EFCC904F9A68285AACE9@CY4PR0201MB3555.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +JeowW64ROVy7DWoRzRCXgd8qYicFy0tZC3MVLY5KzseYJEEvB5Pjv4BwnoBQ1a7iTX4f477CtO3/bzHz3VMPTPd97EhYOmk/RugEGTeIirwihgOtAKC0lHEpRaGqpgMiD4eg7NeuJhcQOKUKt/Lb3nz7KqqsKWDuapdt7nEVgn/21jqtM1Gztk3kWWkcxVCHEvf6QsWF5mSxzUKxKIX287K9HEOws5DDp9jZHvhiCOzWbQ05HInkcsmbRV5FKFi/djVJKs7Efw9gQbPaqwYQY0Tk2tA8WBMJ8qx9iDB5Ku+leVrvXH7mpnoWvUrmPteoEp8rbiaswlDCEiYlOvhJ0RULNX/DevAIyxWJFsHiDU4JI2C+snmXhlz7+aFsc6h68Ng3aOi8sZBnktBqwWmXfqtDCIa9HcNhzfSrF79Y1X5UaSqK1wNCi/s3HjVv1exXsqtwopOvcl0fmgI49XSXHrOh0QYEtoAw+Gs1o7KIqoXI+EpS04TVtARO6/PUARqoQdqvZ9bHTwg4K6ElGgpWKSzIo4Yu19zykF0HUgx5FYmYexaQBXpaZ9nE/GoMGDkss4K99P+1TvqpHrMQRortnIl7aIUjVENitK7nljDUglt5yRJNG0HZtd7NNH2GcHdEIVJc+qFkhMY+64vyVBVRSLX5bC8ILbOFIKpAOJ5sNgW3pzLxNjmdKE05rmNBQEyIO/WqQ0ujxywr9jbMa1JPtaz3WL45caxtu696lEuMLq91qOFfxaYMJkeIneRfXATUDrQcCMdctufftiJVBZMYoCl+C0ak4bm5q3uiHRqjBW/6WBPAUu9gHJaC9WOsWEJ8MfdHw5HsYAqt5L/pDGqdg==
X-Forefront-Antispam-Report: CIP:149.199.62.198;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:xsj-pvapexch02.xlnx.xilinx.com;PTR:unknown-62-198.xilinx.com;CAT:NONE;SFS:(13230001)(4636009)(40470700004)(36840700001)(46966006)(6916009)(1076003)(82310400005)(186003)(40460700003)(70586007)(54906003)(7696005)(6666004)(4326008)(8676002)(107886003)(336012)(426003)(47076005)(2616005)(316002)(70206006)(83380400001)(15650500001)(356005)(44832011)(26005)(2906002)(36860700001)(9786002)(36756003)(7636003)(5660300002)(508600001)(8936002)(102446001);DIR:OUT;SFP:1101;
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 May 2022 16:55:54.7391
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5804f285-91da-43c9-c886-08da38261b91
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c;Ip=[149.199.62.198];Helo=[xsj-pvapexch02.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-AuthSource: BN1NAM02FT055.eop-nam02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR0201MB3555
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the ipi doc to yaml.

Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
---
v2:
 Fix the warnings reported by Rob
v3:
 Run dtbs_check
v4:
 fix the formatting
v5:
fix alignment
fix quotes
double space errors
remove consumer example

 .../mailbox/xlnx,zynqmp-ipi-mailbox.txt       | 127 ----------------
 .../mailbox/xlnx,zynqmp-ipi-mailbox.yaml      | 140 ++++++++++++++++++
 2 files changed, 140 insertions(+), 127 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mailbox/xlnx,zynqmp-ipi-mailbox.txt
 create mode 100644 Documentation/devicetree/bindings/mailbox/xlnx,zynqmp-ipi-mailbox.yaml

diff --git a/Documentation/devicetree/bindings/mailbox/xlnx,zynqmp-ipi-mailbox.txt b/Documentation/devicetree/bindings/mailbox/xlnx,zynqmp-ipi-mailbox.txt
deleted file mode 100644
index ad76edccf881..000000000000
--- a/Documentation/devicetree/bindings/mailbox/xlnx,zynqmp-ipi-mailbox.txt
+++ /dev/null
@@ -1,127 +0,0 @@
-Xilinx IPI Mailbox Controller
-========================================
-
-The Xilinx IPI(Inter Processor Interrupt) mailbox controller is to manage
-messaging between two Xilinx Zynq UltraScale+ MPSoC IPI agents. Each IPI
-agent owns registers used for notification and buffers for message.
-
-               +-------------------------------------+
-               | Xilinx ZynqMP IPI Controller        |
-               +-------------------------------------+
-    +--------------------------------------------------+
-ATF                    |                     |
-                       |                     |
-                       |                     |
-    +--------------------------+             |
-                       |                     |
-                       |                     |
-    +--------------------------------------------------+
-            +------------------------------------------+
-            |  +----------------+   +----------------+ |
-Hardware    |  |  IPI Agent     |   |  IPI Buffers   | |
-            |  |  Registers     |   |                | |
-            |  |                |   |                | |
-            |  +----------------+   +----------------+ |
-            |                                          |
-            | Xilinx IPI Agent Block                   |
-            +------------------------------------------+
-
-
-Controller Device Node:
-===========================
-Required properties:
---------------------
-IPI agent node:
-- compatible:		Shall be: "xlnx,zynqmp-ipi-mailbox"
-- interrupt-parent:	Phandle for the interrupt controller
-- interrupts:		Interrupt information corresponding to the
-			interrupt-names property.
-- xlnx,ipi-id:		local Xilinx IPI agent ID
-- #address-cells:	number of address cells of internal IPI mailbox nodes
-- #size-cells:		number of size cells of internal IPI mailbox nodes
-
-Internal IPI mailbox node:
-- reg:			IPI buffers address ranges
-- reg-names:		Names of the reg resources. It should have:
-			* local_request_region
-			  - IPI request msg buffer written by local and read
-			    by remote
-			* local_response_region
-			  - IPI response msg buffer written by local and read
-			    by remote
-			* remote_request_region
-			  - IPI request msg buffer written by remote and read
-			    by local
-			* remote_response_region
-			  - IPI response msg buffer written by remote and read
-			    by local
-- #mbox-cells:		Shall be 1. It contains:
-			* tx(0) or rx(1) channel
-- xlnx,ipi-id:		remote Xilinx IPI agent ID of which the mailbox is
-			connected to.
-
-Optional properties:
---------------------
-- method:              The method of accessing the IPI agent registers.
-                       Permitted values are: "smc" and "hvc". Default is
-                       "smc".
-
-Client Device Node:
-===========================
-Required properties:
---------------------
-- mboxes:		Standard property to specify a mailbox
-			(See ./mailbox.txt)
-- mbox-names:		List of identifier  strings for each mailbox
-			channel.
-
-Example:
-===========================
-	zynqmp_ipi {
-		compatible = "xlnx,zynqmp-ipi-mailbox";
-		interrupt-parent = <&gic>;
-		interrupts = <0 29 4>;
-		xlnx,ipi-id = <0>;
-		#address-cells = <1>;
-		#size-cells = <1>;
-		ranges;
-
-		/* APU<->RPU0 IPI mailbox controller */
-		ipi_mailbox_rpu0: mailbox@ff990400 {
-			reg = <0xff990400 0x20>,
-			      <0xff990420 0x20>,
-			      <0xff990080 0x20>,
-			      <0xff9900a0 0x20>;
-			reg-names = "local_request_region",
-				    "local_response_region",
-				    "remote_request_region",
-				    "remote_response_region";
-			#mbox-cells = <1>;
-			xlnx,ipi-id = <1>;
-		};
-		/* APU<->RPU1 IPI mailbox controller */
-		ipi_mailbox_rpu1: mailbox@ff990440 {
-			reg = <0xff990440 0x20>,
-			      <0xff990460 0x20>,
-			      <0xff990280 0x20>,
-			      <0xff9902a0 0x20>;
-			reg-names = "local_request_region",
-				    "local_response_region",
-				    "remote_request_region",
-				    "remote_response_region";
-			#mbox-cells = <1>;
-			xlnx,ipi-id = <2>;
-		};
-	};
-	rpu0 {
-		...
-		mboxes = <&ipi_mailbox_rpu0 0>,
-			 <&ipi_mailbox_rpu0 1>;
-		mbox-names = "tx", "rx";
-	};
-	rpu1 {
-		...
-		mboxes = <&ipi_mailbox_rpu1 0>,
-			 <&ipi_mailbox_rpu1 1>;
-		mbox-names = "tx", "rx";
-	};
diff --git a/Documentation/devicetree/bindings/mailbox/xlnx,zynqmp-ipi-mailbox.yaml b/Documentation/devicetree/bindings/mailbox/xlnx,zynqmp-ipi-mailbox.yaml
new file mode 100644
index 000000000000..2193141dd7fd
--- /dev/null
+++ b/Documentation/devicetree/bindings/mailbox/xlnx,zynqmp-ipi-mailbox.yaml
@@ -0,0 +1,140 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/mailbox/xlnx,zynqmp-ipi-mailbox.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Xilinx IPI(Inter Processor Interrupt) mailbox controller
+
+description: |
+  The Xilinx IPI(Inter Processor Interrupt) mailbox controller is to manage
+  messaging between two Xilinx Zynq UltraScale+ MPSoC IPI agents. Each IPI
+  agent owns registers used for notification and buffers for message.
+
+               +-------------------------------------+
+               | Xilinx ZynqMP IPI Controller        |
+               +-------------------------------------+
+    +--------------------------------------------------+
+  TF-A                   |                     |
+                         |                     |
+                         |                     |
+    +--------------------------+               |
+                         |                     |
+                         |                     |
+    +--------------------------------------------------+
+              +------------------------------------------+
+              |  +----------------+   +----------------+ |
+  Hardware    |  |  IPI Agent     |   |  IPI Buffers   | |
+              |  |  Registers     |   |                | |
+              |  |                |   |                | |
+              |  +----------------+   +----------------+ |
+              |                                          |
+              | Xilinx IPI Agent Block                   |
+              +------------------------------------------+
+
+maintainers:
+  - Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
+
+properties:
+  compatible:
+    const: xlnx,zynqmp-ipi-mailbox
+
+  method:
+    description: |
+      The method of calling the PM-API firmware layer.
+      Permitted values are.
+      - "smc" : SMC #0, following the SMCCC
+      - "hvc" : HVC #0, following the SMCCC
+
+    $ref: /schemas/types.yaml#/definitions/string
+    enum:
+      - smc
+      - hvc
+    default: smc
+
+  '#address-cells':
+    const: 2
+
+  '#size-cells':
+    const: 2
+
+  xlnx,ipi-id:
+    description: |
+      Remote Xilinx IPI agent ID of which the mailbox is connected to.
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+  interrupts:
+    maxItems: 1
+
+  ranges: true
+
+patternProperties:
+  '^mailbox@[0-9a-f]+$':
+    description: Internal ipi mailbox node
+    type: object  # DT nodes are json objects
+    properties:
+      xlnx,ipi-id:
+        description:
+          Remote Xilinx IPI agent ID of which the mailbox is connected to.
+        $ref: /schemas/types.yaml#/definitions/uint32
+
+      '#mbox-cells':
+        const: 1
+        description:
+          It contains tx(0) or rx(1) channel IPI id number.
+
+      reg:
+        maxItems: 4
+
+      reg-names:
+        items:
+          - const: local_request_region
+          - const: local_response_region
+          - const: remote_request_region
+          - const: remote_response_region
+
+    required:
+      - reg
+      - reg-names
+      - "#mbox-cells"
+
+additionalProperties: false
+
+required:
+  - compatible
+  - interrupts
+  - '#address-cells'
+  - '#size-cells'
+  - xlnx,ipi-id
+
+examples:
+  - |
+    #include<dt-bindings/interrupt-controller/arm-gic.h>
+
+    amba {
+      #address-cells = <0x2>;
+      #size-cells = <0x2>;
+      zynqmp-mailbox {
+        compatible = "xlnx,zynqmp-ipi-mailbox";
+        interrupts = <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
+        xlnx,ipi-id = <0>;
+        #address-cells = <2>;
+        #size-cells = <2>;
+        ranges;
+
+        mailbox: mailbox@ff9905c0 {
+          reg = <0x0 0xff9905c0 0x0 0x20>,
+                <0x0 0xff9905e0 0x0 0x20>,
+                <0x0 0xff990e80 0x0 0x20>,
+                <0x0 0xff990ea0 0x0 0x20>;
+          reg-names = "local_request_region",
+                      "local_response_region",
+                      "remote_request_region",
+                      "remote_response_region";
+          #mbox-cells = <1>;
+          xlnx,ipi-id = <4>;
+        };
+      };
+    };
+
+...
-- 
2.17.1

