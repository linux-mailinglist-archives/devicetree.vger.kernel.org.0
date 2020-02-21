Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E7EE3168776
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2020 20:35:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726683AbgBUTfi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Feb 2020 14:35:38 -0500
Received: from foss.arm.com ([217.140.110.172]:46646 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726160AbgBUTfh (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 21 Feb 2020 14:35:37 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 788B531B;
        Fri, 21 Feb 2020 11:35:37 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com [10.1.196.37])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id AC3313F6CF;
        Fri, 21 Feb 2020 11:35:36 -0800 (PST)
From:   Robin Murphy <robin.murphy@arm.com>
To:     will@kernel.org, catalin.marinas@arm.com, mark.rutland@arm.com
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/5] dt-bindings: ARM: Add recent Cortex/Neoverse CPUs
Date:   Fri, 21 Feb 2020 19:35:28 +0000
Message-Id: <79ef74956befe089d7994ad24ab25132e95e9ac9.1582312530.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.23.0.dirty
In-Reply-To: <cover.1582312530.git.robin.murphy@arm.com>
References: <cover.1582312530.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The CPU group has been busy since we last updated these bindings...
Add definitions for all the new Cortex-A and Neoverse cores now
available.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---

v2: no change, just resending for completeness

 Documentation/devicetree/bindings/arm/cpus.yaml | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/cpus.yaml b/Documentation/devicetree/bindings/arm/cpus.yaml
index 7a9c3ce2dbef..41e22b5320da 100644
--- a/Documentation/devicetree/bindings/arm/cpus.yaml
+++ b/Documentation/devicetree/bindings/arm/cpus.yaml
@@ -123,11 +123,18 @@ properties:
       - arm,cortex-a12
       - arm,cortex-a15
       - arm,cortex-a17
+      - arm,cortex-a32
+      - arm,cortex-a34
+      - arm,cortex-a35
       - arm,cortex-a53
       - arm,cortex-a55
       - arm,cortex-a57
+      - arm,cortex-a65
       - arm,cortex-a72
       - arm,cortex-a73
+      - arm,cortex-a75
+      - arm,cortex-a76
+      - arm,cortex-a77
       - arm,cortex-m0
       - arm,cortex-m0+
       - arm,cortex-m1
@@ -136,6 +143,8 @@ properties:
       - arm,cortex-r4
       - arm,cortex-r5
       - arm,cortex-r7
+      - arm,neoverse-e1
+      - arm,neoverse-n1
       - brcm,brahma-b15
       - brcm,brahma-b53
       - brcm,vulcan
-- 
2.23.0.dirty

