Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 11B9E168777
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2020 20:35:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726707AbgBUTfj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Feb 2020 14:35:39 -0500
Received: from foss.arm.com ([217.140.110.172]:46650 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726160AbgBUTfi (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 21 Feb 2020 14:35:38 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 800A8FEC;
        Fri, 21 Feb 2020 11:35:38 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com [10.1.196.37])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id ADCEE3F6CF;
        Fri, 21 Feb 2020 11:35:37 -0800 (PST)
From:   Robin Murphy <robin.murphy@arm.com>
To:     will@kernel.org, catalin.marinas@arm.com, mark.rutland@arm.com
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/5] dt-bindings: ARM: Add recent Cortex/Neoverse PMUs
Date:   Fri, 21 Feb 2020 19:35:29 +0000
Message-Id: <3954ca0b86641e5e6a1935886df6658b9305ec4a.1582312530.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.23.0.dirty
In-Reply-To: <cover.1582312530.git.robin.murphy@arm.com>
References: <cover.1582312530.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add new PMU definitions to correspond with the CPU bindings.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---

v2: no change, just resending for completeness

 Documentation/devicetree/bindings/arm/pmu.yaml | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/pmu.yaml b/Documentation/devicetree/bindings/arm/pmu.yaml
index 52ae094ce330..cc52195d0e9e 100644
--- a/Documentation/devicetree/bindings/arm/pmu.yaml
+++ b/Documentation/devicetree/bindings/arm/pmu.yaml
@@ -21,11 +21,20 @@ properties:
       - enum:
           - apm,potenza-pmu
           - arm,armv8-pmuv3
+          - arm,neoverse-n1-pmu
+          - arm,neoverse-e1-pmu
+          - arm,cortex-a77-pmu
+          - arm,cortex-a76-pmu
+          - arm,cortex-a75-pmu
           - arm,cortex-a73-pmu
           - arm,cortex-a72-pmu
+          - arm,cortex-a65-pmu
           - arm,cortex-a57-pmu
+          - arm,cortex-a55-pmu
           - arm,cortex-a53-pmu
           - arm,cortex-a35-pmu
+          - arm,cortex-a34-pmu
+          - arm,cortex-a32-pmu
           - arm,cortex-a17-pmu
           - arm,cortex-a15-pmu
           - arm,cortex-a12-pmu
-- 
2.23.0.dirty

