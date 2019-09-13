Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 008A3B1CAA
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2019 13:53:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729461AbfIMLx0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Sep 2019 07:53:26 -0400
Received: from foss.arm.com ([217.140.110.172]:42120 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727540AbfIMLx0 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 13 Sep 2019 07:53:26 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C50D228;
        Fri, 13 Sep 2019 04:53:25 -0700 (PDT)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 70F253F71F;
        Fri, 13 Sep 2019 04:53:23 -0700 (PDT)
From:   Andrew Murray <andrew.murray@arm.com>
To:     Mathieu Poirier <mathieu.poirier@linaro.org>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        Mike Leach <mike.leach@linaro.org>,
        Sudeep Holla <sudeep.holla@arm.com>, Al.Grant@arm.com,
        Leo Yan <leo.yan@linaro.org>, devicetree@vger.kernel.org,
        coresight@lists.linaro.org
Subject: [PATCH v6 2/3] dt-bindings: arm: coresight: Add support for coresight-loses-context-with-cpu
Date:   Fri, 13 Sep 2019 12:53:11 +0100
Message-Id: <20190913115312.12943-3-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190913115312.12943-1-andrew.murray@arm.com>
References: <20190913115312.12943-1-andrew.murray@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some coresight components, because of choices made during hardware
integration, require their state to be saved and restored across CPU low
power states.

The software has no reliable method of detecting when save/restore is
required thus let's add a binding to inform the kernel.

Signed-off-by: Andrew Murray <andrew.murray@arm.com>
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 Documentation/devicetree/bindings/arm/coresight.txt | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/coresight.txt b/Documentation/devicetree/bindings/arm/coresight.txt
index fcc3bacfd8bc..d02c42d21f2f 100644
--- a/Documentation/devicetree/bindings/arm/coresight.txt
+++ b/Documentation/devicetree/bindings/arm/coresight.txt
@@ -87,6 +87,15 @@ its hardware characteristcs.
 
 	* port or ports: see "Graph bindings for Coresight" below.
 
+* Optional properties for all components:
+
+	* arm,coresight-loses-context-with-cpu : boolean. Indicates that the
+	  hardware will lose register context on CPU power down (e.g. CPUIdle).
+	  An example of where this may be needed are systems which contain a
+	  coresight component and CPU in the same power domain. When the CPU
+	  powers down the coresight component also powers down and loses its
+	  context. This property is currently only used for the ETM 4.x driver.
+
 * Optional properties for ETM/PTMs:
 
 	* arm,cp14: must be present if the system accesses ETM/PTM management
-- 
2.21.0

