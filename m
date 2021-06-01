Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BD432391F12
	for <lists+devicetree@lfdr.de>; Wed, 26 May 2021 20:28:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235504AbhEZS3t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 May 2021 14:29:49 -0400
Received: from foss.arm.com ([217.140.110.172]:48492 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232262AbhEZS3t (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 26 May 2021 14:29:49 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AC8801477;
        Wed, 26 May 2021 11:28:17 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id DBA8B3F73B;
        Wed, 26 May 2021 11:28:16 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     devicetree@vger.kernel.org
Cc:     Sudeep Holla <sudeep.holla@arm.com>,
        linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Cristian Marussi <cristian.marussi@arm.com>
Subject: [PATCH 3/8] dt-bindings: firmware: juno,scpi: Move to sram.yaml json schema
Date:   Wed, 26 May 2021 19:28:02 +0100
Message-Id: <20210526182807.548118-4-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210526182807.548118-1-sudeep.holla@arm.com>
References: <20210526182807.548118-1-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Commit a90b15e0ad72 ("Documentation: bindings: decouple juno specific
details from generic binding") moved the juno specific bindings into
separate file. Though there was no need for juno specific binding, it
has been used unfortunately for whatever stupid reason I added it for.

Let us move the same to the generic sram.yaml schema and remove the
old text format binding.

Cc: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 .../devicetree/bindings/arm/juno,scpi.txt     | 26 -------------------
 .../devicetree/bindings/sram/sram.yaml        |  2 ++
 2 files changed, 2 insertions(+), 26 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/juno,scpi.txt

diff --git a/Documentation/devicetree/bindings/arm/juno,scpi.txt b/Documentation/devicetree/bindings/arm/juno,scpi.txt
deleted file mode 100644
index 2ace8696bbee..000000000000
--- a/Documentation/devicetree/bindings/arm/juno,scpi.txt
+++ /dev/null
@@ -1,26 +0,0 @@
-System Control and Power Interface (SCPI) Message Protocol
-(in addition to the standard binding in [0])
-
-Juno SRAM and Shared Memory for SCPI
-------------------------------------
-
-Required properties:
-- compatible : should be "arm,juno-sram-ns" for Non-secure SRAM
-
-Each sub-node represents the reserved area for SCPI.
-
-Required sub-node properties:
-- reg : The base offset and size of the reserved area with the SRAM
-- compatible : should be "arm,juno-scp-shmem" for Non-secure SRAM based
-	       shared memory on Juno platforms
-
-Sensor bindings for the sensors based on SCPI Message Protocol
---------------------------------------------------------------
-Required properties:
-- compatible : should be "arm,scpi-sensors".
-- #thermal-sensor-cells: should be set to 1.
-			 For Juno R0 and Juno R1 refer to [1] for the
-			 sensor identifiers
-
-[0] Documentation/devicetree/bindings/arm/arm,scpi.txt
-[1] http://infocenter.arm.com/help/index.jsp?topic=/com.arm.doc.dui0922b/apas03s22.html
diff --git a/Documentation/devicetree/bindings/sram/sram.yaml b/Documentation/devicetree/bindings/sram/sram.yaml
index 364d66db1b03..0d494af609b7 100644
--- a/Documentation/devicetree/bindings/sram/sram.yaml
+++ b/Documentation/devicetree/bindings/sram/sram.yaml
@@ -28,6 +28,7 @@ description: |+
     contains:
       enum:
         - mmio-sram
+        - arm,juno-sram-ns
         - atmel,sama5d2-securam
         - rockchip,rk3288-pmu-sram
 
@@ -80,6 +81,7 @@ description: |+
             - amlogic,meson8b-smp-sram
             - amlogic,meson-gxbb-scp-shmem
             - amlogic,meson-axg-scp-shmem
+            - arm,juno-scp-shmem
             - arm,scmi-shmem
             - arm,scpi-shmem
             - renesas,smp-sram
-- 
2.25.1

