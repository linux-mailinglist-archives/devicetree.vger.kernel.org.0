Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E046946C295
	for <lists+devicetree@lfdr.de>; Tue,  7 Dec 2021 19:20:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236071AbhLGSYV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Dec 2021 13:24:21 -0500
Received: from foss.arm.com ([217.140.110.172]:38342 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231712AbhLGSYU (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 7 Dec 2021 13:24:20 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BEF8413A1;
        Tue,  7 Dec 2021 10:20:49 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com [10.1.196.40])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A44943F73B;
        Tue,  7 Dec 2021 10:20:48 -0800 (PST)
From:   Robin Murphy <robin.murphy@arm.com>
To:     will@kernel.org, catalin.marinas@arm.com, robh+dt@kernel.org
Cc:     mark.rutland@arm.com, suzuki.poulose@arm.com,
        thierry.reding@gmail.com, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org
Subject: [PATCH 1/5] dt-bindings: arm: Catch up with Cortex/Neoverse CPUs again
Date:   Tue,  7 Dec 2021 18:20:39 +0000
Message-Id: <a36014d06d308c73d3fa1ed55e8967fb8adadf0d.1638900542.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.28.0.dirty
In-Reply-To: <cover.1638900542.git.robin.murphy@arm.com>
References: <cover.1638900542.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add bindings for the 2020 and 2021 cohorts of Cortex-A and Neoverse
CPUs, now featuring their Cortex-X cousins as well.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 Documentation/devicetree/bindings/arm/cpus.yaml | 6 ++++++
 Documentation/devicetree/bindings/arm/pmu.yaml  | 6 ++++++
 2 files changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/cpus.yaml b/Documentation/devicetree/bindings/arm/cpus.yaml
index 452bfd1d4ecc..e81dfb81230a 100644
--- a/Documentation/devicetree/bindings/arm/cpus.yaml
+++ b/Documentation/devicetree/bindings/arm/cpus.yaml
@@ -138,6 +138,8 @@ properties:
       - arm,cortex-a76
       - arm,cortex-a77
       - arm,cortex-a78
+      - arm,cortex-a510
+      - arm,cortex-a710
       - arm,cortex-m0
       - arm,cortex-m0+
       - arm,cortex-m1
@@ -146,8 +148,12 @@ properties:
       - arm,cortex-r4
       - arm,cortex-r5
       - arm,cortex-r7
+      - arm,cortex-x1
+      - arm,cortex-x2
       - arm,neoverse-e1
       - arm,neoverse-n1
+      - arm,neoverse-n2
+      - arm,neoverse-v1
       - brcm,brahma-b15
       - brcm,brahma-b53
       - brcm,vulcan
diff --git a/Documentation/devicetree/bindings/arm/pmu.yaml b/Documentation/devicetree/bindings/arm/pmu.yaml
index e17ac049e890..541a483ec8d7 100644
--- a/Documentation/devicetree/bindings/arm/pmu.yaml
+++ b/Documentation/devicetree/bindings/arm/pmu.yaml
@@ -44,8 +44,14 @@ properties:
           - arm,cortex-a76-pmu
           - arm,cortex-a77-pmu
           - arm,cortex-a78-pmu
+          - arm,cortex-a510-pmu
+          - arm,cortex-a710-pmu
+          - arm,cortex-x1-pmu
+          - arm,cortex-x2-pmu
           - arm,neoverse-e1-pmu
           - arm,neoverse-n1-pmu
+          - arm,neoverse-n2-pmu
+          - arm,neoverse-v1-pmu
           - brcm,vulcan-pmu
           - cavium,thunder-pmu
           - qcom,krait-pmu
-- 
2.28.0.dirty

