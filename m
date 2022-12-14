Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 420D364C482
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 08:52:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237562AbiLNHwu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Dec 2022 02:52:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237561AbiLNHws (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Dec 2022 02:52:48 -0500
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id CE80B2DD5
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 23:52:46 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3835911FB;
        Tue, 13 Dec 2022 23:53:27 -0800 (PST)
Received: from e126835.cambridge.arm.com (e126835.cambridge.arm.com [10.1.32.127])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 14F603F73B;
        Tue, 13 Dec 2022 23:52:44 -0800 (PST)
From:   Emekcan Aras <emekcan.aras@arm.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Emekcan Aras <Emekcan.Aras@arm.com>,
        Emekcan Aras <emekcan.aras@arm.com>
Subject: [PATCH 2/2] dt-bindings: Add Arm corstone500 platform
Date:   Wed, 14 Dec 2022 07:52:32 +0000
Message-Id: <20221214075232.394559-3-emekcan.aras@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221214075232.394559-1-emekcan.aras@arm.com>
References: <20221214075232.394559-1-emekcan.aras@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Emekcan Aras <Emekcan.Aras@arm.com>

Add bindings to describe implementation of
the ARM Corstone500 platform.

Signed-off-by: Emekcan Aras <emekcan.aras@arm.com>
---
 .../bindings/arm/arm,corstone500.yaml         | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/arm,corstone500.yaml

diff --git a/Documentation/devicetree/bindings/arm/arm,corstone500.yaml b/Documentation/devicetree/bindings/arm/arm,corstone500.yaml
new file mode 100644
index 000000000000..cfe41f7760fd
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/arm,corstone500.yaml
@@ -0,0 +1,30 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/arm,corstone500.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ARM Corstone500
+
+maintainers:
+  - Emekcan Aras <emekcan.aras@arm.com>
+  - Rui Miguel Silva <rui.silva@linaro.org>
+
+description: |+
+  Corstone-500 is an ideal starting point for feature rich System on Chip
+  (SoC) designs based on the Cortex-A5 core. These designs can be used in
+  Internet of Things (IoT) and embedded products.
+
+  Corstone-500 includes most of the Arm IP in the SSE-500 subsystem and
+  example integration layer, an FPGA, and access to modelling options.
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    items:
+      - const: arm,corstone500
+
+additionalProperties: true
+
+...
-- 
2.25.1

