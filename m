Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 383D546C298
	for <lists+devicetree@lfdr.de>; Tue,  7 Dec 2021 19:20:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236100AbhLGSY0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Dec 2021 13:24:26 -0500
Received: from foss.arm.com ([217.140.110.172]:38384 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S236098AbhLGSY0 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 7 Dec 2021 13:24:26 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 213D41063;
        Tue,  7 Dec 2021 10:20:55 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com [10.1.196.40])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id EFF4D3F73B;
        Tue,  7 Dec 2021 10:20:53 -0800 (PST)
From:   Robin Murphy <robin.murphy@arm.com>
To:     will@kernel.org, catalin.marinas@arm.com, robh+dt@kernel.org
Cc:     mark.rutland@arm.com, suzuki.poulose@arm.com,
        thierry.reding@gmail.com, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org
Subject: [PATCH 5/5] dt-bindings: perf: Add compatible for Arm DSU-110
Date:   Tue,  7 Dec 2021 18:20:43 +0000
Message-Id: <b9364dc5dd31cea84a58c156cfce5b90b9248d7d.1638900542.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.28.0.dirty
In-Reply-To: <cover.1638900542.git.robin.murphy@arm.com>
References: <cover.1638900542.git.robin.murphy@arm.com>
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
 Documentation/devicetree/bindings/perf/arm,dsu-pmu.yaml | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/perf/arm,dsu-pmu.yaml b/Documentation/devicetree/bindings/perf/arm,dsu-pmu.yaml
index b78b6b0fce66..b623520ad302 100644
--- a/Documentation/devicetree/bindings/perf/arm,dsu-pmu.yaml
+++ b/Documentation/devicetree/bindings/perf/arm,dsu-pmu.yaml
@@ -21,7 +21,11 @@ description:
 
 properties:
   compatible:
-    const: "arm,dsu-pmu"
+    oneof:
+      const: "arm,dsu-pmu"
+      items:
+        const: "arm,dsu-110-pmu"
+        const: "arm,dsu-pmu"
 
   interrupts:
     items:
@@ -30,7 +34,7 @@ properties:
   cpus:
     $ref: /schemas/types.yaml#/definitions/phandle-array
     minitems: 1
-    maxitems: 8
+    maxitems: 12
     description: List of phandles for the CPUs connected to this DSU instance.
 
 required:
-- 
2.28.0.dirty

