Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BD606474499
	for <lists+devicetree@lfdr.de>; Tue, 14 Dec 2021 15:16:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234835AbhLNOQe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Dec 2021 09:16:34 -0500
Received: from foss.arm.com ([217.140.110.172]:57070 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234834AbhLNOQe (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 14 Dec 2021 09:16:34 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4D5A16D;
        Tue, 14 Dec 2021 06:16:34 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com [10.1.196.40])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 2B4D73F793;
        Tue, 14 Dec 2021 06:16:33 -0800 (PST)
From:   Robin Murphy <robin.murphy@arm.com>
To:     will@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com
Cc:     catalin.marinas@arm.com, suzuki.poulose@arm.com,
        thierry.reding@gmail.com, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org
Subject: [PATCH v2 5/5] dt-bindings: perf: Add compatible for Arm DSU-110
Date:   Tue, 14 Dec 2021 14:16:17 +0000
Message-Id: <51a8060493e1220886dcd468fad9a2b603607297.1639490264.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.28.0.dirty
In-Reply-To: <cover.1639490264.git.robin.murphy@arm.com>
References: <cover.1639490264.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DSU-110 is the newest and shiniest for Armv9. Its programmer's model is
largely identical to the previous generation of DSUs, so we can treat it
as compatible, but it does have a a handful of extra IMP-DEF PMU events
to call its own. Thanks to the new notion of core complexes, the maximum
number of supported CPUs goes up as well.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---

v2: Also make it complete and valid

 Documentation/devicetree/bindings/perf/arm,dsu-pmu.yaml | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/perf/arm,dsu-pmu.yaml b/Documentation/devicetree/bindings/perf/arm,dsu-pmu.yaml
index 09ddeb6a3ccc..7f31bcecedb5 100644
--- a/Documentation/devicetree/bindings/perf/arm,dsu-pmu.yaml
+++ b/Documentation/devicetree/bindings/perf/arm,dsu-pmu.yaml
@@ -21,7 +21,11 @@ description:
 
 properties:
   compatible:
-    const: arm,dsu-pmu
+    oneOf:
+      - const: arm,dsu-pmu
+      - items:
+          - const: arm,dsu-110-pmu
+          - const: arm,dsu-pmu
 
   interrupts:
     items:
@@ -30,7 +34,7 @@ properties:
   cpus:
     $ref: /schemas/types.yaml#/definitions/phandle-array
     minItems: 1
-    maxItems: 8
+    maxItems: 12
     description: List of phandles for the CPUs connected to this DSU instance.
 
 required:
-- 
2.28.0.dirty

