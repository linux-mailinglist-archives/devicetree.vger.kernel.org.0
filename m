Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5E61E51D9D1
	for <lists+devicetree@lfdr.de>; Fri,  6 May 2022 16:05:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1441989AbiEFOJ3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 May 2022 10:09:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1441988AbiEFOJY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 May 2022 10:09:24 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 1354160D85
        for <devicetree@vger.kernel.org>; Fri,  6 May 2022 07:05:41 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DD388152B;
        Fri,  6 May 2022 07:05:40 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.42])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9CC133F885;
        Fri,  6 May 2022 07:05:39 -0700 (PDT)
From:   Andre Przywara <andre.przywara@arm.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Liviu Dudau <liviu.dudau@arm.com>,
        Robin Murphy <robin.murphy@arm.com>,
        devicetree@vger.kernel.org, Will Deacon <will@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        iommu@lists.linux-foundation.org
Subject: [PATCH v2 01/11] dt-bindings: iommu: arm,smmu-v3: make PRI IRQ optional
Date:   Fri,  6 May 2022 15:05:23 +0100
Message-Id: <20220506140533.3566431-2-andre.przywara@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220506140533.3566431-1-andre.przywara@arm.com>
References: <20220506140533.3566431-1-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Page Request Interface (PRI) is an optional PCIe feature. As such, a
SMMU would not need to handle it if the PCIe host bridge or the SMMU
itself do not implement it. Also an SMMU could be connected to a platform
device, without any PRI functionality whatsoever.
In all cases there would be no SMMU PRI queue interrupt to be wired up
to an interrupt controller.
At the moment, with the "eventq,gerror,priq,cmdq-sync" order, we
would need to sacrifice the command queue sync interrupt as well, which
might not be desired.

Relax the binding to allow specifying certain useful combinations of
wired interrupts, for instance just the "gerror" interrupt, or omitting
both "pri" and "cmdq-sync".

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 .../devicetree/bindings/iommu/arm,smmu-v3.yaml   | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu-v3.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu-v3.yaml
index e87bfbcc69135..c57a53d87e4e6 100644
--- a/Documentation/devicetree/bindings/iommu/arm,smmu-v3.yaml
+++ b/Documentation/devicetree/bindings/iommu/arm,smmu-v3.yaml
@@ -37,12 +37,18 @@ properties:
           hardware supports just a single, combined interrupt line.
           If provided, then the combined interrupt will be used in preference to
           any others.
-      - minItems: 2
+      - minItems: 1
         items:
-          - const: eventq     # Event Queue not empty
-          - const: gerror     # Global Error activated
-          - const: priq       # PRI Queue not empty
-          - const: cmdq-sync  # CMD_SYNC complete
+          - enum:
+              - eventq     # Event Queue not empty
+              - gerror     # Global Error activated
+          - const: gerror
+          - enum:
+              - cmdq-sync  # CMD_SYNC complete
+              - priq       # PRI Queue not empty
+          - enum:
+              - cmdq-sync
+              - priq
 
   '#iommu-cells':
     const: 1
-- 
2.25.1

